.class Lcom/android/internal/telephony/satellite/SatelliteController$2;
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

    .line 732
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 735
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/satellite/SatelliteController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fputmDefaultSmsPackageName(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 736
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getConfigSatelliteGatewayServicePackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fputmSatelliteGatewayServicePackageName(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 737
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " DefaultSmsPackageName:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmDefaultSmsPackageName(Lcom/android/internal/telephony/satellite/SatelliteController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 741
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmSatelliteGatewayServicePackageName(Lcom/android/internal/telephony/satellite/SatelliteController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmDefaultSmsPackageName(Lcom/android/internal/telephony/satellite/SatelliteController;)Ljava/lang/String;

    move-result-object p2

    .line 742
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    .line 743
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const-string p1, "Neither SMS or SatelliteGateway package"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogv(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    return-void

    .line 746
    :cond_6a
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmSubscriptionManagerService(Lcom/android/internal/telephony/satellite/SatelliteController;)Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object p1

    if-eqz p1, :cond_9c

    .line 748
    array-length p2, p1

    const/4 v0, 0x0

    :goto_79
    if-ge v0, p2, :cond_9b

    aget v1, p1, v0

    .line 749
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPackageStateChangedReceiver: activeSubId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 750
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->handleCarrierRoamingNtnAvailableServicesChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_9b
    return-void

    .line 753
    :cond_9c
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const-string p1, "mPackageStateChangedReceiver: activeSubIds is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    return-void
.end method
