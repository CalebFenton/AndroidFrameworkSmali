.class public abstract Landroid/telephony/CellLocation;
.super Ljava/lang/Object;
.source "CellLocation.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getEmpty()Landroid/telephony/CellLocation;
    .registers 1

    .line 127
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 129
    :pswitch_d
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    return-object v0

    .line 131
    :pswitch_13
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method public static greylist newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 88
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_d
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0, p0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 92
    :pswitch_13
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0, p0}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method public static whitelist requestLocationUpdate()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 58
    .local v0, "appContext":Landroid/content/Context;
    if-nez v0, :cond_7

    return-void

    .line 63
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 66
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_20

    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocationWithPackageName(Ljava/lang/String;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_20} :catch_21

    .line 71
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_20
    goto :goto_22

    .line 69
    :catch_21
    move-exception v1

    .line 72
    :goto_22
    return-void
.end method


# virtual methods
.method public abstract greylist fillInNotifierBundle(Landroid/os/Bundle;)V
.end method

.method public abstract greylist isEmpty()Z
.end method

.method public abstract greylist-max-o setStateInvalid()V
.end method
