.class public final Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;
.super Lcom/android/internal/telephony/WakeLockStateMachine;
.source "CdmaServiceCategoryProgramHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;
    }
.end annotation


# instance fields
.field final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mScpResultsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "commandsInterface"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, "CdmaServiceCategoryProgramHandler"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    #@7
    .line 119
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;

    #@9
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;)V

    #@c
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mScpResultsReceiver:Landroid/content/BroadcastReceiver;

    #@e
    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mContext:Landroid/content/Context;

    #@10
    .line 58
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@12
    .line 55
    return-void
.end method

.method private handleServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 10
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 99
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsCbProgramData()Ljava/util/ArrayList;

    #@4
    move-result-object v9

    #@5
    .line 100
    .local v9, "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    if-nez v9, :cond_0

    #@7
    .line 101
    const-string/jumbo v0, "handleServiceCategoryProgramData: program data list is null!"

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V

    #@d
    .line 102
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 105
    :cond_0
    new-instance v1, Landroid/content/Intent;

    #@11
    const-string/jumbo v0, "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

    #@14
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@17
    .line 106
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "sender"

    #@1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@21
    .line 107
    const-string/jumbo v0, "program_data"

    #@24
    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@27
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@29
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@2c
    move-result v0

    #@2d
    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@30
    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mContext:Landroid/content/Context;

    #@32
    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    #@35
    .line 110
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mScpResultsReceiver:Landroid/content/BroadcastReceiver;

    #@37
    .line 111
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->getHandler()Landroid/os/Handler;

    #@3a
    move-result-object v5

    #@3b
    .line 110
    const/16 v3, 0x10

    #@3d
    .line 111
    const/4 v6, -0x1

    #@3e
    move-object v8, v7

    #@3f
    .line 109
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@42
    .line 112
    const/4 v0, 0x1

    #@43
    return v0
.end method

.method static makeScpHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandsInterface"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    .line 69
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    #@5
    .line 71
    .local v0, "handler":Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->start()V

    #@8
    .line 72
    return-object v0
.end method


# virtual methods
.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 85
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    #@a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->handleServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v1, "handleMessage got object of type: "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V

    #@30
    .line 88
    const/4 v0, 0x0

    #@31
    return v0
.end method
