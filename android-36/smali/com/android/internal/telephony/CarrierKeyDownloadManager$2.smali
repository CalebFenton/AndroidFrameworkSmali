.class Lcom/android/internal/telephony/CarrierKeyDownloadManager$2;
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

    .line 230
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$2;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 234
    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 235
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$2;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    const-string v0, "Download Complete"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/CarrierKeyDownloadManager;Ljava/lang/String;)V

    .line 236
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$2;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    const-string p1, "extra_download_id"

    const-wide/16 v0, 0x0

    .line 237
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    .line 236
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_29
    return-void
.end method
