.class Lcom/android/internal/telephony/Phone$1;
.super Landroid/content/BroadcastReceiver;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 96
    const-string/jumbo v3, "Phone"

    #@4
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "mImsIntentReceiver: action "

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 97
    const-string/jumbo v3, "android:phone_id"

    #@22
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 98
    const-string/jumbo v3, "android:phone_id"

    #@2b
    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@2e
    move-result v0

    #@2f
    .line 100
    .local v0, "extraPhoneId":I
    const-string/jumbo v3, "Phone"

    #@32
    new-instance v4, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v5, "mImsIntentReceiver: extraPhoneId = "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 101
    if-eq v0, v6, :cond_0

    #@4b
    .line 102
    iget-object v3, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@4d
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@50
    move-result v3

    #@51
    if-eq v0, v3, :cond_1

    #@53
    .line 103
    :cond_0
    return-void

    #@54
    .line 107
    .end local v0    # "extraPhoneId":I
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/Phone;->lockForRadioTechnologyChange:Ljava/lang/Object;

    #@56
    monitor-enter v4

    #@57
    .line 108
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    const-string/jumbo v5, "com.android.ims.IMS_SERVICE_UP"

    #@5e
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_3

    #@64
    .line 109
    iget-object v3, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@66
    const/4 v5, 0x1

    #@67
    invoke-static {v3, v5}, Lcom/android/internal/telephony/Phone;->-set0(Lcom/android/internal/telephony/Phone;Z)Z

    #@6a
    .line 110
    iget-object v3, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@6c
    invoke-static {v3}, Lcom/android/internal/telephony/Phone;->-wrap0(Lcom/android/internal/telephony/Phone;)V

    #@6f
    .line 111
    iget-object v3, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@71
    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@73
    iget-object v5, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@75
    iget v5, v5, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    #@77
    const/4 v6, 0x0

    #@78
    invoke-static {v3, v5, v6}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    :cond_2
    :goto_0
    monitor-exit v4

    #@7c
    .line 95
    return-void

    #@7d
    .line 112
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    const-string/jumbo v5, "com.android.ims.IMS_SERVICE_DOWN"

    #@84
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v3

    #@88
    if-eqz v3, :cond_4

    #@8a
    .line 113
    iget-object v3, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@8c
    const/4 v5, 0x0

    #@8d
    invoke-static {v3, v5}, Lcom/android/internal/telephony/Phone;->-set0(Lcom/android/internal/telephony/Phone;Z)Z

    #@90
    .line 114
    iget-object v3, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@92
    invoke-static {v3}, Lcom/android/internal/telephony/Phone;->-wrap0(Lcom/android/internal/telephony/Phone;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@95
    goto :goto_0

    #@96
    .line 107
    :catchall_0
    move-exception v3

    #@97
    monitor-exit v4

    #@98
    throw v3

    #@99
    .line 115
    :cond_4
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@9c
    move-result-object v3

    #@9d
    const-string/jumbo v5, "com.android.intent.action.IMS_CONFIG_CHANGED"

    #@a0
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result v3

    #@a4
    if-eqz v3, :cond_2

    #@a6
    .line 116
    const-string/jumbo v3, "item"

    #@a9
    const/4 v5, -0x1

    #@aa
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@ad
    move-result v1

    #@ae
    .line 117
    .local v1, "item":I
    const-string/jumbo v3, "value"

    #@b1
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@b4
    move-result-object v2

    #@b5
    .line 118
    .local v2, "value":Ljava/lang/String;
    invoke-static {p1, v1, v2}, Lcom/android/ims/ImsManager;->onProvisionedValueChanged(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b8
    goto :goto_0
.end method
