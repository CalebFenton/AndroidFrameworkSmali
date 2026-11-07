.class Lcom/android/internal/telephony/GsmCdmaPhone$5;
.super Landroid/content/BroadcastReceiver;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;->initializeCarrierApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/GsmCdmaPhone;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 648
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$5;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 652
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 653
    const-string p1, "android.intent.extra.USER"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 655
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$5;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object p2, p2, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    .line 656
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz p1, :cond_27

    .line 657
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$5;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 655
    invoke-static {p2, v0, p1, p0}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;ILandroid/content/Context;)V

    :cond_2f
    return-void
.end method
