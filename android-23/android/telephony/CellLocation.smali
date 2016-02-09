.class public abstract Landroid/telephony/CellLocation;
.super Ljava/lang/Object;
.source "CellLocation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getEmpty()Landroid/telephony/CellLocation;
    .locals 1

    #@0
    .prologue
    .line 91
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@7
    move-result v0

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 97
    const/4 v0, 0x0

    #@c
    return-object v0

    #@d
    .line 93
    :pswitch_0
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    #@f
    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    #@12
    return-object v0

    #@13
    .line 95
    :pswitch_1
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    #@15
    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    #@18
    return-object v0

    #@19
    .line 91
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 63
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@7
    move-result v0

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 69
    const/4 v0, 0x0

    #@c
    return-object v0

    #@d
    .line 65
    :pswitch_0
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    #@f
    invoke-direct {v0, p0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    #@12
    return-object v0

    #@13
    .line 67
    :pswitch_1
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    #@15
    invoke-direct {v0, p0}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    #@18
    return-object v0

    #@19
    .line 63
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static requestLocationUpdate()V
    .locals 3

    #@0
    .prologue
    .line 40
    :try_start_0
    const-string/jumbo v2, "phone"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    #@a
    move-result-object v1

    #@b
    .line 41
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@d
    .line 42
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 38
    :cond_0
    :goto_0
    return-void

    #@11
    .line 44
    :catch_0
    move-exception v0

    #@12
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public abstract fillInNotifierBundle(Landroid/os/Bundle;)V
.end method

.method public abstract isEmpty()Z
.end method
