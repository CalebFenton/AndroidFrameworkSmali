.class public abstract Landroid/telephony/satellite/stub/SatelliteGatewayService;
.super Landroid/app/Service;
.source "SatelliteGatewayService.java"


# static fields
.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.satellite.SatelliteGatewayService"

.field private static final blacklist TAG:Ljava/lang/String; = "SatelliteGatewayService"


# instance fields
.field private final blacklist mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteGatewayService$1;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/stub/SatelliteGatewayService$1;-><init>(Landroid/telephony/satellite/stub/SatelliteGatewayService;)V

    iput-object v0, p0, Landroid/telephony/satellite/stub/SatelliteGatewayService;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final blacklist getBinder()Landroid/os/IBinder;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteGatewayService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 63
    const-string v0, "android.telephony.satellite.SatelliteGatewayService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 64
    const-string v0, "SatelliteGatewayService"

    const-string v1, "SatelliteGatewayService bound"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteGatewayService;->mBinder:Landroid/os/IBinder;

    return-object v0

    .line 67
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method
