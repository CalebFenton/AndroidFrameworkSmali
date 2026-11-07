.class public abstract Landroid/media/IMediaRouterService$Stub;
.super Landroid/os/Binder;
.source "IMediaRouterService.java"

# interfaces
.implements Landroid/media/IMediaRouterService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRouterService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaRouterService"

.field static final blacklist TRANSACTION_deselectRouteWithManager:I = 0x25

.field static final blacklist TRANSACTION_deselectRouteWithRouter2:I = 0x16

.field static final blacklist TRANSACTION_getDeviceSuggestionsWithManager:I = 0x2b

.field static final blacklist TRANSACTION_getDeviceSuggestionsWithRouter2:I = 0x1b

.field static final blacklist TRANSACTION_getRemoteSessions:I = 0x1c

.field static final greylist-max-o TRANSACTION_getState:I = 0x4

.field static final blacklist TRANSACTION_getSystemRoutes:I = 0xb

.field static final blacklist TRANSACTION_getSystemSessionInfo:I = 0xc

.field static final blacklist TRANSACTION_getSystemSessionInfoForPackage:I = 0x1d

.field static final greylist-max-o TRANSACTION_isPlaybackActive:I = 0x5

.field static final greylist-max-o TRANSACTION_registerClientAsUser:I = 0x1

.field static final blacklist TRANSACTION_registerClientGroupId:I = 0x3

.field static final blacklist TRANSACTION_registerManager:I = 0x1e

.field static final blacklist TRANSACTION_registerProxyRouter:I = 0x1f

.field static final blacklist TRANSACTION_registerRouter2:I = 0xe

.field static final blacklist TRANSACTION_releaseSessionWithManager:I = 0x28

.field static final blacklist TRANSACTION_releaseSessionWithRouter2:I = 0x19

.field static final blacklist TRANSACTION_requestCreateSessionWithManager:I = 0x23

.field static final blacklist TRANSACTION_requestCreateSessionWithRouter2:I = 0x14

.field static final greylist-max-o TRANSACTION_requestSetVolume:I = 0x9

.field static final greylist-max-o TRANSACTION_requestUpdateVolume:I = 0xa

.field static final blacklist TRANSACTION_selectRouteWithManager:I = 0x24

.field static final blacklist TRANSACTION_selectRouteWithRouter2:I = 0x15

.field static final blacklist TRANSACTION_setBluetoothA2dpOn:I = 0x6

.field static final blacklist TRANSACTION_setDeviceSuggestionsWithManager:I = 0x2a

.field static final blacklist TRANSACTION_setDeviceSuggestionsWithRouter2:I = 0x1a

.field static final greylist-max-o TRANSACTION_setDiscoveryRequest:I = 0x7

.field static final blacklist TRANSACTION_setDiscoveryRequestWithRouter2:I = 0x11

.field static final blacklist TRANSACTION_setRouteListingPreference:I = 0x12

.field static final blacklist TRANSACTION_setRouteVolumeWithManager:I = 0x21

.field static final blacklist TRANSACTION_setRouteVolumeWithRouter2:I = 0x13

.field static final greylist-max-o TRANSACTION_setSelectedRoute:I = 0x8

.field static final blacklist TRANSACTION_setSessionVolumeWithManager:I = 0x27

.field static final blacklist TRANSACTION_setSessionVolumeWithRouter2:I = 0x18

.field static final blacklist TRANSACTION_showMediaOutputSwitcherWithProxyRouter:I = 0x29

.field static final blacklist TRANSACTION_showMediaOutputSwitcherWithRouter2:I = 0xd

.field static final blacklist TRANSACTION_transferToRouteWithManager:I = 0x26

.field static final blacklist TRANSACTION_transferToRouteWithRouter2:I = 0x17

.field static final greylist-max-o TRANSACTION_unregisterClient:I = 0x2

.field static final blacklist TRANSACTION_unregisterManager:I = 0x20

.field static final blacklist TRANSACTION_unregisterRouter2:I = 0xf

.field static final blacklist TRANSACTION_updateScanningState:I = 0x22

.field static final blacklist TRANSACTION_updateScanningStateWithRouter2:I = 0x10


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 171
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 172
    const-string v0, "android.media.IMediaRouterService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRouterService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 180
    if-nez p0, :cond_4

    .line 181
    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_4
    const-string v0, "android.media.IMediaRouterService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 184
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMediaRouterService;

    if-eqz v1, :cond_14

    .line 185
    move-object v1, v0

    check-cast v1, Landroid/media/IMediaRouterService;

    return-object v1

    .line 187
    :cond_14
    new-instance v1, Landroid/media/IMediaRouterService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaRouterService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 196
    packed-switch p0, :pswitch_data_86

    .line 372
    const/4 v0, 0x0

    return-object v0

    .line 368
    :pswitch_5
    const-string v0, "getDeviceSuggestionsWithManager"

    return-object v0

    .line 364
    :pswitch_8
    const-string v0, "setDeviceSuggestionsWithManager"

    return-object v0

    .line 360
    :pswitch_b
    const-string v0, "showMediaOutputSwitcherWithProxyRouter"

    return-object v0

    .line 356
    :pswitch_e
    const-string v0, "releaseSessionWithManager"

    return-object v0

    .line 352
    :pswitch_11
    const-string v0, "setSessionVolumeWithManager"

    return-object v0

    .line 348
    :pswitch_14
    const-string v0, "transferToRouteWithManager"

    return-object v0

    .line 344
    :pswitch_17
    const-string v0, "deselectRouteWithManager"

    return-object v0

    .line 340
    :pswitch_1a
    const-string v0, "selectRouteWithManager"

    return-object v0

    .line 336
    :pswitch_1d
    const-string v0, "requestCreateSessionWithManager"

    return-object v0

    .line 332
    :pswitch_20
    const-string v0, "updateScanningState"

    return-object v0

    .line 328
    :pswitch_23
    const-string v0, "setRouteVolumeWithManager"

    return-object v0

    .line 324
    :pswitch_26
    const-string v0, "unregisterManager"

    return-object v0

    .line 320
    :pswitch_29
    const-string v0, "registerProxyRouter"

    return-object v0

    .line 316
    :pswitch_2c
    const-string v0, "registerManager"

    return-object v0

    .line 312
    :pswitch_2f
    const-string v0, "getSystemSessionInfoForPackage"

    return-object v0

    .line 308
    :pswitch_32
    const-string v0, "getRemoteSessions"

    return-object v0

    .line 304
    :pswitch_35
    const-string v0, "getDeviceSuggestionsWithRouter2"

    return-object v0

    .line 300
    :pswitch_38
    const-string v0, "setDeviceSuggestionsWithRouter2"

    return-object v0

    .line 296
    :pswitch_3b
    const-string v0, "releaseSessionWithRouter2"

    return-object v0

    .line 292
    :pswitch_3e
    const-string v0, "setSessionVolumeWithRouter2"

    return-object v0

    .line 288
    :pswitch_41
    const-string v0, "transferToRouteWithRouter2"

    return-object v0

    .line 284
    :pswitch_44
    const-string v0, "deselectRouteWithRouter2"

    return-object v0

    .line 280
    :pswitch_47
    const-string v0, "selectRouteWithRouter2"

    return-object v0

    .line 276
    :pswitch_4a
    const-string v0, "requestCreateSessionWithRouter2"

    return-object v0

    .line 272
    :pswitch_4d
    const-string v0, "setRouteVolumeWithRouter2"

    return-object v0

    .line 268
    :pswitch_50
    const-string v0, "setRouteListingPreference"

    return-object v0

    .line 264
    :pswitch_53
    const-string v0, "setDiscoveryRequestWithRouter2"

    return-object v0

    .line 260
    :pswitch_56
    const-string v0, "updateScanningStateWithRouter2"

    return-object v0

    .line 256
    :pswitch_59
    const-string v0, "unregisterRouter2"

    return-object v0

    .line 252
    :pswitch_5c
    const-string v0, "registerRouter2"

    return-object v0

    .line 248
    :pswitch_5f
    const-string v0, "showMediaOutputSwitcherWithRouter2"

    return-object v0

    .line 244
    :pswitch_62
    const-string v0, "getSystemSessionInfo"

    return-object v0

    .line 240
    :pswitch_65
    const-string v0, "getSystemRoutes"

    return-object v0

    .line 236
    :pswitch_68
    const-string v0, "requestUpdateVolume"

    return-object v0

    .line 232
    :pswitch_6b
    const-string v0, "requestSetVolume"

    return-object v0

    .line 228
    :pswitch_6e
    const-string v0, "setSelectedRoute"

    return-object v0

    .line 224
    :pswitch_71
    const-string v0, "setDiscoveryRequest"

    return-object v0

    .line 220
    :pswitch_74
    const-string v0, "setBluetoothA2dpOn"

    return-object v0

    .line 216
    :pswitch_77
    const-string v0, "isPlaybackActive"

    return-object v0

    .line 212
    :pswitch_7a
    const-string v0, "getState"

    return-object v0

    .line 208
    :pswitch_7d
    const-string v0, "registerClientGroupId"

    return-object v0

    .line 204
    :pswitch_80
    const-string v0, "unregisterClient"

    return-object v0

    .line 200
    :pswitch_83
    const-string v0, "registerClientAsUser"

    return-object v0

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
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

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/util/List;

    .line 709
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 710
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 711
    return-void
.end method

.method static synthetic blacklist lambda$onTransact$1(Landroid/os/Parcel;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/util/List;

    .line 923
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 924
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 925
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 191
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1760
    const/16 v0, 0x2a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 379
    invoke-static {p1}, Landroid/media/IMediaRouterService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    move-object v8, p3

    const-string v9, "android.media.IMediaRouterService"

    .line 384
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 385
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 388
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    return v10

    .line 391
    :cond_17
    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_4ca

    .line 931
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 914
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v2

    .line 915
    .local v2, "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouterService$Stub;->getDeviceSuggestionsWithManager(Landroid/media/IMediaRouter2Manager;)Ljava/util/Map;

    move-result-object v3

    .line 917
    .local v3, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    if-nez v3, :cond_39

    .line 919
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4c8

    .line 921
    :cond_39
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    new-instance v1, Landroid/media/IMediaRouterService$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3}, Landroid/media/IMediaRouterService$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v3, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 927
    goto/16 :goto_4c8

    .line 903
    .end local v2    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v3    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;>;"
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v1

    .line 905
    .local v1, "_arg0":Landroid/media/IMediaRouter2Manager;
    sget-object v2, Landroid/media/SuggestedDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 906
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 907
    invoke-virtual {p0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->setDeviceSuggestionsWithManager(Landroid/media/IMediaRouter2Manager;Ljava/util/List;)V

    .line 908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    goto/16 :goto_4c8

    .line 893
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v1

    .line 894
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {p0, v1}, Landroid/media/IMediaRouterService$Stub;->showMediaOutputSwitcherWithProxyRouter(Landroid/media/IMediaRouter2Manager;)Z

    move-result v2

    .line 896
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 898
    goto/16 :goto_4c8

    .line 880
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "_result":Z
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v1

    .line 882
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 884
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 885
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 886
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V

    .line 887
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    goto/16 :goto_4c8

    .line 865
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v1

    .line 867
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 869
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 871
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 872
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IMediaRouterService$Stub;->setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V

    .line 874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    goto/16 :goto_4c8

    .line 846
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v1

    .line 848
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 850
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 852
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRoute2Info;

    .line 854
    .local v4, "_arg3":Landroid/media/MediaRoute2Info;
    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 856
    .local v5, "_arg4":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 857
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/IMediaRouterService$Stub;->transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    goto/16 :goto_4c8

    .line 831
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/media/MediaRoute2Info;
    .end local v5    # "_arg4":Landroid/os/UserHandle;
    .end local v6    # "_arg5":Ljava/lang/String;
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v1

    .line 833
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 835
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 837
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRoute2Info;

    .line 838
    .restart local v4    # "_arg3":Landroid/media/MediaRoute2Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IMediaRouterService$Stub;->deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    goto/16 :goto_4c8

    .line 816
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/media/MediaRoute2Info;
    :pswitch_107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v1

    .line 818
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 820
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 822
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRoute2Info;

    .line 823
    .restart local v4    # "_arg3":Landroid/media/MediaRoute2Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IMediaRouterService$Stub;->selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    goto/16 :goto_4c8

    .line 801
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/media/MediaRoute2Info;
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v1

    .line 803
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 805
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 807
    .local v3, "_arg2":Landroid/media/RoutingSessionInfo;
    sget-object v4, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRoute2Info;

    .line 808
    .restart local v4    # "_arg3":Landroid/media/MediaRoute2Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IMediaRouterService$Stub;->requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 810
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    goto/16 :goto_4c8

    .line 790
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/media/RoutingSessionInfo;
    .end local v4    # "_arg3":Landroid/media/MediaRoute2Info;
    :pswitch_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v1

    .line 792
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 793
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->updateScanningState(Landroid/media/IMediaRouter2Manager;I)V

    .line 795
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    goto/16 :goto_4c8

    .line 775
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "_arg1":I
    :pswitch_168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v1

    .line 777
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 779
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 781
    .local v3, "_arg2":Landroid/media/MediaRoute2Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 782
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IMediaRouterService$Stub;->setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    goto/16 :goto_4c8

    .line 766
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/media/MediaRoute2Info;
    .end local v4    # "_arg3":I
    :pswitch_18b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v1

    .line 767
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {p0, v1}, Landroid/media/IMediaRouterService$Stub;->unregisterManager(Landroid/media/IMediaRouter2Manager;)V

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    goto/16 :goto_4c8

    .line 751
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    :pswitch_19e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v1

    .line 753
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 757
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 758
    .local v4, "_arg3":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IMediaRouterService$Stub;->registerProxyRouter(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    goto/16 :goto_4c8

    .line 740
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/UserHandle;
    :pswitch_1c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v1

    .line 742
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 743
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {p0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->registerManager(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)V

    .line 745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    goto/16 :goto_4c8

    .line 728
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_1d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 730
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 731
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 732
    invoke-virtual {p0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->getSystemSessionInfoForPackage(Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v3

    .line 733
    .local v3, "_result":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    invoke-virtual {p3, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 735
    goto/16 :goto_4c8

    .line 718
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/media/RoutingSessionInfo;
    :pswitch_1ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v1

    .line 719
    .local v1, "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {p0, v1}, Landroid/media/IMediaRouterService$Stub;->getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    move-result-object v2

    .line 721
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 723
    goto/16 :goto_4c8

    .line 700
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    :pswitch_206
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v2

    .line 701
    .local v2, "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouterService$Stub;->getDeviceSuggestionsWithRouter2(Landroid/media/IMediaRouter2;)Ljava/util/Map;

    move-result-object v3

    .line 703
    .local v3, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    if-nez v3, :cond_21f

    .line 705
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4c8

    .line 707
    :cond_21f
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    new-instance v1, Landroid/media/IMediaRouterService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Landroid/media/IMediaRouterService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v3, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 713
    goto/16 :goto_4c8

    .line 689
    .end local v2    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v3    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;>;"
    :pswitch_230
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v1

    .line 691
    .local v1, "_arg0":Landroid/media/IMediaRouter2;
    sget-object v2, Landroid/media/SuggestedDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 692
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {p0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->setDeviceSuggestionsWithRouter2(Landroid/media/IMediaRouter2;Ljava/util/List;)V

    .line 694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    goto/16 :goto_4c8

    .line 678
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    :pswitch_249
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v1

    .line 680
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {p0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    .line 683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    goto/16 :goto_4c8

    .line 665
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_260
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v1

    .line 667
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 669
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 670
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    goto/16 :goto_4c8

    .line 652
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_27b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v1

    .line 654
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 656
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 657
    .local v3, "_arg2":Landroid/media/MediaRoute2Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->transferToRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    goto/16 :goto_4c8

    .line 639
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/media/MediaRoute2Info;
    :pswitch_29a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v1

    .line 641
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 643
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 644
    .restart local v3    # "_arg2":Landroid/media/MediaRoute2Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    goto/16 :goto_4c8

    .line 626
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/media/MediaRoute2Info;
    :pswitch_2b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v1

    .line 628
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 630
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 631
    .restart local v3    # "_arg2":Landroid/media/MediaRoute2Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    goto/16 :goto_4c8

    .line 607
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/media/MediaRoute2Info;
    :pswitch_2d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v1

    .line 609
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 611
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 613
    .local v3, "_arg2":J
    sget-object v5, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/RoutingSessionInfo;

    .line 615
    .local v5, "_arg3":Landroid/media/RoutingSessionInfo;
    sget-object v6, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRoute2Info;

    .line 617
    .local v6, "_arg4":Landroid/media/MediaRoute2Info;
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 618
    .local v7, "_arg5":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/media/IMediaRouterService$Stub;->requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    goto/16 :goto_4c8

    .line 594
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":Landroid/media/RoutingSessionInfo;
    .end local v6    # "_arg4":Landroid/media/MediaRoute2Info;
    .end local v7    # "_arg5":Landroid/os/Bundle;
    :pswitch_30c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v1

    .line 596
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2;
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 598
    .local v2, "_arg1":Landroid/media/MediaRoute2Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 599
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->setRouteVolumeWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    goto/16 :goto_4c8

    .line 583
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v2    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v3    # "_arg2":I
    :pswitch_32b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v1

    .line 585
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2;
    sget-object v2, Landroid/media/RouteListingPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RouteListingPreference;

    .line 586
    .local v2, "_arg1":Landroid/media/RouteListingPreference;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {p0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->setRouteListingPreference(Landroid/media/IMediaRouter2;Landroid/media/RouteListingPreference;)V

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    goto/16 :goto_4c8

    .line 572
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v2    # "_arg1":Landroid/media/RouteListingPreference;
    :pswitch_346
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v1

    .line 574
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2;
    sget-object v2, Landroid/media/RouteDiscoveryPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RouteDiscoveryPreference;

    .line 575
    .local v2, "_arg1":Landroid/media/RouteDiscoveryPreference;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    goto/16 :goto_4c8

    .line 561
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v2    # "_arg1":Landroid/media/RouteDiscoveryPreference;
    :pswitch_361
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v1

    .line 563
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 564
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {p0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->updateScanningStateWithRouter2(Landroid/media/IMediaRouter2;I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    goto/16 :goto_4c8

    .line 552
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v2    # "_arg1":I
    :pswitch_378
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v1

    .line 553
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, v1}, Landroid/media/IMediaRouterService$Stub;->unregisterRouter2(Landroid/media/IMediaRouter2;)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    goto/16 :goto_4c8

    .line 541
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2;
    :pswitch_38b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v1

    .line 543
    .restart local v1    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {p0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->registerRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    goto/16 :goto_4c8

    .line 531
    .end local v1    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_3a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {p0, v1}, Landroid/media/IMediaRouterService$Stub;->showMediaOutputSwitcherWithRouter2(Ljava/lang/String;)Z

    move-result v2

    .line 534
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 536
    goto/16 :goto_4c8

    .line 523
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_3b5
    invoke-virtual {p0}, Landroid/media/IMediaRouterService$Stub;->getSystemSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    .line 524
    .local v1, "_result":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {p3, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 526
    goto/16 :goto_4c8

    .line 512
    .end local v1    # "_result":Landroid/media/RoutingSessionInfo;
    :pswitch_3c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 515
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->getSystemRoutes(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 517
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, v3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 519
    goto/16 :goto_4c8

    .line 499
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :pswitch_3d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v1

    .line 501
    .local v1, "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 504
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    goto/16 :goto_4c8

    .line 486
    .end local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_3f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v1

    .line 488
    .restart local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 490
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 491
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    goto/16 :goto_4c8

    .line 473
    .end local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_40e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v1

    .line 475
    .restart local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 477
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 478
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    goto/16 :goto_4c8

    .line 460
    .end local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :pswitch_429
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v1

    .line 462
    .restart local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 464
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 465
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    goto/16 :goto_4c8

    .line 449
    .end local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_444
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v1

    .line 451
    .restart local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 452
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->setBluetoothA2dpOn(Landroid/media/IMediaRouterClient;Z)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    goto :goto_4c8

    .line 439
    .end local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v2    # "_arg1":Z
    :pswitch_45a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v1

    .line 440
    .restart local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {p0, v1}, Landroid/media/IMediaRouterService$Stub;->isPlaybackActive(Landroid/media/IMediaRouterClient;)Z

    move-result v2

    .line 442
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 444
    goto :goto_4c8

    .line 429
    .end local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v2    # "_result":Z
    :pswitch_470
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v1

    .line 430
    .restart local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {p0, v1}, Landroid/media/IMediaRouterService$Stub;->getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    move-result-object v2

    .line 432
    .local v2, "_result":Landroid/media/MediaRouterClientState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 434
    goto :goto_4c8

    .line 418
    .end local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v2    # "_result":Landroid/media/MediaRouterClientState;
    :pswitch_486
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v1

    .line 420
    .restart local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->registerClientGroupId(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    goto :goto_4c8

    .line 409
    .end local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_49c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v1

    .line 410
    .restart local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v1}, Landroid/media/IMediaRouterService$Stub;->unregisterClient(Landroid/media/IMediaRouterClient;)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto :goto_4c8

    .line 396
    .end local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    :pswitch_4ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v1

    .line 398
    .restart local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 400
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 401
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    nop

    .line 934
    .end local v1    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :goto_4c8
    return v10

    nop

    :pswitch_data_4ca
    .packed-switch 0x1
        :pswitch_4ae
        :pswitch_49c
        :pswitch_486
        :pswitch_470
        :pswitch_45a
        :pswitch_444
        :pswitch_429
        :pswitch_40e
        :pswitch_3f3
        :pswitch_3d8
        :pswitch_3c1
        :pswitch_3b5
        :pswitch_3a2
        :pswitch_38b
        :pswitch_378
        :pswitch_361
        :pswitch_346
        :pswitch_32b
        :pswitch_30c
        :pswitch_2d8
        :pswitch_2b9
        :pswitch_29a
        :pswitch_27b
        :pswitch_260
        :pswitch_249
        :pswitch_230
        :pswitch_206
        :pswitch_1ef
        :pswitch_1d8
        :pswitch_1c1
        :pswitch_19e
        :pswitch_18b
        :pswitch_168
        :pswitch_151
        :pswitch_12a
        :pswitch_107
        :pswitch_e4
        :pswitch_b4
        :pswitch_95
        :pswitch_7a
        :pswitch_63
        :pswitch_4a
        :pswitch_20
    .end packed-switch
.end method
