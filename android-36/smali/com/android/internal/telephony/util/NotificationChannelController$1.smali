.class Lcom/android/internal/telephony/util/NotificationChannelController$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationChannelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/NotificationChannelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/util/NotificationChannelController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 183
    invoke-static {p1}, Lcom/android/internal/telephony/util/NotificationChannelController;->-$$Nest$smcreateAll(Landroid/content/Context;)V

    return-void

    .line 184
    :cond_10
    const-string p0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, -0x1

    .line 187
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p2

    if-eq p0, p2, :cond_26

    .line 188
    invoke-static {p1}, Lcom/android/internal/telephony/util/NotificationChannelController;->-$$Nest$smmigrateVoicemailNotificationSettings(Landroid/content/Context;)V

    :cond_26
    return-void
.end method
