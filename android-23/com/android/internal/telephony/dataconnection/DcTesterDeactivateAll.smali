.class public Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
.super Ljava/lang/Object;
.source "DcTesterDeactivateAll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "DcTesterDeacativeAll"

.field public static sActionDcTesterDeactivateAll:Ljava/lang/String;


# instance fields
.field private mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected sIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    const-string/jumbo v0, "com.android.internal.telephony.dataconnection.action_deactivate_all"

    #@3
    .line 41
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sActionDcTesterDeactivateAll:Ljava/lang/String;

    #@5
    .line 34
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcController;Landroid/os/Handler;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "dcc"    # Lcom/android/internal/telephony/dataconnection/DcController;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;

    #@5
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)V

    #@8
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sIntentReceiver:Landroid/content/BroadcastReceiver;

    #@a
    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@c
    .line 70
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@e
    .line 72
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    #@14
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@17
    .line 75
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sActionDcTesterDeactivateAll:Ljava/lang/String;

    #@19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1c
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "register for intent action="

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sActionDcTesterDeactivateAll:Ljava/lang/String;

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->log(Ljava/lang/String;)V

    #@35
    .line 78
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@37
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getActionDetached()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3e
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "register for intent action="

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4c
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getActionDetached()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->log(Ljava/lang/String;)V

    #@5b
    .line 81
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@5e
    move-result-object v1

    #@5f
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sIntentReceiver:Landroid/content/BroadcastReceiver;

    #@61
    const/4 v3, 0x0

    #@62
    invoke-virtual {v1, v2, v0, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@65
    .line 68
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    const-string/jumbo v0, "DcTesterDeacativeAll"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 91
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    #@0
    .prologue
    .line 86
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sIntentReceiver:Landroid/content/BroadcastReceiver;

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@f
    .line 85
    :cond_0
    return-void
.end method
