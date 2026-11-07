.class Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierKeyDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierKeyDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 223
    const-string p1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 224
    const-string p1, "CarrierKeyDownloadManager"

    const-string p2, "Received UserUnlockedReceiver"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$mhandleAlarmOrConfigChange(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V

    :cond_18
    return-void
.end method
