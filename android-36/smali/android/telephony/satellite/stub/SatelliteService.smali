.class public Landroid/telephony/satellite/stub/SatelliteService;
.super Landroid/app/Service;
.source "SatelliteService.java"


# static fields
.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.satellite.SatelliteService"

.field private static final blacklist TAG:Ljava/lang/String; = "SatelliteService"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 58
    const-string v0, "android.telephony.satellite.SatelliteService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 59
    const-string v0, "SatelliteService"

    const-string v1, "SatelliteService bound"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteImplBase;

    new-instance v1, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Landroid/telephony/satellite/stub/SatelliteImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Landroid/telephony/satellite/stub/SatelliteImplBase;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 62
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method
