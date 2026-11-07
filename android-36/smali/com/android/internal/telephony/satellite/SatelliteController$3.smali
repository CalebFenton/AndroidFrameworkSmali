.class Lcom/android/internal/telephony/satellite/SatelliteController$3;
.super Landroid/content/BroadcastReceiver;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 758
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$3;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 762
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.location.MODE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 763
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$3;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const-string p2, "mLocationServiceStateChangedReceiver"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 764
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$3;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const/16 p1, 0x3e

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msendRequestAsync(Lcom/android/internal/telephony/satellite/SatelliteController;ILjava/lang/Object;Lcom/android/internal/telephony/Phone;)V

    :cond_1b
    return-void
.end method
