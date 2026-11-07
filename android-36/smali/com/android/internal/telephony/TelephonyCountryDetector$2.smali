.class Lcom/android/internal/telephony/TelephonyCountryDetector$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "TelephonyCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/TelephonyCountryDetector;->registerForWifiConnectivityStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/TelephonyCountryDetector;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/TelephonyCountryDetector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 547
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector$2;->this$0:Lcom/android/internal/telephony/TelephonyCountryDetector;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    .line 551
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCapabilitiesChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 552
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector$2;->this$0:Lcom/android/internal/telephony/TelephonyCountryDetector;

    .line 553
    invoke-static {p0, p2}, Lcom/android/internal/telephony/TelephonyCountryDetector;->-$$Nest$misInternetAvailable(Lcom/android/internal/telephony/TelephonyCountryDetector;Landroid/net/NetworkCapabilities;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x4

    .line 552
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->-$$Nest$msendRequestAsync(Lcom/android/internal/telephony/TelephonyCountryDetector;ILjava/lang/Object;)V

    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 4

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wifi network lost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 559
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector$2;->this$0:Lcom/android/internal/telephony/TelephonyCountryDetector;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->-$$Nest$msendRequestAsync(Lcom/android/internal/telephony/TelephonyCountryDetector;ILjava/lang/Object;)V

    return-void
.end method
