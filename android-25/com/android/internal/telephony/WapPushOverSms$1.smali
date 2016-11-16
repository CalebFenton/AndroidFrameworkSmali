.class Lcom/android/internal/telephony/WapPushOverSms$1;
.super Landroid/content/BroadcastReceiver;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/WapPushOverSms;

    #@0
    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms$1;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 87
    const-string/jumbo v0, "WAP PUSH"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Received broadcast "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 88
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    #@21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 89
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;

    #@2d
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms$1;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    #@2f
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms$1;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    #@31
    invoke-static {v2}, Lcom/android/internal/telephony/WapPushOverSms;->-get0(Lcom/android/internal/telephony/WapPushOverSms;)Landroid/content/Context;

    #@34
    move-result-object v2

    #@35
    const/4 v3, 0x0

    #@36
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;)V

    #@39
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@3c
    .line 86
    :cond_0
    return-void
.end method
