.class Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@0
    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 274
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 275
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "Receive action: "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@1b
    .line 276
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    #@1e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_2

    #@24
    .line 280
    :cond_0
    :goto_0
    const-string/jumbo v3, "android.intent.extra.UID"

    #@27
    const/4 v4, -0x1

    #@28
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@2b
    move-result v2

    #@2c
    .line 281
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@2e
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 282
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@3c
    .line 284
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@3e
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get2(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    #@41
    move-result-object v3

    #@42
    .line 285
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@44
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get2(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    #@47
    move-result-object v4

    #@48
    const/4 v5, 0x3

    #@49
    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4c
    move-result-object v4

    #@4d
    .line 284
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@50
    .line 273
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "uid":I
    :cond_1
    return-void

    #@51
    .line 276
    :cond_2
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    #@54
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v3

    #@58
    if-nez v3, :cond_0

    #@5a
    const-string/jumbo v3, "android.intent.action.PACKAGE_REPLACED"

    #@5d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v3

    #@61
    if-eqz v3, :cond_1

    #@63
    goto :goto_0
.end method
