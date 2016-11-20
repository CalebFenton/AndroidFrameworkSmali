.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final TRANSACTION_addGnssMeasurementsListener:I = 0xc

.field static final TRANSACTION_addGnssNavigationMessageListener:I = 0xe

.field static final TRANSACTION_addTestProvider:I = 0x18

.field static final TRANSACTION_clearTestProviderEnabled:I = 0x1d

.field static final TRANSACTION_clearTestProviderLocation:I = 0x1b

.field static final TRANSACTION_clearTestProviderStatus:I = 0x1f

.field static final TRANSACTION_geocoderIsPresent:I = 0x8

.field static final TRANSACTION_getAllProviders:I = 0x11

.field static final TRANSACTION_getBestProvider:I = 0x13

.field static final TRANSACTION_getFromLocation:I = 0x9

.field static final TRANSACTION_getFromLocationName:I = 0xa

.field static final TRANSACTION_getGnssYearOfHardware:I = 0x10

.field static final TRANSACTION_getLastLocation:I = 0x5

.field static final TRANSACTION_getNetworkProviderPackage:I = 0x16

.field static final TRANSACTION_getProviderProperties:I = 0x15

.field static final TRANSACTION_getProviders:I = 0x12

.field static final TRANSACTION_isProviderEnabled:I = 0x17

.field static final TRANSACTION_locationCallbackFinished:I = 0x22

.field static final TRANSACTION_providerMeetsCriteria:I = 0x14

.field static final TRANSACTION_registerGnssStatusCallback:I = 0x6

.field static final TRANSACTION_removeGeofence:I = 0x4

.field static final TRANSACTION_removeGnssMeasurementsListener:I = 0xd

.field static final TRANSACTION_removeGnssNavigationMessageListener:I = 0xf

.field static final TRANSACTION_removeTestProvider:I = 0x19

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_reportLocation:I = 0x21

.field static final TRANSACTION_requestGeofence:I = 0x3

.field static final TRANSACTION_requestLocationUpdates:I = 0x1

.field static final TRANSACTION_sendExtraCommand:I = 0x20

.field static final TRANSACTION_sendNiResponse:I = 0xb

.field static final TRANSACTION_setTestProviderEnabled:I = 0x1c

.field static final TRANSACTION_setTestProviderLocation:I = 0x1a

.field static final TRANSACTION_setTestProviderStatus:I = 0x1e

.field static final TRANSACTION_unregisterGnssStatusCallback:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.location.ILocationManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.location.ILocationManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/location/ILocationManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/location/ILocationManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/location/ILocationManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 60
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 574
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v7

    #@7
    return v7

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v7, "android.location.ILocationManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v7, 0x1

    #@11
    return v7

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v7, "android.location.ILocationManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v7

    #@1e
    if-eqz v7, :cond_0

    #@20
    .line 55
    sget-object v7, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v42

    #@28
    check-cast v42, Landroid/location/LocationRequest;

    #@2a
    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d
    move-result-object v7

    #@2e
    invoke-static {v7}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    #@31
    move-result-object v46

    #@32
    .line 63
    .local v46, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v7

    #@36
    if-eqz v7, :cond_1

    #@38
    .line 64
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    move-object/from16 v0, p2

    #@3c
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f
    move-result-object v51

    #@40
    check-cast v51, Landroid/app/PendingIntent;

    #@42
    .line 70
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@45
    move-result-object v53

    #@46
    .line 71
    .local v53, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@48
    move-object/from16 v1, v42

    #@4a
    move-object/from16 v2, v46

    #@4c
    move-object/from16 v3, v51

    #@4e
    move-object/from16 v4, v53

    #@50
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    #@53
    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@56
    .line 73
    const/4 v7, 0x1

    #@57
    return v7

    #@58
    .line 58
    .end local v46    # "_arg1":Landroid/location/ILocationListener;
    .end local v53    # "_arg3":Ljava/lang/String;
    :cond_0
    const/16 v42, 0x0

    #@5a
    .local v42, "_arg0":Landroid/location/LocationRequest;
    goto :goto_0

    #@5b
    .line 67
    .end local v42    # "_arg0":Landroid/location/LocationRequest;
    .restart local v46    # "_arg1":Landroid/location/ILocationListener;
    :cond_1
    const/16 v51, 0x0

    #@5d
    .local v51, "_arg2":Landroid/app/PendingIntent;
    goto :goto_1

    #@5e
    .line 77
    .end local v46    # "_arg1":Landroid/location/ILocationListener;
    .end local v51    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_2
    const-string/jumbo v7, "android.location.ILocationManager"

    #@61
    move-object/from16 v0, p2

    #@63
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66
    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@69
    move-result-object v7

    #@6a
    invoke-static {v7}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    #@6d
    move-result-object v40

    #@6e
    .line 81
    .local v40, "_arg0":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v7

    #@72
    if-eqz v7, :cond_2

    #@74
    .line 82
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@76
    move-object/from16 v0, p2

    #@78
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7b
    move-result-object v43

    #@7c
    check-cast v43, Landroid/app/PendingIntent;

    #@7e
    .line 88
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@81
    move-result-object v52

    #@82
    .line 89
    .local v52, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@84
    move-object/from16 v1, v40

    #@86
    move-object/from16 v2, v43

    #@88
    move-object/from16 v3, v52

    #@8a
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    #@8d
    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@90
    .line 91
    const/4 v7, 0x1

    #@91
    return v7

    #@92
    .line 85
    .end local v52    # "_arg2":Ljava/lang/String;
    :cond_2
    const/16 v43, 0x0

    #@94
    .local v43, "_arg1":Landroid/app/PendingIntent;
    goto :goto_2

    #@95
    .line 95
    .end local v40    # "_arg0":Landroid/location/ILocationListener;
    .end local v43    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_3
    const-string/jumbo v7, "android.location.ILocationManager"

    #@98
    move-object/from16 v0, p2

    #@9a
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v7

    #@a1
    if-eqz v7, :cond_3

    #@a3
    .line 98
    sget-object v7, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a5
    move-object/from16 v0, p2

    #@a7
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@aa
    move-result-object v42

    #@ab
    check-cast v42, Landroid/location/LocationRequest;

    #@ad
    .line 104
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b0
    move-result v7

    #@b1
    if-eqz v7, :cond_4

    #@b3
    .line 105
    sget-object v7, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b5
    move-object/from16 v0, p2

    #@b7
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ba
    move-result-object v45

    #@bb
    check-cast v45, Landroid/location/Geofence;

    #@bd
    .line 111
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c0
    move-result v7

    #@c1
    if-eqz v7, :cond_5

    #@c3
    .line 112
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c5
    move-object/from16 v0, p2

    #@c7
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ca
    move-result-object v51

    #@cb
    check-cast v51, Landroid/app/PendingIntent;

    #@cd
    .line 118
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d0
    move-result-object v53

    #@d1
    .line 119
    .restart local v53    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d3
    move-object/from16 v1, v42

    #@d5
    move-object/from16 v2, v45

    #@d7
    move-object/from16 v3, v51

    #@d9
    move-object/from16 v4, v53

    #@db
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    #@de
    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e1
    .line 121
    const/4 v7, 0x1

    #@e2
    return v7

    #@e3
    .line 101
    .end local v53    # "_arg3":Ljava/lang/String;
    :cond_3
    const/16 v42, 0x0

    #@e5
    .restart local v42    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_3

    #@e6
    .line 108
    .end local v42    # "_arg0":Landroid/location/LocationRequest;
    :cond_4
    const/16 v45, 0x0

    #@e8
    .local v45, "_arg1":Landroid/location/Geofence;
    goto :goto_4

    #@e9
    .line 115
    .end local v45    # "_arg1":Landroid/location/Geofence;
    :cond_5
    const/16 v51, 0x0

    #@eb
    .restart local v51    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_5

    #@ec
    .line 125
    .end local v51    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_4
    const-string/jumbo v7, "android.location.ILocationManager"

    #@ef
    move-object/from16 v0, p2

    #@f1
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f4
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f7
    move-result v7

    #@f8
    if-eqz v7, :cond_6

    #@fa
    .line 128
    sget-object v7, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fc
    move-object/from16 v0, p2

    #@fe
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@101
    move-result-object v29

    #@102
    check-cast v29, Landroid/location/Geofence;

    #@104
    .line 134
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@107
    move-result v7

    #@108
    if-eqz v7, :cond_7

    #@10a
    .line 135
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10c
    move-object/from16 v0, p2

    #@10e
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@111
    move-result-object v43

    #@112
    check-cast v43, Landroid/app/PendingIntent;

    #@114
    .line 141
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@117
    move-result-object v52

    #@118
    .line 142
    .restart local v52    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@11a
    move-object/from16 v1, v29

    #@11c
    move-object/from16 v2, v43

    #@11e
    move-object/from16 v3, v52

    #@120
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    #@123
    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@126
    .line 144
    const/4 v7, 0x1

    #@127
    return v7

    #@128
    .line 131
    .end local v52    # "_arg2":Ljava/lang/String;
    :cond_6
    const/16 v29, 0x0

    #@12a
    .local v29, "_arg0":Landroid/location/Geofence;
    goto :goto_6

    #@12b
    .line 138
    .end local v29    # "_arg0":Landroid/location/Geofence;
    :cond_7
    const/16 v43, 0x0

    #@12d
    .restart local v43    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_7

    #@12e
    .line 148
    .end local v43    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_5
    const-string/jumbo v7, "android.location.ILocationManager"

    #@131
    move-object/from16 v0, p2

    #@133
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@136
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@139
    move-result v7

    #@13a
    if-eqz v7, :cond_8

    #@13c
    .line 151
    sget-object v7, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13e
    move-object/from16 v0, p2

    #@140
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@143
    move-result-object v42

    #@144
    check-cast v42, Landroid/location/LocationRequest;

    #@146
    .line 157
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@149
    move-result-object v49

    #@14a
    .line 158
    .local v49, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@14c
    move-object/from16 v1, v42

    #@14e
    move-object/from16 v2, v49

    #@150
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;

    #@153
    move-result-object v55

    #@154
    .line 159
    .local v55, "_result":Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@157
    .line 160
    if-eqz v55, :cond_9

    #@159
    .line 161
    const/4 v7, 0x1

    #@15a
    move-object/from16 v0, p3

    #@15c
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@15f
    .line 162
    const/4 v7, 0x1

    #@160
    move-object/from16 v0, v55

    #@162
    move-object/from16 v1, p3

    #@164
    invoke-virtual {v0, v1, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    #@167
    .line 167
    :goto_9
    const/4 v7, 0x1

    #@168
    return v7

    #@169
    .line 154
    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v55    # "_result":Landroid/location/Location;
    :cond_8
    const/16 v42, 0x0

    #@16b
    .restart local v42    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_8

    #@16c
    .line 165
    .end local v42    # "_arg0":Landroid/location/LocationRequest;
    .restart local v49    # "_arg1":Ljava/lang/String;
    .restart local v55    # "_result":Landroid/location/Location;
    :cond_9
    const/4 v7, 0x0

    #@16d
    move-object/from16 v0, p3

    #@16f
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@172
    goto :goto_9

    #@173
    .line 171
    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v55    # "_result":Landroid/location/Location;
    :sswitch_6
    const-string/jumbo v7, "android.location.ILocationManager"

    #@176
    move-object/from16 v0, p2

    #@178
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17b
    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@17e
    move-result-object v7

    #@17f
    invoke-static {v7}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    #@182
    move-result-object v39

    #@183
    .line 175
    .local v39, "_arg0":Landroid/location/IGnssStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@186
    move-result-object v49

    #@187
    .line 176
    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@189
    move-object/from16 v1, v39

    #@18b
    move-object/from16 v2, v49

    #@18d
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    #@190
    move-result v59

    #@191
    .line 177
    .local v59, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@194
    .line 178
    if-eqz v59, :cond_a

    #@196
    const/4 v7, 0x1

    #@197
    :goto_a
    move-object/from16 v0, p3

    #@199
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@19c
    .line 179
    const/4 v7, 0x1

    #@19d
    return v7

    #@19e
    .line 178
    :cond_a
    const/4 v7, 0x0

    #@19f
    goto :goto_a

    #@1a0
    .line 183
    .end local v39    # "_arg0":Landroid/location/IGnssStatusListener;
    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v59    # "_result":Z
    :sswitch_7
    const-string/jumbo v7, "android.location.ILocationManager"

    #@1a3
    move-object/from16 v0, p2

    #@1a5
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a8
    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1ab
    move-result-object v7

    #@1ac
    invoke-static {v7}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    #@1af
    move-result-object v39

    #@1b0
    .line 186
    .restart local v39    # "_arg0":Landroid/location/IGnssStatusListener;
    move-object/from16 v0, p0

    #@1b2
    move-object/from16 v1, v39

    #@1b4
    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    #@1b7
    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ba
    .line 188
    const/4 v7, 0x1

    #@1bb
    return v7

    #@1bc
    .line 192
    .end local v39    # "_arg0":Landroid/location/IGnssStatusListener;
    :sswitch_8
    const-string/jumbo v7, "android.location.ILocationManager"

    #@1bf
    move-object/from16 v0, p2

    #@1c1
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c4
    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->geocoderIsPresent()Z

    #@1c7
    move-result v59

    #@1c8
    .line 194
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cb
    .line 195
    if-eqz v59, :cond_b

    #@1cd
    const/4 v7, 0x1

    #@1ce
    :goto_b
    move-object/from16 v0, p3

    #@1d0
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@1d3
    .line 196
    const/4 v7, 0x1

    #@1d4
    return v7

    #@1d5
    .line 195
    :cond_b
    const/4 v7, 0x0

    #@1d6
    goto :goto_b

    #@1d7
    .line 200
    .end local v59    # "_result":Z
    :sswitch_9
    const-string/jumbo v7, "android.location.ILocationManager"

    #@1da
    move-object/from16 v0, p2

    #@1dc
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1df
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@1e2
    move-result-wide v8

    #@1e3
    .line 204
    .local v8, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@1e6
    move-result-wide v10

    #@1e7
    .line 206
    .local v10, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ea
    move-result v12

    #@1eb
    .line 208
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ee
    move-result v7

    #@1ef
    if-eqz v7, :cond_c

    #@1f1
    .line 209
    sget-object v7, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f3
    move-object/from16 v0, p2

    #@1f5
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f8
    move-result-object v13

    #@1f9
    check-cast v13, Landroid/location/GeocoderParams;

    #@1fb
    .line 215
    :goto_c
    new-instance v14, Ljava/util/ArrayList;

    #@1fd
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@200
    .local v14, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v7, p0

    #@202
    .line 216
    invoke-virtual/range {v7 .. v14}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    #@205
    move-result-object v57

    #@206
    .line 217
    .local v57, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@209
    .line 218
    move-object/from16 v0, p3

    #@20b
    move-object/from16 v1, v57

    #@20d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@210
    .line 219
    move-object/from16 v0, p3

    #@212
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@215
    .line 220
    const/4 v7, 0x1

    #@216
    return v7

    #@217
    .line 212
    .end local v14    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v57    # "_result":Ljava/lang/String;
    :cond_c
    const/4 v13, 0x0

    #@218
    .local v13, "_arg3":Landroid/location/GeocoderParams;
    goto :goto_c

    #@219
    .line 224
    .end local v8    # "_arg0":D
    .end local v10    # "_arg1":D
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":Landroid/location/GeocoderParams;
    :sswitch_a
    const-string/jumbo v7, "android.location.ILocationManager"

    #@21c
    move-object/from16 v0, p2

    #@21e
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@221
    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@224
    move-result-object v17

    #@225
    .line 228
    .local v17, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@228
    move-result-wide v10

    #@229
    .line 230
    .restart local v10    # "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@22c
    move-result-wide v20

    #@22d
    .line 232
    .local v20, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@230
    move-result-wide v22

    #@231
    .line 234
    .local v22, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@234
    move-result-wide v24

    #@235
    .line 236
    .local v24, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@238
    move-result v26

    #@239
    .line 238
    .local v26, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23c
    move-result v7

    #@23d
    if-eqz v7, :cond_d

    #@23f
    .line 239
    sget-object v7, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@241
    move-object/from16 v0, p2

    #@243
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@246
    move-result-object v27

    #@247
    check-cast v27, Landroid/location/GeocoderParams;

    #@249
    .line 245
    :goto_d
    new-instance v28, Ljava/util/ArrayList;

    #@24b
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    #@24e
    .local v28, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v16, p0

    #@250
    move-wide/from16 v18, v10

    #@252
    .line 246
    invoke-virtual/range {v16 .. v28}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    #@255
    move-result-object v57

    #@256
    .line 247
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@259
    .line 248
    move-object/from16 v0, p3

    #@25b
    move-object/from16 v1, v57

    #@25d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@260
    .line 249
    move-object/from16 v0, p3

    #@262
    move-object/from16 v1, v28

    #@264
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@267
    .line 250
    const/4 v7, 0x1

    #@268
    return v7

    #@269
    .line 242
    .end local v28    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v57    # "_result":Ljava/lang/String;
    :cond_d
    const/16 v27, 0x0

    #@26b
    .local v27, "_arg6":Landroid/location/GeocoderParams;
    goto :goto_d

    #@26c
    .line 254
    .end local v10    # "_arg1":D
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg2":D
    .end local v22    # "_arg3":D
    .end local v24    # "_arg4":D
    .end local v26    # "_arg5":I
    .end local v27    # "_arg6":Landroid/location/GeocoderParams;
    :sswitch_b
    const-string/jumbo v7, "android.location.ILocationManager"

    #@26f
    move-object/from16 v0, p2

    #@271
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@274
    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@277
    move-result v6

    #@278
    .line 258
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27b
    move-result v32

    #@27c
    .line 259
    .local v32, "_arg1":I
    move-object/from16 v0, p0

    #@27e
    move/from16 v1, v32

    #@280
    invoke-virtual {v0, v6, v1}, Landroid/location/ILocationManager$Stub;->sendNiResponse(II)Z

    #@283
    move-result v59

    #@284
    .line 260
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@287
    .line 261
    if-eqz v59, :cond_e

    #@289
    const/4 v7, 0x1

    #@28a
    :goto_e
    move-object/from16 v0, p3

    #@28c
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@28f
    .line 262
    const/4 v7, 0x1

    #@290
    return v7

    #@291
    .line 261
    :cond_e
    const/4 v7, 0x0

    #@292
    goto :goto_e

    #@293
    .line 266
    .end local v6    # "_arg0":I
    .end local v32    # "_arg1":I
    .end local v59    # "_result":Z
    :sswitch_c
    const-string/jumbo v7, "android.location.ILocationManager"

    #@296
    move-object/from16 v0, p2

    #@298
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29b
    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29e
    move-result-object v7

    #@29f
    invoke-static {v7}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    #@2a2
    move-result-object v37

    #@2a3
    .line 270
    .local v37, "_arg0":Landroid/location/IGnssMeasurementsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a6
    move-result-object v49

    #@2a7
    .line 271
    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2a9
    move-object/from16 v1, v37

    #@2ab
    move-object/from16 v2, v49

    #@2ad
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z

    #@2b0
    move-result v59

    #@2b1
    .line 272
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b4
    .line 273
    if-eqz v59, :cond_f

    #@2b6
    const/4 v7, 0x1

    #@2b7
    :goto_f
    move-object/from16 v0, p3

    #@2b9
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@2bc
    .line 274
    const/4 v7, 0x1

    #@2bd
    return v7

    #@2be
    .line 273
    :cond_f
    const/4 v7, 0x0

    #@2bf
    goto :goto_f

    #@2c0
    .line 278
    .end local v37    # "_arg0":Landroid/location/IGnssMeasurementsListener;
    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v59    # "_result":Z
    :sswitch_d
    const-string/jumbo v7, "android.location.ILocationManager"

    #@2c3
    move-object/from16 v0, p2

    #@2c5
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c8
    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2cb
    move-result-object v7

    #@2cc
    invoke-static {v7}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    #@2cf
    move-result-object v37

    #@2d0
    .line 281
    .restart local v37    # "_arg0":Landroid/location/IGnssMeasurementsListener;
    move-object/from16 v0, p0

    #@2d2
    move-object/from16 v1, v37

    #@2d4
    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    #@2d7
    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2da
    .line 283
    const/4 v7, 0x1

    #@2db
    return v7

    #@2dc
    .line 287
    .end local v37    # "_arg0":Landroid/location/IGnssMeasurementsListener;
    :sswitch_e
    const-string/jumbo v7, "android.location.ILocationManager"

    #@2df
    move-object/from16 v0, p2

    #@2e1
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e4
    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e7
    move-result-object v7

    #@2e8
    invoke-static {v7}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    #@2eb
    move-result-object v38

    #@2ec
    .line 291
    .local v38, "_arg0":Landroid/location/IGnssNavigationMessageListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ef
    move-result-object v49

    #@2f0
    .line 292
    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2f2
    move-object/from16 v1, v38

    #@2f4
    move-object/from16 v2, v49

    #@2f6
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;)Z

    #@2f9
    move-result v59

    #@2fa
    .line 293
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2fd
    .line 294
    if-eqz v59, :cond_10

    #@2ff
    const/4 v7, 0x1

    #@300
    :goto_10
    move-object/from16 v0, p3

    #@302
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@305
    .line 295
    const/4 v7, 0x1

    #@306
    return v7

    #@307
    .line 294
    :cond_10
    const/4 v7, 0x0

    #@308
    goto :goto_10

    #@309
    .line 299
    .end local v38    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v59    # "_result":Z
    :sswitch_f
    const-string/jumbo v7, "android.location.ILocationManager"

    #@30c
    move-object/from16 v0, p2

    #@30e
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@311
    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@314
    move-result-object v7

    #@315
    invoke-static {v7}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    #@318
    move-result-object v38

    #@319
    .line 302
    .restart local v38    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    move-object/from16 v0, p0

    #@31b
    move-object/from16 v1, v38

    #@31d
    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    #@320
    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@323
    .line 304
    const/4 v7, 0x1

    #@324
    return v7

    #@325
    .line 308
    .end local v38    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    :sswitch_10
    const-string/jumbo v7, "android.location.ILocationManager"

    #@328
    move-object/from16 v0, p2

    #@32a
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32d
    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssYearOfHardware()I

    #@330
    move-result v54

    #@331
    .line 310
    .local v54, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@334
    .line 311
    move-object/from16 v0, p3

    #@336
    move/from16 v1, v54

    #@338
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@33b
    .line 312
    const/4 v7, 0x1

    #@33c
    return v7

    #@33d
    .line 316
    .end local v54    # "_result":I
    :sswitch_11
    const-string/jumbo v7, "android.location.ILocationManager"

    #@340
    move-object/from16 v0, p2

    #@342
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@345
    .line 317
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    #@348
    move-result-object v58

    #@349
    .line 318
    .local v58, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34c
    .line 319
    move-object/from16 v0, p3

    #@34e
    move-object/from16 v1, v58

    #@350
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@353
    .line 320
    const/4 v7, 0x1

    #@354
    return v7

    #@355
    .line 324
    .end local v58    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_12
    const-string/jumbo v7, "android.location.ILocationManager"

    #@358
    move-object/from16 v0, p2

    #@35a
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35d
    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@360
    move-result v7

    #@361
    if-eqz v7, :cond_11

    #@363
    .line 327
    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    #@365
    move-object/from16 v0, p2

    #@367
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36a
    move-result-object v15

    #@36b
    check-cast v15, Landroid/location/Criteria;

    #@36d
    .line 333
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@370
    move-result v7

    #@371
    if-eqz v7, :cond_12

    #@373
    const/16 v50, 0x1

    #@375
    .line 334
    .local v50, "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    #@377
    move/from16 v1, v50

    #@379
    invoke-virtual {v0, v15, v1}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    #@37c
    move-result-object v58

    #@37d
    .line 335
    .restart local v58    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@380
    .line 336
    move-object/from16 v0, p3

    #@382
    move-object/from16 v1, v58

    #@384
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@387
    .line 337
    const/4 v7, 0x1

    #@388
    return v7

    #@389
    .line 330
    .end local v50    # "_arg1":Z
    .end local v58    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    const/4 v15, 0x0

    #@38a
    .local v15, "_arg0":Landroid/location/Criteria;
    goto :goto_11

    #@38b
    .line 333
    .end local v15    # "_arg0":Landroid/location/Criteria;
    :cond_12
    const/16 v50, 0x0

    #@38d
    goto :goto_12

    #@38e
    .line 341
    :sswitch_13
    const-string/jumbo v7, "android.location.ILocationManager"

    #@391
    move-object/from16 v0, p2

    #@393
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@396
    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@399
    move-result v7

    #@39a
    if-eqz v7, :cond_13

    #@39c
    .line 344
    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    #@39e
    move-object/from16 v0, p2

    #@3a0
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3a3
    move-result-object v15

    #@3a4
    check-cast v15, Landroid/location/Criteria;

    #@3a6
    .line 350
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a9
    move-result v7

    #@3aa
    if-eqz v7, :cond_14

    #@3ac
    const/16 v50, 0x1

    #@3ae
    .line 351
    .restart local v50    # "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    #@3b0
    move/from16 v1, v50

    #@3b2
    invoke-virtual {v0, v15, v1}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    #@3b5
    move-result-object v57

    #@3b6
    .line 352
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b9
    .line 353
    move-object/from16 v0, p3

    #@3bb
    move-object/from16 v1, v57

    #@3bd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c0
    .line 354
    const/4 v7, 0x1

    #@3c1
    return v7

    #@3c2
    .line 347
    .end local v50    # "_arg1":Z
    .end local v57    # "_result":Ljava/lang/String;
    :cond_13
    const/4 v15, 0x0

    #@3c3
    .restart local v15    # "_arg0":Landroid/location/Criteria;
    goto :goto_13

    #@3c4
    .line 350
    .end local v15    # "_arg0":Landroid/location/Criteria;
    :cond_14
    const/16 v50, 0x0

    #@3c6
    goto :goto_14

    #@3c7
    .line 358
    :sswitch_14
    const-string/jumbo v7, "android.location.ILocationManager"

    #@3ca
    move-object/from16 v0, p2

    #@3cc
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3cf
    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d2
    move-result-object v17

    #@3d3
    .line 362
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d6
    move-result v7

    #@3d7
    if-eqz v7, :cond_15

    #@3d9
    .line 363
    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3db
    move-object/from16 v0, p2

    #@3dd
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e0
    move-result-object v44

    #@3e1
    check-cast v44, Landroid/location/Criteria;

    #@3e3
    .line 368
    :goto_15
    move-object/from16 v0, p0

    #@3e5
    move-object/from16 v1, v17

    #@3e7
    move-object/from16 v2, v44

    #@3e9
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z

    #@3ec
    move-result v59

    #@3ed
    .line 369
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f0
    .line 370
    if-eqz v59, :cond_16

    #@3f2
    const/4 v7, 0x1

    #@3f3
    :goto_16
    move-object/from16 v0, p3

    #@3f5
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@3f8
    .line 371
    const/4 v7, 0x1

    #@3f9
    return v7

    #@3fa
    .line 366
    .end local v59    # "_result":Z
    :cond_15
    const/16 v44, 0x0

    #@3fc
    .local v44, "_arg1":Landroid/location/Criteria;
    goto :goto_15

    #@3fd
    .line 370
    .end local v44    # "_arg1":Landroid/location/Criteria;
    .restart local v59    # "_result":Z
    :cond_16
    const/4 v7, 0x0

    #@3fe
    goto :goto_16

    #@3ff
    .line 375
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v59    # "_result":Z
    :sswitch_15
    const-string/jumbo v7, "android.location.ILocationManager"

    #@402
    move-object/from16 v0, p2

    #@404
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@407
    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@40a
    move-result-object v17

    #@40b
    .line 378
    .restart local v17    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@40d
    move-object/from16 v1, v17

    #@40f
    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    #@412
    move-result-object v56

    #@413
    .line 379
    .local v56, "_result":Lcom/android/internal/location/ProviderProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@416
    .line 380
    if-eqz v56, :cond_17

    #@418
    .line 381
    const/4 v7, 0x1

    #@419
    move-object/from16 v0, p3

    #@41b
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@41e
    .line 382
    const/4 v7, 0x1

    #@41f
    move-object/from16 v0, v56

    #@421
    move-object/from16 v1, p3

    #@423
    invoke-virtual {v0, v1, v7}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@426
    .line 387
    :goto_17
    const/4 v7, 0x1

    #@427
    return v7

    #@428
    .line 385
    :cond_17
    const/4 v7, 0x0

    #@429
    move-object/from16 v0, p3

    #@42b
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@42e
    goto :goto_17

    #@42f
    .line 391
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v56    # "_result":Lcom/android/internal/location/ProviderProperties;
    :sswitch_16
    const-string/jumbo v7, "android.location.ILocationManager"

    #@432
    move-object/from16 v0, p2

    #@434
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@437
    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getNetworkProviderPackage()Ljava/lang/String;

    #@43a
    move-result-object v57

    #@43b
    .line 393
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43e
    .line 394
    move-object/from16 v0, p3

    #@440
    move-object/from16 v1, v57

    #@442
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@445
    .line 395
    const/4 v7, 0x1

    #@446
    return v7

    #@447
    .line 399
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v7, "android.location.ILocationManager"

    #@44a
    move-object/from16 v0, p2

    #@44c
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44f
    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@452
    move-result-object v17

    #@453
    .line 402
    .restart local v17    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@455
    move-object/from16 v1, v17

    #@457
    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->isProviderEnabled(Ljava/lang/String;)Z

    #@45a
    move-result v59

    #@45b
    .line 403
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@45e
    .line 404
    if-eqz v59, :cond_18

    #@460
    const/4 v7, 0x1

    #@461
    :goto_18
    move-object/from16 v0, p3

    #@463
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@466
    .line 405
    const/4 v7, 0x1

    #@467
    return v7

    #@468
    .line 404
    :cond_18
    const/4 v7, 0x0

    #@469
    goto :goto_18

    #@46a
    .line 409
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v59    # "_result":Z
    :sswitch_18
    const-string/jumbo v7, "android.location.ILocationManager"

    #@46d
    move-object/from16 v0, p2

    #@46f
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@472
    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@475
    move-result-object v17

    #@476
    .line 413
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@479
    move-result v7

    #@47a
    if-eqz v7, :cond_19

    #@47c
    .line 414
    sget-object v7, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@47e
    move-object/from16 v0, p2

    #@480
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@483
    move-result-object v48

    #@484
    check-cast v48, Lcom/android/internal/location/ProviderProperties;

    #@486
    .line 420
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@489
    move-result-object v52

    #@48a
    .line 421
    .restart local v52    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@48c
    move-object/from16 v1, v17

    #@48e
    move-object/from16 v2, v48

    #@490
    move-object/from16 v3, v52

    #@492
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V

    #@495
    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@498
    .line 423
    const/4 v7, 0x1

    #@499
    return v7

    #@49a
    .line 417
    .end local v52    # "_arg2":Ljava/lang/String;
    :cond_19
    const/16 v48, 0x0

    #@49c
    .local v48, "_arg1":Lcom/android/internal/location/ProviderProperties;
    goto :goto_19

    #@49d
    .line 427
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v48    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    :sswitch_19
    const-string/jumbo v7, "android.location.ILocationManager"

    #@4a0
    move-object/from16 v0, p2

    #@4a2
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a5
    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4a8
    move-result-object v17

    #@4a9
    .line 431
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4ac
    move-result-object v49

    #@4ad
    .line 432
    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4af
    move-object/from16 v1, v17

    #@4b1
    move-object/from16 v2, v49

    #@4b3
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V

    #@4b6
    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b9
    .line 434
    const/4 v7, 0x1

    #@4ba
    return v7

    #@4bb
    .line 438
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v7, "android.location.ILocationManager"

    #@4be
    move-object/from16 v0, p2

    #@4c0
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c3
    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4c6
    move-result-object v17

    #@4c7
    .line 442
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4ca
    move-result v7

    #@4cb
    if-eqz v7, :cond_1a

    #@4cd
    .line 443
    sget-object v7, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4cf
    move-object/from16 v0, p2

    #@4d1
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4d4
    move-result-object v47

    #@4d5
    check-cast v47, Landroid/location/Location;

    #@4d7
    .line 449
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4da
    move-result-object v52

    #@4db
    .line 450
    .restart local v52    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4dd
    move-object/from16 v1, v17

    #@4df
    move-object/from16 v2, v47

    #@4e1
    move-object/from16 v3, v52

    #@4e3
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    #@4e6
    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e9
    .line 452
    const/4 v7, 0x1

    #@4ea
    return v7

    #@4eb
    .line 446
    .end local v52    # "_arg2":Ljava/lang/String;
    :cond_1a
    const/16 v47, 0x0

    #@4ed
    .local v47, "_arg1":Landroid/location/Location;
    goto :goto_1a

    #@4ee
    .line 456
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v47    # "_arg1":Landroid/location/Location;
    :sswitch_1b
    const-string/jumbo v7, "android.location.ILocationManager"

    #@4f1
    move-object/from16 v0, p2

    #@4f3
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f6
    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f9
    move-result-object v17

    #@4fa
    .line 460
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4fd
    move-result-object v49

    #@4fe
    .line 461
    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@500
    move-object/from16 v1, v17

    #@502
    move-object/from16 v2, v49

    #@504
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V

    #@507
    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@50a
    .line 463
    const/4 v7, 0x1

    #@50b
    return v7

    #@50c
    .line 467
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v7, "android.location.ILocationManager"

    #@50f
    move-object/from16 v0, p2

    #@511
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@514
    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@517
    move-result-object v17

    #@518
    .line 471
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51b
    move-result v7

    #@51c
    if-eqz v7, :cond_1b

    #@51e
    const/16 v50, 0x1

    #@520
    .line 473
    .local v50, "_arg1":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@523
    move-result-object v52

    #@524
    .line 474
    .restart local v52    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@526
    move-object/from16 v1, v17

    #@528
    move/from16 v2, v50

    #@52a
    move-object/from16 v3, v52

    #@52c
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V

    #@52f
    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@532
    .line 476
    const/4 v7, 0x1

    #@533
    return v7

    #@534
    .line 471
    .end local v50    # "_arg1":Z
    .end local v52    # "_arg2":Ljava/lang/String;
    :cond_1b
    const/16 v50, 0x0

    #@536
    .restart local v50    # "_arg1":Z
    goto :goto_1b

    #@537
    .line 480
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v50    # "_arg1":Z
    :sswitch_1d
    const-string/jumbo v7, "android.location.ILocationManager"

    #@53a
    move-object/from16 v0, p2

    #@53c
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53f
    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@542
    move-result-object v17

    #@543
    .line 484
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@546
    move-result-object v49

    #@547
    .line 485
    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@549
    move-object/from16 v1, v17

    #@54b
    move-object/from16 v2, v49

    #@54d
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V

    #@550
    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@553
    .line 487
    const/4 v7, 0x1

    #@554
    return v7

    #@555
    .line 491
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v7, "android.location.ILocationManager"

    #@558
    move-object/from16 v0, p2

    #@55a
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55d
    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@560
    move-result-object v17

    #@561
    .line 495
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@564
    move-result v32

    #@565
    .line 497
    .restart local v32    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@568
    move-result v7

    #@569
    if-eqz v7, :cond_1c

    #@56b
    .line 498
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@56d
    move-object/from16 v0, p2

    #@56f
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@572
    move-result-object v33

    #@573
    check-cast v33, Landroid/os/Bundle;

    #@575
    .line 504
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@578
    move-result-wide v34

    #@579
    .line 506
    .local v34, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@57c
    move-result-object v36

    #@57d
    .local v36, "_arg4":Ljava/lang/String;
    move-object/from16 v30, p0

    #@57f
    move-object/from16 v31, v17

    #@581
    .line 507
    invoke-virtual/range {v30 .. v36}, Landroid/location/ILocationManager$Stub;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V

    #@584
    .line 508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@587
    .line 509
    const/4 v7, 0x1

    #@588
    return v7

    #@589
    .line 501
    .end local v34    # "_arg3":J
    .end local v36    # "_arg4":Ljava/lang/String;
    :cond_1c
    const/16 v33, 0x0

    #@58b
    .local v33, "_arg2":Landroid/os/Bundle;
    goto :goto_1c

    #@58c
    .line 513
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v32    # "_arg1":I
    .end local v33    # "_arg2":Landroid/os/Bundle;
    :sswitch_1f
    const-string/jumbo v7, "android.location.ILocationManager"

    #@58f
    move-object/from16 v0, p2

    #@591
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@594
    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@597
    move-result-object v17

    #@598
    .line 517
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@59b
    move-result-object v49

    #@59c
    .line 518
    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@59e
    move-object/from16 v1, v17

    #@5a0
    move-object/from16 v2, v49

    #@5a2
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V

    #@5a5
    .line 519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5a8
    .line 520
    const/4 v7, 0x1

    #@5a9
    return v7

    #@5aa
    .line 524
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v7, "android.location.ILocationManager"

    #@5ad
    move-object/from16 v0, p2

    #@5af
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b2
    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5b5
    move-result-object v17

    #@5b6
    .line 528
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5b9
    move-result-object v49

    #@5ba
    .line 530
    .restart local v49    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5bd
    move-result v7

    #@5be
    if-eqz v7, :cond_1d

    #@5c0
    .line 531
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5c2
    move-object/from16 v0, p2

    #@5c4
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5c7
    move-result-object v33

    #@5c8
    check-cast v33, Landroid/os/Bundle;

    #@5ca
    .line 536
    :goto_1d
    move-object/from16 v0, p0

    #@5cc
    move-object/from16 v1, v17

    #@5ce
    move-object/from16 v2, v49

    #@5d0
    move-object/from16 v3, v33

    #@5d2
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    #@5d5
    move-result v59

    #@5d6
    .line 537
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d9
    .line 538
    if-eqz v59, :cond_1e

    #@5db
    const/4 v7, 0x1

    #@5dc
    :goto_1e
    move-object/from16 v0, p3

    #@5de
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@5e1
    .line 539
    if-eqz v33, :cond_1f

    #@5e3
    .line 540
    const/4 v7, 0x1

    #@5e4
    move-object/from16 v0, p3

    #@5e6
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@5e9
    .line 541
    const/4 v7, 0x1

    #@5ea
    move-object/from16 v0, v33

    #@5ec
    move-object/from16 v1, p3

    #@5ee
    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@5f1
    .line 546
    :goto_1f
    const/4 v7, 0x1

    #@5f2
    return v7

    #@5f3
    .line 534
    .end local v59    # "_result":Z
    :cond_1d
    const/16 v33, 0x0

    #@5f5
    .restart local v33    # "_arg2":Landroid/os/Bundle;
    goto :goto_1d

    #@5f6
    .line 538
    .end local v33    # "_arg2":Landroid/os/Bundle;
    .restart local v59    # "_result":Z
    :cond_1e
    const/4 v7, 0x0

    #@5f7
    goto :goto_1e

    #@5f8
    .line 544
    :cond_1f
    const/4 v7, 0x0

    #@5f9
    move-object/from16 v0, p3

    #@5fb
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@5fe
    goto :goto_1f

    #@5ff
    .line 550
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v59    # "_result":Z
    :sswitch_21
    const-string/jumbo v7, "android.location.ILocationManager"

    #@602
    move-object/from16 v0, p2

    #@604
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@607
    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@60a
    move-result v7

    #@60b
    if-eqz v7, :cond_20

    #@60d
    .line 553
    sget-object v7, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@60f
    move-object/from16 v0, p2

    #@611
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@614
    move-result-object v41

    #@615
    check-cast v41, Landroid/location/Location;

    #@617
    .line 559
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61a
    move-result v7

    #@61b
    if-eqz v7, :cond_21

    #@61d
    const/16 v50, 0x1

    #@61f
    .line 560
    .local v50, "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    #@621
    move-object/from16 v1, v41

    #@623
    move/from16 v2, v50

    #@625
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->reportLocation(Landroid/location/Location;Z)V

    #@628
    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@62b
    .line 562
    const/4 v7, 0x1

    #@62c
    return v7

    #@62d
    .line 556
    .end local v50    # "_arg1":Z
    :cond_20
    const/16 v41, 0x0

    #@62f
    .local v41, "_arg0":Landroid/location/Location;
    goto :goto_20

    #@630
    .line 559
    .end local v41    # "_arg0":Landroid/location/Location;
    :cond_21
    const/16 v50, 0x0

    #@632
    goto :goto_21

    #@633
    .line 566
    :sswitch_22
    const-string/jumbo v7, "android.location.ILocationManager"

    #@636
    move-object/from16 v0, p2

    #@638
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@63b
    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@63e
    move-result-object v7

    #@63f
    invoke-static {v7}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    #@642
    move-result-object v40

    #@643
    .line 569
    .restart local v40    # "_arg0":Landroid/location/ILocationListener;
    move-object/from16 v0, p0

    #@645
    move-object/from16 v1, v40

    #@647
    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->locationCallbackFinished(Landroid/location/ILocationListener;)V

    #@64a
    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@64d
    .line 571
    const/4 v7, 0x1

    #@64e
    return v7

    #@64f
    .line 43
    nop

    #@650
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
