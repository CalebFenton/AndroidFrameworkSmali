.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;->initializeCarrierApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@0
    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@2
    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newProfileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "newUserId"    # I

    #@0
    .prologue
    .line 150
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 5
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-set0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I

    #@5
    .line 138
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get0()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 139
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@f
    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/content/pm/IPackageManager;

    #@12
    move-result-object v2

    #@13
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@16
    move-result-object v3

    #@17
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@19
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    #@1c
    move-result v4

    #@1d
    .line 138
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V

    #@20
    .line 141
    if-eqz p2, :cond_0

    #@22
    .line 143
    const/4 v1, 0x0

    #@23
    :try_start_0
    invoke-interface {p2, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 136
    :cond_0
    :goto_0
    return-void

    #@27
    .line 144
    :catch_0
    move-exception v0

    #@28
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
