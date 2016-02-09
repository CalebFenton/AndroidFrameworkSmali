.class public Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
.super Ljava/lang/Object;
.source "DcRetryAlarmController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final INTENT_RETRY_ALARM_TAG:Ljava/lang/String; = "tag"

.field private static final INTENT_RETRY_ALARM_WHAT:Ljava/lang/String; = "what"


# instance fields
.field private mActionRetry:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLogTag:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    const-string/jumbo v1, "DcRac"

    #@6
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mLogTag:Ljava/lang/String;

    #@8
    .line 48
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;

    #@a
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)V

    #@d
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@f
    .line 79
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mLogTag:Ljava/lang/String;

    #@15
    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@17
    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@19
    .line 82
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1b
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "alarm"

    #@22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/app/AlarmManager;

    #@28
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    #@2a
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@31
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getClass()Ljava/lang/Class;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    const-string/jumbo v2, "."

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@46
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    const-string/jumbo v2, ".action_retry"

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    #@5b
    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    #@5d
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@60
    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    #@62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@65
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v2, "DcRetryAlarmController: register for intent action="

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    #@7e
    .line 89
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@80
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@83
    move-result-object v1

    #@84
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@86
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@88
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@8b
    move-result-object v3

    #@8c
    const/4 v4, 0x0

    #@8d
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@90
    .line 78
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mLogTag:Ljava/lang/String;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "[dcRac] "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 166
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 96
    const-string/jumbo v0, "dispose"

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    #@7
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@f
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@12
    .line 98
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@14
    .line 99
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@16
    .line 100
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    #@18
    .line 101
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    #@1a
    .line 95
    return-void
.end method

.method getSuggestedRetryTime(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)I
    .locals 4
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 115
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@4
    .line 116
    .local v0, "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    #@6
    .line 117
    .local v1, "retryDelay":I
    const v2, 0x7fffffff

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 118
    const-string/jumbo v2, "getSuggestedRetryTime: suggestedRetryTime is MAX_INT, retry NOT needed"

    #@e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    #@11
    .line 119
    const/4 v1, -0x1

    #@12
    .line 134
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "getSuggestedRetryTime: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, " response="

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, " dc="

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    #@3f
    .line 136
    return v1

    #@40
    .line 120
    :cond_0
    if-ltz v1, :cond_1

    #@42
    .line 121
    const-string/jumbo v2, "getSuggestedRetryTime: suggestedRetryTime is >= 0 use it"

    #@45
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    #@48
    goto :goto_0

    #@49
    .line 122
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@4b
    invoke-virtual {v2}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_3

    #@51
    .line 123
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@53
    invoke-virtual {v2}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    #@56
    move-result v1

    #@57
    .line 124
    if-gez v1, :cond_2

    #@59
    .line 125
    const/4 v1, 0x0

    #@5a
    .line 127
    :cond_2
    const-string/jumbo v2, "getSuggestedRetryTime: retry is needed"

    #@5d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    #@60
    goto :goto_0

    #@61
    .line 129
    :cond_3
    const-string/jumbo v2, "getSuggestedRetryTime: retry is NOT needed"

    #@64
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    #@67
    .line 130
    const/4 v1, -0x1

    #@68
    goto :goto_0
.end method

.method public startRetryAlarm(III)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "tag"    # I
    .param p3, "delay"    # I

    #@0
    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    #@2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    #@4
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "what"

    #@a
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@d
    .line 142
    const-string/jumbo v2, "tag"

    #@10
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@13
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "startRetryAlarm: next attempt in "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    div-int/lit16 v3, p3, 0x3e8

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, "s"

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 146
    const-string/jumbo v3, " what="

    #@2f
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 146
    const-string/jumbo v3, " tag="

    #@3a
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    #@49
    .line 149
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4b
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@4e
    move-result-object v2

    #@4f
    const/4 v3, 0x0

    #@50
    .line 150
    const/high16 v4, 0x8000000

    #@52
    .line 149
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@55
    move-result-object v1

    #@56
    .line 151
    .local v1, "retryIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    #@58
    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5b
    move-result-wide v4

    #@5c
    int-to-long v6, p3

    #@5d
    add-long/2addr v4, v6

    #@5e
    .line 151
    const/4 v3, 0x2

    #@5f
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@62
    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 158
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mLogTag:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, " [dcRac] "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 159
    const-string/jumbo v1, " mPhone="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    .line 160
    const-string/jumbo v1, " mDc="

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    .line 161
    const-string/jumbo v1, " mAlaramManager="

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    .line 162
    const-string/jumbo v1, " mActionRetry="

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    return-object v1
.end method
