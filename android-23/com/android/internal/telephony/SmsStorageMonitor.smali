.class public final Lcom/android/internal/telephony/SmsStorageMonitor;
.super Landroid/os/Handler;
.source "SmsStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsStorageMonitor$1;
    }
.end annotation


# static fields
.field private static final EVENT_ICC_FULL:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x3

.field private static final EVENT_REPORT_MEMORY_STATUS_DONE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SmsStorageMonitor"

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388


# instance fields
.field final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mReportMemoryStatusPending:Z

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field mStorageAvailable:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 62
    iput-boolean v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    #@7
    .line 156
    new-instance v1, Lcom/android/internal/telephony/SmsStorageMonitor$1;

    #@9
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsStorageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V

    #@c
    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    #@e
    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@10
    .line 76
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    #@16
    .line 77
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@18
    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1a
    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->createWakelock()V

    #@1d
    .line 81
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1f
    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    #@22
    .line 82
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@24
    const/4 v2, 0x3

    #@25
    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@28
    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    #@2a
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@2d
    .line 87
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_FULL"

    #@30
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@33
    .line 88
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    #@36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@39
    .line 89
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    #@3b
    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    #@3d
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@40
    .line 74
    return-void
.end method

.method private createWakelock()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 134
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "power"

    #@6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/os/PowerManager;

    #@c
    .line 135
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "SmsStorageMonitor"

    #@f
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@15
    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@17
    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@1a
    .line 133
    return-void
.end method

.method private handleIccFull()V
    .locals 4

    #@0
    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.provider.Telephony.SIM_FULL"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 146
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a
    const-wide/16 v2, 0x1388

    #@c
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@f
    .line 147
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@11
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@14
    move-result v1

    #@15
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@18
    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    #@1a
    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    #@1d
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@20
    .line 143
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsFull(Landroid/os/Handler;)V

    #@5
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    #@a
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@11
    .line 92
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 106
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 103
    :cond_0
    :goto_0
    return-void

    #@6
    .line 108
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleIccFull()V

    #@9
    goto :goto_0

    #@a
    .line 112
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v0, Landroid/os/AsyncResult;

    #@e
    .line 113
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 114
    const/4 v1, 0x1

    #@13
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReportMemoryStatusPending:Z

    #@15
    .line 115
    const-string/jumbo v1, "SmsStorageMonitor"

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Memory status report to modem pending : mStorageAvailable = "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    .line 116
    iget-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    #@26
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    goto :goto_0

    #@32
    .line 118
    :cond_1
    const/4 v1, 0x0

    #@33
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReportMemoryStatusPending:Z

    #@35
    goto :goto_0

    #@36
    .line 123
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReportMemoryStatusPending:Z

    #@38
    if-eqz v1, :cond_0

    #@3a
    .line 124
    const-string/jumbo v1, "SmsStorageMonitor"

    #@3d
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "Sending pending memory status report : mStorageAvailable = "

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    .line 125
    iget-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    #@4b
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@58
    iget-boolean v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    #@5a
    .line 127
    const/4 v3, 0x2

    #@5b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    #@5e
    move-result-object v3

    #@5f
    .line 126
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    #@62
    goto :goto_0

    #@63
    .line 106
    nop

    #@64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isStorageAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    #@2
    return v0
.end method
