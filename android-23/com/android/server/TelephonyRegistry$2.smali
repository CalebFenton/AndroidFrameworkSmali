.class Lcom/android/server/TelephonyRegistry$2;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TelephonyRegistry;

    #@0
    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 259
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.USER_SWITCHED"

    #@8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 260
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@11
    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@14
    move-result v3

    #@15
    .line 262
    .local v3, "userHandle":I
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    #@17
    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    #@1a
    move-result-object v4

    #@1b
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    #@1d
    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    #@20
    move-result-object v5

    #@21
    const/4 v6, 0x1

    #@22
    invoke-virtual {v5, v6, v3, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@29
    .line 256
    .end local v3    # "userHandle":I
    :cond_0
    :goto_0
    return-void

    #@2a
    .line 263
    :cond_1
    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    #@2d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_0

    #@33
    .line 264
    new-instance v2, Ljava/lang/Integer;

    #@35
    .line 265
    const-string/jumbo v4, "subscription"

    #@38
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    #@3b
    move-result v5

    #@3c
    .line 264
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@3f
    move-result v4

    #@40
    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    #@43
    .line 266
    .local v2, "newDefaultSubIdObj":Ljava/lang/Integer;
    const-string/jumbo v4, "slot"

    #@46
    .line 267
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    #@48
    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->-get2(Lcom/android/server/TelephonyRegistry;)I

    #@4b
    move-result v5

    #@4c
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@4f
    move-result v5

    #@50
    .line 266
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@53
    move-result v1

    #@54
    .line 274
    .local v1, "newDefaultPhoneId":I
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    #@56
    invoke-static {v4, v1}, Lcom/android/server/TelephonyRegistry;->-wrap0(Lcom/android/server/TelephonyRegistry;I)Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_0

    #@5c
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    #@5e
    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-get2(Lcom/android/server/TelephonyRegistry;)I

    #@61
    move-result v4

    #@62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v4

    #@6a
    if-eqz v4, :cond_2

    #@6c
    .line 275
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    #@6e
    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-get1(Lcom/android/server/TelephonyRegistry;)I

    #@71
    move-result v4

    #@72
    if-eq v1, v4, :cond_0

    #@74
    .line 276
    :cond_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    #@76
    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    #@79
    move-result-object v4

    #@7a
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    #@7c
    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    #@7f
    move-result-object v5

    #@80
    const/4 v6, 0x2

    #@81
    invoke-virtual {v5, v6, v1, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@88
    goto :goto_0
.end method
