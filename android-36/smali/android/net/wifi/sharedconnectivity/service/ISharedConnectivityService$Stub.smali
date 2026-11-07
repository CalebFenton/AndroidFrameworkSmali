.class public abstract Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;
.super Landroid/os/Binder;
.source "ISharedConnectivityService.java"

# interfaces
.implements Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_connectHotspotNetwork:I = 0x3

.field static final blacklist TRANSACTION_connectKnownNetwork:I = 0x5

.field static final blacklist TRANSACTION_disconnectHotspotNetwork:I = 0x4

.field static final blacklist TRANSACTION_forgetKnownNetwork:I = 0x6

.field static final blacklist TRANSACTION_getHotspotNetworkConnectionStatus:I = 0xa

.field static final blacklist TRANSACTION_getHotspotNetworks:I = 0x7

.field static final blacklist TRANSACTION_getKnownNetworkConnectionStatus:I = 0xb

.field static final blacklist TRANSACTION_getKnownNetworks:I = 0x8

.field static final blacklist TRANSACTION_getSettingsState:I = 0x9

.field static final blacklist TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.net.wifi.sharedconnectivity.service.ISharedConnectivityService"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_4
    const-string v0, "android.net.wifi.sharedconnectivity.service.ISharedConnectivityService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    if-eqz v1, :cond_14

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    return-object v1

    .line 81
    :cond_14
    new-instance v1, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 90
    packed-switch p0, :pswitch_data_2a

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 134
    :pswitch_5
    const-string v0, "getKnownNetworkConnectionStatus"

    return-object v0

    .line 130
    :pswitch_8
    const-string v0, "getHotspotNetworkConnectionStatus"

    return-object v0

    .line 126
    :pswitch_b
    const-string/jumbo v0, "getSettingsState"

    return-object v0

    .line 122
    :pswitch_f
    const-string v0, "getKnownNetworks"

    return-object v0

    .line 118
    :pswitch_12
    const-string v0, "getHotspotNetworks"

    return-object v0

    .line 114
    :pswitch_15
    const-string v0, "forgetKnownNetwork"

    return-object v0

    .line 110
    :pswitch_18
    const-string v0, "connectKnownNetwork"

    return-object v0

    .line 106
    :pswitch_1b
    const-string v0, "disconnectHotspotNetwork"

    return-object v0

    .line 102
    :pswitch_1e
    const-string v0, "connectHotspotNetwork"

    return-object v0

    .line 98
    :pswitch_21
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 94
    :pswitch_25
    const-string/jumbo v0, "registerCallback"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 460
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 145
    invoke-static {p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 149
    const-string v0, "android.net.wifi.sharedconnectivity.service.ISharedConnectivityService"

    .line 150
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 151
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 154
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v1

    .line 157
    :cond_16
    packed-switch p1, :pswitch_data_c6

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 243
    :pswitch_1e
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->getKnownNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    move-result-object v2

    .line 244
    .local v2, "_result":Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 246
    goto/16 :goto_c5

    .line 236
    .end local v2    # "_result":Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
    :pswitch_2a
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->getHotspotNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    move-result-object v2

    .line 237
    .local v2, "_result":Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 239
    goto/16 :goto_c5

    .line 229
    .end local v2    # "_result":Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
    :pswitch_36
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->getSettingsState()Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    move-result-object v2

    .line 230
    .local v2, "_result":Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 232
    goto/16 :goto_c5

    .line 222
    .end local v2    # "_result":Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    :pswitch_42
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->getKnownNetworks()Ljava/util/List;

    move-result-object v2

    .line 223
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 225
    goto/16 :goto_c5

    .line 215
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;>;"
    :pswitch_4e
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->getHotspotNetworks()Ljava/util/List;

    move-result-object v2

    .line 216
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 218
    goto :goto_c5

    .line 207
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;>;"
    :pswitch_59
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    .line 208
    .local v2, "_arg0":Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->forgetKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto :goto_c5

    .line 198
    .end local v2    # "_arg0":Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    :pswitch_6b
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    .line 199
    .restart local v2    # "_arg0":Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->connectKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    goto :goto_c5

    .line 189
    .end local v2    # "_arg0":Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    :pswitch_7d
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    .line 190
    .local v2, "_arg0":Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->disconnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    goto :goto_c5

    .line 180
    .end local v2    # "_arg0":Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    :pswitch_8f
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    .line 181
    .restart local v2    # "_arg0":Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->connectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    goto :goto_c5

    .line 171
    .end local v2    # "_arg0":Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    move-result-object v2

    .line 172
    .local v2, "_arg0":Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->unregisterCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_c5

    .line 162
    .end local v2    # "_arg0":Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    move-result-object v2

    .line 163
    .restart local v2    # "_arg0":Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->registerCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    nop

    .line 253
    .end local v2    # "_arg0":Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;
    :goto_c5
    return v1

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_a1
        :pswitch_8f
        :pswitch_7d
        :pswitch_6b
        :pswitch_59
        :pswitch_4e
        :pswitch_42
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
