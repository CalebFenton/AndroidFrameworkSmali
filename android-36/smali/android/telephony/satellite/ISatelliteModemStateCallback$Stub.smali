.class public abstract Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;
.super Landroid/os/Binder;
.source "ISatelliteModemStateCallback.java"

# interfaces
.implements Landroid/telephony/satellite/ISatelliteModemStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/ISatelliteModemStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onEmergencyModeChanged:I = 0x2

.field static final blacklist TRANSACTION_onRegistrationFailure:I = 0x3

.field static final blacklist TRANSACTION_onSatelliteModemStateChanged:I = 0x1

.field static final blacklist TRANSACTION_onTerrestrialNetworkAvailableChanged:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.telephony.satellite.ISatelliteModemStateCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteModemStateCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "android.telephony.satellite.ISatelliteModemStateCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/satellite/ISatelliteModemStateCallback;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/telephony/satellite/ISatelliteModemStateCallback;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 88
    packed-switch p0, :pswitch_data_12

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 104
    :pswitch_5
    const-string v0, "onTerrestrialNetworkAvailableChanged"

    return-object v0

    .line 100
    :pswitch_8
    const-string v0, "onRegistrationFailure"

    return-object v0

    .line 96
    :pswitch_b
    const-string v0, "onEmergencyModeChanged"

    return-object v0

    .line 92
    :pswitch_e
    const-string v0, "onSatelliteModemStateChanged"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 260
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 115
    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const-string v0, "android.telephony.satellite.ISatelliteModemStateCallback"

    .line 120
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 124
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v1

    .line 127
    :cond_16
    packed-switch p1, :pswitch_data_4c

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 156
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 157
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->onTerrestrialNetworkAvailableChanged(Z)V

    .line 159
    goto :goto_4a

    .line 148
    .end local v2    # "_arg0":Z
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->onRegistrationFailure(I)V

    .line 151
    goto :goto_4a

    .line 140
    .end local v2    # "_arg0":I
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 141
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->onEmergencyModeChanged(Z)V

    .line 143
    goto :goto_4a

    .line 132
    .end local v2    # "_arg0":Z
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->onSatelliteModemStateChanged(I)V

    .line 135
    nop

    .line 166
    .end local v2    # "_arg0":I
    :goto_4a
    return v1

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
