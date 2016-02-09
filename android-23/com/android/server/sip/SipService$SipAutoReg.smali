.class Lcom/android/server/sip/SipService$SipAutoReg;
.super Landroid/net/sip/SipSessionAdapter;
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
    name = "SipAutoReg"
.end annotation


# static fields
.field private static final MIN_KEEPALIVE_SUCCESS_COUNT:I = 0xa

.field private static final SAR_DBG:Z = true


# instance fields
.field private SAR_TAG:Ljava/lang/String;

.field private mBackoff:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mExpiryTime:J

.field private mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field private mKeepAliveSuccessCount:I

.field private mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

.field private mRegistered:Z

.field private mRunning:Z

.field private mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method private constructor <init>(Lcom/android/server/sip/SipService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/sip/SipService;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 795
    iput-object p1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@3
    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    #@6
    .line 803
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy;

    #@8
    invoke-direct {v0}, Lcom/android/server/sip/SipSessionListenerProxy;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@d
    .line 804
    const/4 v0, 0x1

    #@e
    iput v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    #@10
    .line 809
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    #@12
    .line 811
    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    #@14
    .line 795
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$SipAutoReg;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/sip/SipService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;-><init>(Lcom/android/server/sip/SipService;)V

    #@3
    return-void
.end method

.method private backoffDuration()I
    .locals 2

    #@0
    .prologue
    .line 1005
    iget v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    #@2
    mul-int/lit8 v0, v1, 0xa

    #@4
    .line 1006
    .local v0, "duration":I
    const/16 v1, 0xe10

    #@6
    if-le v0, v1, :cond_0

    #@8
    .line 1007
    const/16 v0, 0xe10

    #@a
    .line 1011
    :goto_0
    return v0

    #@b
    .line 1009
    :cond_0
    iget v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    #@d
    mul-int/lit8 v1, v1, 0x2

    #@f
    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    #@11
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 1115
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 1119
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5
    .line 1123
    return-void
.end method

.method private notCurrentSession(Landroid/net/sip/ISipSession;)Z
    .locals 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1026
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@3
    if-eq p1, v0, :cond_0

    #@5
    move-object v0, p1

    #@6
    .line 1027
    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    #@c
    .line 1028
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@e
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get4(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    #@15
    .line 1029
    return v1

    #@16
    .line 1031
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    #@18
    if-eqz v0, :cond_1

    #@1a
    const/4 v0, 0x0

    #@1b
    :goto_0
    return v0

    #@1c
    :cond_1
    move v0, v1

    #@1d
    goto :goto_0
.end method

.method private restart(I)V
    .locals 2
    .param p1, "duration"    # I

    #@0
    .prologue
    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "restart: duration="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "s later."

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    #@1e
    .line 1000
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@20
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get6(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    #@27
    .line 1001
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@29
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get6(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    #@2c
    move-result-object v0

    #@2d
    mul-int/lit16 v1, p1, 0x3e8

    #@2f
    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    #@32
    .line 998
    return-void
.end method

.method private restartLater()V
    .locals 1

    #@0
    .prologue
    .line 1110
    const-string/jumbo v0, "restartLater"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;)V

    #@6
    .line 1111
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    #@9
    .line 1112
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->backoffDuration()I

    #@c
    move-result v0

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->restart(I)V

    #@10
    .line 1109
    return-void
.end method

.method private startKeepAliveProcess(I)V
    .locals 3
    .param p1, "interval"    # I

    #@0
    .prologue
    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "startKeepAliveProcess: interval="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    #@17
    .line 834
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@19
    if-nez v1, :cond_0

    #@1b
    .line 835
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@1d
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@23
    .line 840
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@25
    invoke-virtual {v1, p1, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 832
    :goto_1
    return-void

    #@29
    .line 837
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2b
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    #@2e
    goto :goto_0

    #@2f
    .line 841
    :catch_0
    move-exception v0

    #@30
    .line 842
    .local v0, "e":Ljavax/sip/SipException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, "startKeepAliveProcess: interval="

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@47
    goto :goto_1
.end method

.method private stopKeepAliveProcess()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 847
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 848
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@7
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    #@a
    .line 849
    iput-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@c
    .line 851
    :cond_0
    const/4 v0, 0x0

    #@d
    iput v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    #@f
    .line 846
    return-void
.end method


# virtual methods
.method public isRegistered()Z
    .locals 1

    #@0
    .prologue
    .line 979
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    #@2
    return v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 905
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
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;)V

    #@22
    .line 907
    const/4 v0, 0x1

    #@23
    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->onResponse(Z)V

    #@26
    .line 903
    return-void
.end method

.method public onKeepAliveIntervalChanged()V
    .locals 3

    #@0
    .prologue
    .line 927
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 928
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@6
    invoke-static {v1}, Lcom/android/server/sip/SipService;->-wrap3(Lcom/android/server/sip/SipService;)I

    #@9
    move-result v0

    #@a
    .line 930
    .local v0, "newInterval":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "onKeepAliveIntervalChanged: interval="

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    #@21
    .line 932
    const/4 v1, 0x0

    #@22
    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    #@24
    .line 933
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->startKeepAliveProcess(I)V

    #@27
    .line 926
    .end local v0    # "newInterval":I
    :cond_0
    return-void
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "onRegistering: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    #@17
    .line 1017
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@19
    monitor-enter v1

    #@1a
    .line 1018
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    monitor-exit v1

    #@21
    return-void

    #@22
    .line 1020
    :cond_0
    const/4 v0, 0x0

    #@23
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    #@25
    .line 1021
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@27
    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    monitor-exit v1

    #@2b
    .line 1015
    return-void

    #@2c
    .line 1017
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 8
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I

    #@0
    .prologue
    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "onRegistrationDone: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    #@17
    .line 1037
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@19
    monitor-enter v2

    #@1a
    .line 1038
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_0

    #@20
    monitor-exit v2

    #@21
    return-void

    #@22
    .line 1040
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@24
    invoke-virtual {v1, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    #@27
    .line 1042
    if-lez p2, :cond_4

    #@29
    .line 1043
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2c
    move-result-wide v4

    #@2d
    .line 1044
    mul-int/lit16 v1, p2, 0x3e8

    #@2f
    int-to-long v6, v1

    #@30
    .line 1043
    add-long/2addr v4, v6

    #@31
    iput-wide v4, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mExpiryTime:J

    #@33
    .line 1046
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    #@35
    if-nez v1, :cond_3

    #@37
    .line 1047
    const/4 v1, 0x1

    #@38
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    #@3a
    .line 1049
    add-int/lit8 p2, p2, -0x3c

    #@3c
    .line 1050
    const/16 v1, 0x3c

    #@3e
    if-ge p2, v1, :cond_1

    #@40
    .line 1051
    const/16 p2, 0x3c

    #@42
    .line 1053
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipService$SipAutoReg;->restart(I)V

    #@45
    .line 1055
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@47
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    #@4a
    move-result-object v0

    #@4b
    .line 1056
    .local v0, "localProfile":Landroid/net/sip/SipProfile;
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@4d
    if-nez v1, :cond_3

    #@4f
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@51
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@53
    invoke-static {v3}, Lcom/android/server/sip/SipService;->-get3(Lcom/android/server/sip/SipService;)Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->-wrap2(Lcom/android/server/sip/SipService;Ljava/lang/String;)Z

    #@5a
    move-result v1

    #@5b
    if-nez v1, :cond_2

    #@5d
    .line 1057
    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getSendKeepAlive()Z

    #@60
    move-result v1

    #@61
    .line 1056
    if-eqz v1, :cond_3

    #@63
    .line 1058
    :cond_2
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@65
    invoke-static {v1}, Lcom/android/server/sip/SipService;->-wrap3(Lcom/android/server/sip/SipService;)I

    #@68
    move-result v1

    #@69
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->startKeepAliveProcess(I)V

    #@6c
    .line 1061
    .end local v0    # "localProfile":Landroid/net/sip/SipProfile;
    :cond_3
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@6e
    invoke-static {v1}, Lcom/android/server/sip/SipService;->-get4(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@75
    :goto_0
    monitor-exit v2

    #@76
    .line 1035
    return-void

    #@77
    .line 1063
    :cond_4
    const/4 v1, 0x0

    #@78
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    #@7a
    .line 1064
    const-wide/16 v4, -0x1

    #@7c
    iput-wide v4, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mExpiryTime:J

    #@7e
    .line 1065
    const-string/jumbo v1, "Refresh registration immediately"

    #@81
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    #@84
    .line 1066
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@87
    goto :goto_0

    #@88
    .line 1037
    :catchall_0
    move-exception v1

    #@89
    monitor-exit v2

    #@8a
    throw v1
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "onRegistrationFailed: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ": "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 1075
    invoke-static {p2}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 1074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 1075
    const-string/jumbo v1, ": "

    #@22
    .line 1074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    #@31
    .line 1076
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@33
    monitor-enter v1

    #@34
    .line 1077
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_0

    #@3a
    monitor-exit v1

    #@3b
    return-void

    #@3c
    .line 1079
    :cond_0
    sparse-switch p2, :sswitch_data_0

    #@3f
    .line 1086
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->restartLater()V

    #@42
    .line 1089
    :goto_0
    iput p2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    #@44
    .line 1090
    iput-object p3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorMessage:Ljava/lang/String;

    #@46
    .line 1091
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@48
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    #@4b
    .line 1092
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@4d
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get4(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    monitor-exit v1

    #@55
    .line 1073
    return-void

    #@56
    .line 1082
    :sswitch_0
    :try_start_2
    const-string/jumbo v0, "   pause auto-registration"

    #@59
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    #@5c
    .line 1083
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    goto :goto_0

    #@60
    .line 1076
    :catchall_0
    move-exception v0

    #@61
    monitor-exit v1

    #@62
    throw v0

    #@63
    .line 1079
    nop

    #@64
    :sswitch_data_0
    .sparse-switch
        -0xc -> :sswitch_0
        -0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "onRegistrationTimeout: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    #@17
    .line 1099
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@19
    monitor-enter v1

    #@1a
    .line 1100
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    monitor-exit v1

    #@21
    return-void

    #@22
    .line 1102
    :cond_0
    const/4 v0, -0x5

    #@23
    :try_start_1
    iput v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    #@25
    .line 1103
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@27
    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    #@2a
    .line 1104
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->restartLater()V

    #@2d
    .line 1105
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@2f
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get4(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    monitor-exit v1

    #@37
    .line 1097
    return-void

    #@38
    .line 1099
    :catchall_0
    move-exception v0

    #@39
    monitor-exit v1

    #@3a
    throw v0
.end method

.method public onResponse(Z)V
    .locals 5
    .param p1, "portChanged"    # Z

    #@0
    .prologue
    const/16 v4, 0xa

    #@2
    .line 857
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@4
    monitor-enter v2

    #@5
    .line 858
    if-eqz p1, :cond_2

    #@7
    .line 859
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@9
    invoke-static {v1}, Lcom/android/server/sip/SipService;->-wrap3(Lcom/android/server/sip/SipService;)I

    #@c
    move-result v0

    #@d
    .line 860
    .local v0, "interval":I
    iget v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    #@f
    if-ge v1, v4, :cond_1

    #@11
    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "onResponse: keepalive doesn\'t work with interval "

    #@19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 863
    const-string/jumbo v3, ", past success count="

    #@24
    .line 862
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 864
    iget v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    #@2a
    .line 862
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    #@35
    .line 866
    if-le v0, v4, :cond_0

    #@37
    .line 867
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@39
    .line 868
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@3b
    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    #@3e
    move-result-object v3

    #@3f
    .line 867
    invoke-static {v1, v3, v0}, Lcom/android/server/sip/SipService;->-wrap9(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;I)V

    #@42
    .line 869
    const/4 v1, 0x0

    #@43
    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    #@45
    .line 887
    .end local v0    # "interval":I
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    #@47
    if-eqz v1, :cond_3

    #@49
    if-eqz p1, :cond_3

    #@4b
    .line 892
    const/4 v1, 0x0

    #@4c
    iput-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@4e
    .line 896
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@50
    invoke-static {v1}, Lcom/android/server/sip/SipService;->-get4(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    #@53
    move-result-object v1

    #@54
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@56
    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    #@59
    .line 897
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@5b
    const/16 v3, 0xe10

    #@5d
    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    monitor-exit v2

    #@61
    .line 856
    return-void

    #@62
    .line 873
    .restart local v0    # "interval":I
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v3, "keep keepalive going with interval "

    #@6a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    .line 874
    const-string/jumbo v3, ", past success count="

    #@75
    .line 873
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    .line 875
    iget v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    #@7b
    .line 873
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    #@86
    .line 877
    iget v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    #@88
    div-int/lit8 v1, v1, 0x2

    #@8a
    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    goto :goto_0

    #@8d
    .line 857
    .end local v0    # "interval":I
    :catchall_0
    move-exception v1

    #@8e
    monitor-exit v2

    #@8f
    throw v1

    #@90
    .line 882
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@92
    .line 883
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@94
    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    #@97
    move-result-object v3

    #@98
    .line 882
    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->-wrap10(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;)V

    #@9b
    .line 884
    iget v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    #@9d
    add-int/lit8 v1, v1, 0x1

    #@9f
    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a1
    goto :goto_0

    #@a2
    :cond_3
    monitor-exit v2

    #@a3
    .line 887
    return-void
.end method

.method public run()V
    .locals 3

    #@0
    .prologue
    .line 985
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@2
    monitor-enter v1

    #@3
    .line 986
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    return-void

    #@9
    .line 988
    :cond_0
    const/4 v0, 0x0

    #@a
    :try_start_1
    iput v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    #@c
    .line 989
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorMessage:Ljava/lang/String;

    #@f
    .line 990
    const-string/jumbo v0, "run: registering"

    #@12
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    #@15
    .line 991
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@17
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get5(Lcom/android/server/sip/SipService;)I

    #@1a
    move-result v0

    #@1b
    const/4 v2, -0x1

    #@1c
    if-eq v0, v2, :cond_1

    #@1e
    .line 992
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@20
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get4(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    #@23
    move-result-object v0

    #@24
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@26
    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    #@29
    .line 993
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2b
    const/16 v2, 0xe10

    #@2d
    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    :cond_1
    monitor-exit v1

    #@31
    .line 984
    return-void

    #@32
    .line 985
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 10
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    #@0
    .prologue
    .line 938
    iget-object v4, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@2
    monitor-enter v4

    #@3
    .line 939
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@5
    invoke-virtual {v3, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 942
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@a
    if-nez v3, :cond_1

    #@c
    .line 943
    const/4 v1, 0x0

    #@d
    .line 945
    .local v1, "state":I
    :goto_0
    const/4 v3, 0x1

    #@e
    if-eq v1, v3, :cond_0

    #@10
    .line 946
    const/4 v3, 0x2

    #@11
    if-ne v1, v3, :cond_2

    #@13
    .line 947
    :cond_0
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@15
    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@17
    invoke-virtual {v3, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .end local v1    # "state":I
    :goto_1
    monitor-exit v4

    #@1b
    .line 937
    return-void

    #@1c
    .line 944
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@1e
    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getState()I

    #@21
    move-result v1

    #@22
    .restart local v1    # "state":I
    goto :goto_0

    #@23
    .line 948
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    #@25
    if-eqz v3, :cond_3

    #@27
    .line 950
    iget-wide v6, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mExpiryTime:J

    #@29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2c
    move-result-wide v8

    #@2d
    sub-long/2addr v6, v8

    #@2e
    .line 949
    long-to-int v0, v6

    #@2f
    .line 951
    .local v0, "duration":I
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@31
    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@33
    invoke-virtual {v3, v5, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    goto :goto_1

    #@37
    .line 972
    .end local v0    # "duration":I
    .end local v1    # "state":I
    :catch_0
    move-exception v2

    #@38
    .line 973
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v3, "setListener: "

    #@3b
    invoke-direct {p0, v3, v2}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3e
    goto :goto_1

    #@3f
    .line 938
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    #@40
    monitor-exit v4

    #@41
    throw v3

    #@42
    .line 952
    .restart local v1    # "state":I
    :cond_3
    :try_start_4
    iget v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    #@44
    if-eqz v3, :cond_5

    #@46
    .line 953
    iget v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    #@48
    const/4 v5, -0x5

    #@49
    if-ne v3, v5, :cond_4

    #@4b
    .line 954
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@4d
    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@4f
    invoke-virtual {v3, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    #@52
    goto :goto_1

    #@53
    .line 956
    :cond_4
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@55
    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@57
    iget v6, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    #@59
    .line 957
    iget-object v7, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorMessage:Ljava/lang/String;

    #@5b
    .line 956
    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    #@5e
    goto :goto_1

    #@5f
    .line 959
    :cond_5
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@61
    invoke-static {v3}, Lcom/android/server/sip/SipService;->-get5(Lcom/android/server/sip/SipService;)I

    #@64
    move-result v3

    #@65
    const/4 v5, -0x1

    #@66
    if-ne v3, v5, :cond_6

    #@68
    .line 960
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@6a
    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@6c
    .line 962
    const-string/jumbo v6, "no data connection"

    #@6f
    .line 961
    const/16 v7, -0xa

    #@71
    .line 960
    invoke-virtual {v3, v5, v7, v6}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    #@74
    goto :goto_1

    #@75
    .line 963
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    #@77
    if-nez v3, :cond_7

    #@79
    .line 964
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@7b
    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@7d
    .line 966
    const-string/jumbo v6, "registration not running"

    #@80
    .line 965
    const/4 v7, -0x4

    #@81
    .line 964
    invoke-virtual {v3, v5, v7, v6}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    #@84
    goto :goto_1

    #@85
    .line 968
    :cond_7
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@87
    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@89
    .line 970
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@8c
    move-result-object v6

    #@8d
    .line 969
    const/16 v7, -0x9

    #@8f
    .line 968
    invoke-virtual {v3, v5, v7, v6}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@92
    goto :goto_1
.end method

.method public start(Lcom/android/server/sip/SipSessionGroup;)V
    .locals 2
    .param p1, "group"    # Lcom/android/server/sip/SipSessionGroup;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 814
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 815
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    #@7
    .line 816
    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    #@9
    .line 818
    invoke-virtual {p1, p0}, Lcom/android/server/sip/SipSessionGroup;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    #@c
    move-result-object v0

    #@d
    .line 817
    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@f
    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@11
    .line 820
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@13
    if-nez v0, :cond_0

    #@15
    return-void

    #@16
    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@18
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get4(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    #@1b
    move-result-object v0

    #@1c
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    #@21
    .line 826
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@23
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    #@26
    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v1, "SipAutoReg:"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@34
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    #@46
    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v1, "start: group="

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    #@5d
    .line 813
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 911
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    #@4
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 912
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    #@9
    .line 913
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@b
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get4(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@11
    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    #@14
    .line 914
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 915
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@1a
    invoke-virtual {v0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    #@1d
    .line 916
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@1f
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get5(Lcom/android/server/sip/SipService;)I

    #@22
    move-result v0

    #@23
    const/4 v1, -0x1

    #@24
    if-eq v0, v1, :cond_1

    #@26
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    #@28
    if-eqz v0, :cond_1

    #@2a
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2c
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    #@2f
    .line 919
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    #@31
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get6(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    #@38
    .line 920
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->stopKeepAliveProcess()V

    #@3b
    .line 922
    iput-boolean v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    #@3d
    .line 923
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@3f
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->setListener(Landroid/net/sip/ISipSessionListener;)V

    #@46
    .line 910
    return-void
.end method
