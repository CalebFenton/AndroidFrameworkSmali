.class public abstract Landroid/bluetooth/IDistanceMeasurement$Stub;
.super Landroid/os/Binder;
.source "IDistanceMeasurement.java"

# interfaces
.implements Landroid/bluetooth/IDistanceMeasurement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IDistanceMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IDistanceMeasurement$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getChannelSoundingMaxSupportedSecurityLevel:I = 0x4

.field static final blacklist TRANSACTION_getChannelSoundingSupportedSecurityLevels:I = 0x6

.field static final blacklist TRANSACTION_getLocalChannelSoundingMaxSupportedSecurityLevel:I = 0x5

.field static final blacklist TRANSACTION_getSupportedDistanceMeasurementMethods:I = 0x1

.field static final blacklist TRANSACTION_startDistanceMeasurement:I = 0x2

.field static final blacklist TRANSACTION_stopDistanceMeasurement:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.bluetooth.IDistanceMeasurement"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IDistanceMeasurement$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IDistanceMeasurement;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const-string v0, "android.bluetooth.IDistanceMeasurement"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IDistanceMeasurement;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IDistanceMeasurement;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Landroid/bluetooth/IDistanceMeasurement$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IDistanceMeasurement$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 78
    packed-switch p0, :pswitch_data_18

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 102
    :pswitch_5
    const-string v0, "getChannelSoundingSupportedSecurityLevels"

    return-object v0

    .line 98
    :pswitch_8
    const-string v0, "getLocalChannelSoundingMaxSupportedSecurityLevel"

    return-object v0

    .line 94
    :pswitch_b
    const-string v0, "getChannelSoundingMaxSupportedSecurityLevel"

    return-object v0

    .line 90
    :pswitch_e
    const-string v0, "stopDistanceMeasurement"

    return-object v0

    .line 86
    :pswitch_11
    const-string v0, "startDistanceMeasurement"

    return-object v0

    .line 82
    :pswitch_14
    const-string v0, "getSupportedDistanceMeasurementMethods"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
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

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 344
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 113
    invoke-static {p1}, Landroid/bluetooth/IDistanceMeasurement$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const-string v0, "android.bluetooth.IDistanceMeasurement"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 125
    :cond_16
    packed-switch p1, :pswitch_data_d6

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 193
    :pswitch_1e
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 194
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2}, Landroid/bluetooth/IDistanceMeasurement$Stub;->getChannelSoundingSupportedSecurityLevels(Landroid/content/AttributionSource;)[I

    move-result-object v3

    .line 196
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 198
    goto/16 :goto_d4

    .line 183
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":[I
    :pswitch_35
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 184
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Landroid/bluetooth/IDistanceMeasurement$Stub;->getLocalChannelSoundingMaxSupportedSecurityLevel(Landroid/content/AttributionSource;)I

    move-result v3

    .line 186
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    goto/16 :goto_d4

    .line 171
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    :pswitch_4c
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 173
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 174
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IDistanceMeasurement$Stub;->getChannelSoundingMaxSupportedSecurityLevel(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v4

    .line 176
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    goto :goto_d4

    .line 155
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_6a
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 157
    .local v2, "_arg0":Landroid/os/ParcelUuid;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 159
    .local v3, "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 161
    .local v4, "_arg2":I
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 162
    .local v5, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IDistanceMeasurement$Stub;->stopDistanceMeasurement(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)I

    move-result v6

    .line 164
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    goto :goto_d4

    .line 140
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/content/AttributionSource;
    .end local v6    # "_result":I
    :pswitch_94
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 142
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    sget-object v3, Landroid/bluetooth/le/DistanceMeasurementParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/DistanceMeasurementParams;

    .line 144
    .local v3, "_arg1":Landroid/bluetooth/le/DistanceMeasurementParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/le/IDistanceMeasurementCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IDistanceMeasurementCallback;

    move-result-object v4

    .line 146
    .local v4, "_arg2":Landroid/bluetooth/le/IDistanceMeasurementCallback;
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 147
    .restart local v5    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IDistanceMeasurement$Stub;->startDistanceMeasurement(Landroid/os/ParcelUuid;Landroid/bluetooth/le/DistanceMeasurementParams;Landroid/bluetooth/le/IDistanceMeasurementCallback;Landroid/content/AttributionSource;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_d4

    .line 130
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":Landroid/bluetooth/le/DistanceMeasurementParams;
    .end local v4    # "_arg2":Landroid/bluetooth/le/IDistanceMeasurementCallback;
    .end local v5    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_be
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 131
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2}, Landroid/bluetooth/IDistanceMeasurement$Stub;->getSupportedDistanceMeasurementMethods(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v3

    .line 133
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/DistanceMeasurementMethod;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-static {p3, v3, v1}, Landroid/bluetooth/IDistanceMeasurement$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 135
    nop

    .line 205
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/DistanceMeasurementMethod;>;"
    :goto_d4
    return v1

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_be
        :pswitch_94
        :pswitch_6a
        :pswitch_4c
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
