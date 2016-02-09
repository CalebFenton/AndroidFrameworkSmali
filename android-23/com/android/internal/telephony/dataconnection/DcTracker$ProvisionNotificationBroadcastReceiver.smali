.class Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisionNotificationBroadcastReceiver"
.end annotation


# instance fields
.field private final mNetworkOperator:Ljava/lang/String;

.field private final mProvisionUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p2, "provisionUrl"    # Ljava/lang/String;
    .param p3, "networkOperator"    # Ljava/lang/String;

    #@0
    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    .line 316
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->mNetworkOperator:Ljava/lang/String;

    #@7
    .line 317
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->mProvisionUrl:Ljava/lang/String;

    #@9
    .line 315
    return-void
.end method

.method private enableMobileProvisioning()V
    .locals 3

    #@0
    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    const v2, 0x42025

    #@5
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 326
    .local v0, "msg":Landroid/os/Message;
    const-string/jumbo v1, "provisioningUrl"

    #@c
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->mProvisionUrl:Ljava/lang/String;

    #@e
    invoke-static {v1, v2}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@15
    .line 327
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@17
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 324
    return-void
.end method

.method private setEnableFailFastMobileData(I)V
    .locals 4
    .param p1, "enabled"    # I

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4
    const v2, 0x42024

    #@7
    const/4 v3, 0x0

    #@8
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(III)Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 320
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@3
    new-instance v1, Landroid/app/ProgressDialog;

    #@5
    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #@8
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set0(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    #@b
    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@d
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get0(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->mNetworkOperator:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@16
    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@18
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get0(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    #@1b
    move-result-object v0

    #@1c
    .line 338
    const v1, 0x10404ba

    #@1f
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@22
    move-result-object v1

    #@23
    .line 336
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@26
    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@28
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get0(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    #@2f
    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@31
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get0(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    #@38
    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@3a
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get0(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    #@41
    move-result-object v0

    #@42
    .line 343
    const/16 v1, 0x7d9

    #@44
    .line 342
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    #@47
    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@49
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get0(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    #@50
    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@52
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@54
    .line 348
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@56
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get0(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    #@59
    move-result-object v2

    #@5a
    .line 347
    const v3, 0x4202a

    #@5d
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@60
    move-result-object v1

    #@61
    .line 348
    const-wide/32 v2, 0x1d4c0

    #@64
    .line 347
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@67
    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@69
    invoke-static {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V

    #@6c
    .line 352
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->setEnableFailFastMobileData(I)V

    #@6f
    .line 353
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->enableMobileProvisioning()V

    #@72
    .line 331
    return-void
.end method
