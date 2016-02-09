.class public Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
.super Ljava/lang/Object;
.source "DcTesterFailBringUpAll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "DcTesterFailBrinupAll"


# instance fields
.field private mActionFailBringUp:Ljava/lang/String;

.field private mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcFailBringUp;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/os/Handler;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->INTENT_BASE:Ljava/lang/String;

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, "."

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 47
    const-string/jumbo v2, "action_fail_bringup"

    #@18
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    #@22
    .line 50
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    #@24
    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;-><init>()V

    #@27
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    #@29
    .line 53
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;

    #@2b
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)V

    #@2e
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@30
    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@32
    .line 79
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@34
    if-eqz v1, :cond_0

    #@36
    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    #@38
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@3b
    .line 82
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    #@3d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@40
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v2, "register for intent action="

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    #@59
    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@5b
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getActionDetached()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@62
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v2, "register for intent action="

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@70
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getActionDetached()Ljava/lang/String;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    #@7f
    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@81
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getActionAttached()Ljava/lang/String;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v2, "register for intent action="

    #@90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@96
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getActionAttached()Ljava/lang/String;

    #@99
    move-result-object v2

    #@9a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    #@a5
    .line 91
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@a8
    move-result-object v1

    #@a9
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@ab
    const/4 v3, 0x0

    #@ac
    invoke-virtual {v1, v2, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@af
    .line 77
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 106
    const-string/jumbo v0, "DcTesterFailBrinupAll"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 105
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    #@0
    .prologue
    .line 96
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@f
    .line 95
    :cond_0
    return-void
.end method

.method getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    #@2
    return-object v0
.end method
