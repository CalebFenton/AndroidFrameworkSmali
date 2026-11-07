.class public Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationActionReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 735
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationActionReceiver;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private blacklist dismissEmergencyCallingNotification()V
    .registers 3

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationActionReceiver;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 760
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationActionReceiver;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmNotificationTypeMap(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    if-eqz v0, :cond_27

    .line 762
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationActionReceiver;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->cancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    .line 765
    const-string v0, "CSST"

    const-string v1, "dismissEmergencyCallingNotification"

    invoke-static {v0, v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 738
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.android.internal.telephony.action.SILENCE_WIFI_CALLING_NOTIFICATION"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 739
    const-string p2, "CSST"

    const-string v1, "NotificationActionReceiver: ACTION_NEVER_ASK_AGAIN"

    invoke-static {p2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationActionReceiver;->dismissEmergencyCallingNotification()V

    .line 743
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const/4 v1, 0x1

    .line 744
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 745
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 748
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationActionReceiver;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mActionReceiver:Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationActionReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2c
    return-void
.end method
