.class public abstract Landroid/nearby/INearbyManager$Stub;
.super Landroid/os/Binder;
.source "INearbyManager.java"

# interfaces
.implements Landroid/nearby/INearbyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/INearbyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/INearbyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getPoweredOffModeEnabled:I = 0x8

.field static final blacklist TRANSACTION_queryOffloadCapability:I = 0x5

.field static final blacklist TRANSACTION_registerScanListener:I = 0x1

.field static final blacklist TRANSACTION_setPoweredOffFindingEphemeralIds:I = 0x6

.field static final blacklist TRANSACTION_setPoweredOffModeEnabled:I = 0x7

.field static final blacklist TRANSACTION_startBroadcast:I = 0x3

.field static final blacklist TRANSACTION_stopBroadcast:I = 0x4

.field static final blacklist TRANSACTION_unregisterScanListener:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.nearby.INearbyManager"

    invoke-virtual {p0, p0, v0}, Landroid/nearby/INearbyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/nearby/INearbyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    const-string v0, "android.nearby.INearbyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nearby/INearbyManager;

    if-eqz v1, :cond_14

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/nearby/INearbyManager;

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Landroid/nearby/INearbyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nearby/INearbyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_1e

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 114
    :pswitch_5
    const-string v0, "getPoweredOffModeEnabled"

    return-object v0

    .line 110
    :pswitch_8
    const-string v0, "setPoweredOffModeEnabled"

    return-object v0

    .line 106
    :pswitch_b
    const-string v0, "setPoweredOffFindingEphemeralIds"

    return-object v0

    .line 102
    :pswitch_e
    const-string v0, "queryOffloadCapability"

    return-object v0

    .line 98
    :pswitch_11
    const-string v0, "stopBroadcast"

    return-object v0

    .line 94
    :pswitch_14
    const-string v0, "startBroadcast"

    return-object v0

    .line 90
    :pswitch_17
    const-string v0, "unregisterScanListener"

    return-object v0

    .line 86
    :pswitch_1a
    const-string v0, "registerScanListener"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 399
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 125
    invoke-static {p1}, Landroid/nearby/INearbyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 129
    const-string v0, "android.nearby.INearbyManager"

    .line 130
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 131
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 134
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    return v1

    .line 137
    :cond_16
    packed-switch p1, :pswitch_data_da

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 225
    :pswitch_1e
    invoke-virtual {p0}, Landroid/nearby/INearbyManager$Stub;->getPoweredOffModeEnabled()Z

    move-result v2

    .line 226
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 228
    goto/16 :goto_d9

    .line 217
    .end local v2    # "_result":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 218
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2}, Landroid/nearby/INearbyManager$Stub;->setPoweredOffModeEnabled(Z)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    goto/16 :goto_d9

    .line 208
    .end local v2    # "_arg0":Z
    :pswitch_39
    sget-object v2, Landroid/nearby/PoweredOffFindingEphemeralId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 209
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/PoweredOffFindingEphemeralId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2}, Landroid/nearby/INearbyManager$Stub;->setPoweredOffFindingEphemeralIds(Ljava/util/List;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    goto/16 :goto_d9

    .line 199
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/PoweredOffFindingEphemeralId;>;"
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nearby/aidl/IOffloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nearby/aidl/IOffloadCallback;

    move-result-object v2

    .line 200
    .local v2, "_arg0":Landroid/nearby/aidl/IOffloadCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2}, Landroid/nearby/INearbyManager$Stub;->queryOffloadCapability(Landroid/nearby/aidl/IOffloadCallback;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto/16 :goto_d9

    .line 186
    .end local v2    # "_arg0":Landroid/nearby/aidl/IOffloadCallback;
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nearby/IBroadcastListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nearby/IBroadcastListener;

    move-result-object v2

    .line 188
    .local v2, "_arg0":Landroid/nearby/IBroadcastListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2, v3, v4}, Landroid/nearby/INearbyManager$Stub;->stopBroadcast(Landroid/nearby/IBroadcastListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_d9

    .line 171
    .end local v2    # "_arg0":Landroid/nearby/IBroadcastListener;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_77
    sget-object v2, Landroid/nearby/BroadcastRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nearby/BroadcastRequestParcelable;

    .line 173
    .local v2, "_arg0":Landroid/nearby/BroadcastRequestParcelable;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/nearby/IBroadcastListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nearby/IBroadcastListener;

    move-result-object v3

    .line 175
    .local v3, "_arg1":Landroid/nearby/IBroadcastListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 177
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/nearby/INearbyManager$Stub;->startBroadcast(Landroid/nearby/BroadcastRequestParcelable;Landroid/nearby/IBroadcastListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto :goto_d9

    .line 158
    .end local v2    # "_arg0":Landroid/nearby/BroadcastRequestParcelable;
    .end local v3    # "_arg1":Landroid/nearby/IBroadcastListener;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nearby/IScanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nearby/IScanListener;

    move-result-object v2

    .line 160
    .local v2, "_arg0":Landroid/nearby/IScanListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 163
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3, v4}, Landroid/nearby/INearbyManager$Stub;->unregisterScanListener(Landroid/nearby/IScanListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_d9

    .line 142
    .end local v2    # "_arg0":Landroid/nearby/IScanListener;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_b3
    sget-object v2, Landroid/nearby/ScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nearby/ScanRequest;

    .line 144
    .local v2, "_arg0":Landroid/nearby/ScanRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/nearby/IScanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nearby/IScanListener;

    move-result-object v3

    .line 146
    .local v3, "_arg1":Landroid/nearby/IScanListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 148
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 149
    .restart local v5    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/nearby/INearbyManager$Stub;->registerScanListener(Landroid/nearby/ScanRequest;Landroid/nearby/IScanListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 151
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    nop

    .line 235
    .end local v2    # "_arg0":Landroid/nearby/ScanRequest;
    .end local v3    # "_arg1":Landroid/nearby/IScanListener;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":I
    :goto_d9
    return v1

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_99
        :pswitch_77
        :pswitch_5d
        :pswitch_4a
        :pswitch_39
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
