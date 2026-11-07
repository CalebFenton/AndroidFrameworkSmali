.class public abstract Landroid/telephony/satellite/stub/ISatelliteListener$Stub;
.super Landroid/os/Binder;
.source "ISatelliteListener.java"

# interfaces
.implements Landroid/telephony/satellite/stub/ISatelliteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/stub/ISatelliteListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/stub/ISatelliteListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onNtnSignalStrengthChanged:I = 0x5

.field static final blacklist TRANSACTION_onPendingDatagrams:I = 0x2

.field static final blacklist TRANSACTION_onRegistrationFailure:I = 0x8

.field static final blacklist TRANSACTION_onSatelliteCapabilitiesChanged:I = 0x6

.field static final blacklist TRANSACTION_onSatelliteDatagramReceived:I = 0x1

.field static final blacklist TRANSACTION_onSatelliteModemStateChanged:I = 0x4

.field static final blacklist TRANSACTION_onSatellitePositionChanged:I = 0x3

.field static final blacklist TRANSACTION_onSatelliteSupportedStateChanged:I = 0x7

.field static final blacklist TRANSACTION_onTerrestrialNetworkAvailableChanged:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 98
    const-string v0, "android.telephony.satellite.stub.ISatelliteListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatelliteListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 106
    if-nez p0, :cond_4

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_4
    const-string v0, "android.telephony.satellite.stub.ISatelliteListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 110
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/satellite/stub/ISatelliteListener;

    if-eqz v1, :cond_14

    .line 111
    move-object v1, v0

    check-cast v1, Landroid/telephony/satellite/stub/ISatelliteListener;

    return-object v1

    .line 113
    :cond_14
    new-instance v1, Landroid/telephony/satellite/stub/ISatelliteListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 122
    packed-switch p0, :pswitch_data_20

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 158
    :pswitch_5
    const-string v0, "onTerrestrialNetworkAvailableChanged"

    return-object v0

    .line 154
    :pswitch_8
    const-string v0, "onRegistrationFailure"

    return-object v0

    .line 150
    :pswitch_b
    const-string v0, "onSatelliteSupportedStateChanged"

    return-object v0

    .line 146
    :pswitch_e
    const-string v0, "onSatelliteCapabilitiesChanged"

    return-object v0

    .line 142
    :pswitch_11
    const-string v0, "onNtnSignalStrengthChanged"

    return-object v0

    .line 138
    :pswitch_14
    const-string v0, "onSatelliteModemStateChanged"

    return-object v0

    .line 134
    :pswitch_17
    const-string v0, "onSatellitePositionChanged"

    return-object v0

    .line 130
    :pswitch_1a
    const-string v0, "onPendingDatagrams"

    return-object v0

    .line 126
    :pswitch_1d
    const-string v0, "onSatelliteDatagramReceived"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 117
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 440
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 169
    invoke-static {p1}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    const-string v0, "android.telephony.satellite.stub.ISatelliteListener"

    .line 174
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 175
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 178
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return v1

    .line 181
    :cond_16
    packed-switch p1, :pswitch_data_90

    .line 256
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 249
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 250
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onTerrestrialNetworkAvailableChanged(Z)V

    .line 252
    goto :goto_8e

    .line 241
    .end local v2    # "_arg0":Z
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onRegistrationFailure(I)V

    .line 244
    goto :goto_8e

    .line 233
    .end local v2    # "_arg0":I
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 234
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onSatelliteSupportedStateChanged(Z)V

    .line 236
    goto :goto_8e

    .line 225
    .end local v2    # "_arg0":Z
    :pswitch_3f
    sget-object v2, Landroid/telephony/satellite/stub/SatelliteCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/stub/SatelliteCapabilities;

    .line 226
    .local v2, "_arg0":Landroid/telephony/satellite/stub/SatelliteCapabilities;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onSatelliteCapabilitiesChanged(Landroid/telephony/satellite/stub/SatelliteCapabilities;)V

    .line 228
    goto :goto_8e

    .line 217
    .end local v2    # "_arg0":Landroid/telephony/satellite/stub/SatelliteCapabilities;
    :pswitch_4e
    sget-object v2, Landroid/telephony/satellite/stub/NtnSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/stub/NtnSignalStrength;

    .line 218
    .local v2, "_arg0":Landroid/telephony/satellite/stub/NtnSignalStrength;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onNtnSignalStrengthChanged(Landroid/telephony/satellite/stub/NtnSignalStrength;)V

    .line 220
    goto :goto_8e

    .line 209
    .end local v2    # "_arg0":Landroid/telephony/satellite/stub/NtnSignalStrength;
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onSatelliteModemStateChanged(I)V

    .line 212
    goto :goto_8e

    .line 201
    .end local v2    # "_arg0":I
    :pswitch_68
    sget-object v2, Landroid/telephony/satellite/stub/PointingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/stub/PointingInfo;

    .line 202
    .local v2, "_arg0":Landroid/telephony/satellite/stub/PointingInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onSatellitePositionChanged(Landroid/telephony/satellite/stub/PointingInfo;)V

    .line 204
    goto :goto_8e

    .line 195
    .end local v2    # "_arg0":Landroid/telephony/satellite/stub/PointingInfo;
    :pswitch_77
    invoke-virtual {p0}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onPendingDatagrams()V

    .line 196
    goto :goto_8e

    .line 186
    :pswitch_7b
    sget-object v2, Landroid/telephony/satellite/stub/SatelliteDatagram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/stub/SatelliteDatagram;

    .line 188
    .local v2, "_arg0":Landroid/telephony/satellite/stub/SatelliteDatagram;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onSatelliteDatagramReceived(Landroid/telephony/satellite/stub/SatelliteDatagram;I)V

    .line 191
    nop

    .line 259
    .end local v2    # "_arg0":Landroid/telephony/satellite/stub/SatelliteDatagram;
    .end local v3    # "_arg1":I
    :goto_8e
    return v1

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_77
        :pswitch_68
        :pswitch_5d
        :pswitch_4e
        :pswitch_3f
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
