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

.field static final TRANSACTION_addGpsMeasurementsListener:I = 0xc

.field static final TRANSACTION_addGpsNavigationMessageListener:I = 0xe

.field static final TRANSACTION_addGpsStatusListener:I = 0x6

.field static final TRANSACTION_addTestProvider:I = 0x17

.field static final TRANSACTION_clearTestProviderEnabled:I = 0x1c

.field static final TRANSACTION_clearTestProviderLocation:I = 0x1a

.field static final TRANSACTION_clearTestProviderStatus:I = 0x1e

.field static final TRANSACTION_geocoderIsPresent:I = 0x8

.field static final TRANSACTION_getAllProviders:I = 0x10

.field static final TRANSACTION_getBestProvider:I = 0x12

.field static final TRANSACTION_getFromLocation:I = 0x9

.field static final TRANSACTION_getFromLocationName:I = 0xa

.field static final TRANSACTION_getLastLocation:I = 0x5

.field static final TRANSACTION_getNetworkProviderPackage:I = 0x15

.field static final TRANSACTION_getProviderProperties:I = 0x14

.field static final TRANSACTION_getProviders:I = 0x11

.field static final TRANSACTION_isProviderEnabled:I = 0x16

.field static final TRANSACTION_locationCallbackFinished:I = 0x21

.field static final TRANSACTION_providerMeetsCriteria:I = 0x13

.field static final TRANSACTION_removeGeofence:I = 0x4

.field static final TRANSACTION_removeGpsMeasurementsListener:I = 0xd

.field static final TRANSACTION_removeGpsNavigationMessageListener:I = 0xf

.field static final TRANSACTION_removeGpsStatusListener:I = 0x7

.field static final TRANSACTION_removeTestProvider:I = 0x18

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_reportLocation:I = 0x20

.field static final TRANSACTION_requestGeofence:I = 0x3

.field static final TRANSACTION_requestLocationUpdates:I = 0x1

.field static final TRANSACTION_sendExtraCommand:I = 0x1f

.field static final TRANSACTION_sendNiResponse:I = 0xb

.field static final TRANSACTION_setTestProviderEnabled:I = 0x1b

.field static final TRANSACTION_setTestProviderLocation:I = 0x19

.field static final TRANSACTION_setTestProviderStatus:I = 0x1d


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
    .locals 59
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
    .line 566
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
    move-result-object v54

    #@154
    .line 159
    .local v54, "_result":Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@157
    .line 160
    if-eqz v54, :cond_9

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
    move-object/from16 v0, v54

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
    .end local v54    # "_result":Landroid/location/Location;
    :cond_8
    const/16 v42, 0x0

    #@16b
    .restart local v42    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_8

    #@16c
    .line 165
    .end local v42    # "_arg0":Landroid/location/LocationRequest;
    .restart local v49    # "_arg1":Ljava/lang/String;
    .restart local v54    # "_result":Landroid/location/Location;
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
    .end local v54    # "_result":Landroid/location/Location;
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
    invoke-static {v7}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    #@182
    move-result-object v39

    #@183
    .line 175
    .local v39, "_arg0":Landroid/location/IGpsStatusListener;
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
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z

    #@190
    move-result v58

    #@191
    .line 177
    .local v58, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@194
    .line 178
    if-eqz v58, :cond_a

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
    .end local v39    # "_arg0":Landroid/location/IGpsStatusListener;
    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v58    # "_result":Z
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
    invoke-static {v7}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    #@1af
    move-result-object v39

    #@1b0
    .line 186
    .restart local v39    # "_arg0":Landroid/location/IGpsStatusListener;
    move-object/from16 v0, p0

    #@1b2
    move-object/from16 v1, v39

    #@1b4
    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

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
    .end local v39    # "_arg0":Landroid/location/IGpsStatusListener;
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
    move-result v58

    #@1c8
    .line 194
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cb
    .line 195
    if-eqz v58, :cond_b

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
    .end local v58    # "_result":Z
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
    move-result-object v56

    #@206
    .line 217
    .local v56, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@209
    .line 218
    move-object/from16 v0, p3

    #@20b
    move-object/from16 v1, v56

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
    .end local v56    # "_result":Ljava/lang/String;
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
    move-result-object v56

    #@256
    .line 247
    .restart local v56    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@259
    .line 248
    move-object/from16 v0, p3

    #@25b
    move-object/from16 v1, v56

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
    .end local v56    # "_result":Ljava/lang/String;
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
    move-result v58

    #@284
    .line 260
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@287
    .line 261
    if-eqz v58, :cond_e

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
    .end local v58    # "_result":Z
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
    invoke-static {v7}, Landroid/location/IGpsMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsMeasurementsListener;

    #@2a2
    move-result-object v37

    #@2a3
    .line 270
    .local v37, "_arg0":Landroid/location/IGpsMeasurementsListener;
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
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;Ljava/lang/String;)Z

    #@2b0
    move-result v58

    #@2b1
    .line 272
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b4
    .line 273
    if-eqz v58, :cond_f

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
    .end local v37    # "_arg0":Landroid/location/IGpsMeasurementsListener;
    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v58    # "_result":Z
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
    invoke-static {v7}, Landroid/location/IGpsMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsMeasurementsListener;

    #@2cf
    move-result-object v37

    #@2d0
    .line 281
    .restart local v37    # "_arg0":Landroid/location/IGpsMeasurementsListener;
    move-object/from16 v0, p0

    #@2d2
    move-object/from16 v1, v37

    #@2d4
    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;)V

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
    .end local v37    # "_arg0":Landroid/location/IGpsMeasurementsListener;
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
    invoke-static {v7}, Landroid/location/IGpsNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsNavigationMessageListener;

    #@2eb
    move-result-object v38

    #@2ec
    .line 291
    .local v38, "_arg0":Landroid/location/IGpsNavigationMessageListener;
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
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;Ljava/lang/String;)Z

    #@2f9
    move-result v58

    #@2fa
    .line 293
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2fd
    .line 294
    if-eqz v58, :cond_10

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
    .end local v38    # "_arg0":Landroid/location/IGpsNavigationMessageListener;
    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v58    # "_result":Z
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
    invoke-static {v7}, Landroid/location/IGpsNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsNavigationMessageListener;

    #@318
    move-result-object v38

    #@319
    .line 302
    .restart local v38    # "_arg0":Landroid/location/IGpsNavigationMessageListener;
    move-object/from16 v0, p0

    #@31b
    move-object/from16 v1, v38

    #@31d
    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;)V

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
    .end local v38    # "_arg0":Landroid/location/IGpsNavigationMessageListener;
    :sswitch_10
    const-string/jumbo v7, "android.location.ILocationManager"

    #@328
    move-object/from16 v0, p2

    #@32a
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32d
    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    #@330
    move-result-object v57

    #@331
    .line 310
    .local v57, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@334
    .line 311
    move-object/from16 v0, p3

    #@336
    move-object/from16 v1, v57

    #@338
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@33b
    .line 312
    const/4 v7, 0x1

    #@33c
    return v7

    #@33d
    .line 316
    .end local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_11
    const-string/jumbo v7, "android.location.ILocationManager"

    #@340
    move-object/from16 v0, p2

    #@342
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@345
    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@348
    move-result v7

    #@349
    if-eqz v7, :cond_11

    #@34b
    .line 319
    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    #@34d
    move-object/from16 v0, p2

    #@34f
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@352
    move-result-object v15

    #@353
    check-cast v15, Landroid/location/Criteria;

    #@355
    .line 325
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@358
    move-result v7

    #@359
    if-eqz v7, :cond_12

    #@35b
    const/16 v50, 0x1

    #@35d
    .line 326
    .local v50, "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    #@35f
    move/from16 v1, v50

    #@361
    invoke-virtual {v0, v15, v1}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    #@364
    move-result-object v57

    #@365
    .line 327
    .restart local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@368
    .line 328
    move-object/from16 v0, p3

    #@36a
    move-object/from16 v1, v57

    #@36c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@36f
    .line 329
    const/4 v7, 0x1

    #@370
    return v7

    #@371
    .line 322
    .end local v50    # "_arg1":Z
    .end local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    const/4 v15, 0x0

    #@372
    .local v15, "_arg0":Landroid/location/Criteria;
    goto :goto_11

    #@373
    .line 325
    .end local v15    # "_arg0":Landroid/location/Criteria;
    :cond_12
    const/16 v50, 0x0

    #@375
    .restart local v50    # "_arg1":Z
    goto :goto_12

    #@376
    .line 333
    .end local v50    # "_arg1":Z
    :sswitch_12
    const-string/jumbo v7, "android.location.ILocationManager"

    #@379
    move-object/from16 v0, p2

    #@37b
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37e
    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@381
    move-result v7

    #@382
    if-eqz v7, :cond_13

    #@384
    .line 336
    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    #@386
    move-object/from16 v0, p2

    #@388
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38b
    move-result-object v15

    #@38c
    check-cast v15, Landroid/location/Criteria;

    #@38e
    .line 342
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@391
    move-result v7

    #@392
    if-eqz v7, :cond_14

    #@394
    const/16 v50, 0x1

    #@396
    .line 343
    .restart local v50    # "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    #@398
    move/from16 v1, v50

    #@39a
    invoke-virtual {v0, v15, v1}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    #@39d
    move-result-object v56

    #@39e
    .line 344
    .restart local v56    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a1
    .line 345
    move-object/from16 v0, p3

    #@3a3
    move-object/from16 v1, v56

    #@3a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a8
    .line 346
    const/4 v7, 0x1

    #@3a9
    return v7

    #@3aa
    .line 339
    .end local v50    # "_arg1":Z
    .end local v56    # "_result":Ljava/lang/String;
    :cond_13
    const/4 v15, 0x0

    #@3ab
    .restart local v15    # "_arg0":Landroid/location/Criteria;
    goto :goto_13

    #@3ac
    .line 342
    .end local v15    # "_arg0":Landroid/location/Criteria;
    :cond_14
    const/16 v50, 0x0

    #@3ae
    .restart local v50    # "_arg1":Z
    goto :goto_14

    #@3af
    .line 350
    .end local v50    # "_arg1":Z
    :sswitch_13
    const-string/jumbo v7, "android.location.ILocationManager"

    #@3b2
    move-object/from16 v0, p2

    #@3b4
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b7
    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3ba
    move-result-object v17

    #@3bb
    .line 354
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3be
    move-result v7

    #@3bf
    if-eqz v7, :cond_15

    #@3c1
    .line 355
    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c3
    move-object/from16 v0, p2

    #@3c5
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c8
    move-result-object v44

    #@3c9
    check-cast v44, Landroid/location/Criteria;

    #@3cb
    .line 360
    :goto_15
    move-object/from16 v0, p0

    #@3cd
    move-object/from16 v1, v17

    #@3cf
    move-object/from16 v2, v44

    #@3d1
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z

    #@3d4
    move-result v58

    #@3d5
    .line 361
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d8
    .line 362
    if-eqz v58, :cond_16

    #@3da
    const/4 v7, 0x1

    #@3db
    :goto_16
    move-object/from16 v0, p3

    #@3dd
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@3e0
    .line 363
    const/4 v7, 0x1

    #@3e1
    return v7

    #@3e2
    .line 358
    .end local v58    # "_result":Z
    :cond_15
    const/16 v44, 0x0

    #@3e4
    .local v44, "_arg1":Landroid/location/Criteria;
    goto :goto_15

    #@3e5
    .line 362
    .end local v44    # "_arg1":Landroid/location/Criteria;
    .restart local v58    # "_result":Z
    :cond_16
    const/4 v7, 0x0

    #@3e6
    goto :goto_16

    #@3e7
    .line 367
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v58    # "_result":Z
    :sswitch_14
    const-string/jumbo v7, "android.location.ILocationManager"

    #@3ea
    move-object/from16 v0, p2

    #@3ec
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ef
    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3f2
    move-result-object v17

    #@3f3
    .line 370
    .restart local v17    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3f5
    move-object/from16 v1, v17

    #@3f7
    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    #@3fa
    move-result-object v55

    #@3fb
    .line 371
    .local v55, "_result":Lcom/android/internal/location/ProviderProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3fe
    .line 372
    if-eqz v55, :cond_17

    #@400
    .line 373
    const/4 v7, 0x1

    #@401
    move-object/from16 v0, p3

    #@403
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@406
    .line 374
    const/4 v7, 0x1

    #@407
    move-object/from16 v0, v55

    #@409
    move-object/from16 v1, p3

    #@40b
    invoke-virtual {v0, v1, v7}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@40e
    .line 379
    :goto_17
    const/4 v7, 0x1

    #@40f
    return v7

    #@410
    .line 377
    :cond_17
    const/4 v7, 0x0

    #@411
    move-object/from16 v0, p3

    #@413
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@416
    goto :goto_17

    #@417
    .line 383
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v55    # "_result":Lcom/android/internal/location/ProviderProperties;
    :sswitch_15
    const-string/jumbo v7, "android.location.ILocationManager"

    #@41a
    move-object/from16 v0, p2

    #@41c
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41f
    .line 384
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getNetworkProviderPackage()Ljava/lang/String;

    #@422
    move-result-object v56

    #@423
    .line 385
    .restart local v56    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@426
    .line 386
    move-object/from16 v0, p3

    #@428
    move-object/from16 v1, v56

    #@42a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@42d
    .line 387
    const/4 v7, 0x1

    #@42e
    return v7

    #@42f
    .line 391
    .end local v56    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v7, "android.location.ILocationManager"

    #@432
    move-object/from16 v0, p2

    #@434
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@437
    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43a
    move-result-object v17

    #@43b
    .line 394
    .restart local v17    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@43d
    move-object/from16 v1, v17

    #@43f
    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->isProviderEnabled(Ljava/lang/String;)Z

    #@442
    move-result v58

    #@443
    .line 395
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@446
    .line 396
    if-eqz v58, :cond_18

    #@448
    const/4 v7, 0x1

    #@449
    :goto_18
    move-object/from16 v0, p3

    #@44b
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@44e
    .line 397
    const/4 v7, 0x1

    #@44f
    return v7

    #@450
    .line 396
    :cond_18
    const/4 v7, 0x0

    #@451
    goto :goto_18

    #@452
    .line 401
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v58    # "_result":Z
    :sswitch_17
    const-string/jumbo v7, "android.location.ILocationManager"

    #@455
    move-object/from16 v0, p2

    #@457
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45a
    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@45d
    move-result-object v17

    #@45e
    .line 405
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@461
    move-result v7

    #@462
    if-eqz v7, :cond_19

    #@464
    .line 406
    sget-object v7, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@466
    move-object/from16 v0, p2

    #@468
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@46b
    move-result-object v48

    #@46c
    check-cast v48, Lcom/android/internal/location/ProviderProperties;

    #@46e
    .line 412
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@471
    move-result-object v52

    #@472
    .line 413
    .restart local v52    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@474
    move-object/from16 v1, v17

    #@476
    move-object/from16 v2, v48

    #@478
    move-object/from16 v3, v52

    #@47a
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V

    #@47d
    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@480
    .line 415
    const/4 v7, 0x1

    #@481
    return v7

    #@482
    .line 409
    .end local v52    # "_arg2":Ljava/lang/String;
    :cond_19
    const/16 v48, 0x0

    #@484
    .local v48, "_arg1":Lcom/android/internal/location/ProviderProperties;
    goto :goto_19

    #@485
    .line 419
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v48    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    :sswitch_18
    const-string/jumbo v7, "android.location.ILocationManager"

    #@488
    move-object/from16 v0, p2

    #@48a
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48d
    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@490
    move-result-object v17

    #@491
    .line 423
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@494
    move-result-object v49

    #@495
    .line 424
    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@497
    move-object/from16 v1, v17

    #@499
    move-object/from16 v2, v49

    #@49b
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V

    #@49e
    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a1
    .line 426
    const/4 v7, 0x1

    #@4a2
    return v7

    #@4a3
    .line 430
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v7, "android.location.ILocationManager"

    #@4a6
    move-object/from16 v0, p2

    #@4a8
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ab
    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4ae
    move-result-object v17

    #@4af
    .line 434
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b2
    move-result v7

    #@4b3
    if-eqz v7, :cond_1a

    #@4b5
    .line 435
    sget-object v7, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4b7
    move-object/from16 v0, p2

    #@4b9
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4bc
    move-result-object v47

    #@4bd
    check-cast v47, Landroid/location/Location;

    #@4bf
    .line 441
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4c2
    move-result-object v52

    #@4c3
    .line 442
    .restart local v52    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4c5
    move-object/from16 v1, v17

    #@4c7
    move-object/from16 v2, v47

    #@4c9
    move-object/from16 v3, v52

    #@4cb
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    #@4ce
    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d1
    .line 444
    const/4 v7, 0x1

    #@4d2
    return v7

    #@4d3
    .line 438
    .end local v52    # "_arg2":Ljava/lang/String;
    :cond_1a
    const/16 v47, 0x0

    #@4d5
    .local v47, "_arg1":Landroid/location/Location;
    goto :goto_1a

    #@4d6
    .line 448
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v47    # "_arg1":Landroid/location/Location;
    :sswitch_1a
    const-string/jumbo v7, "android.location.ILocationManager"

    #@4d9
    move-object/from16 v0, p2

    #@4db
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4de
    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4e1
    move-result-object v17

    #@4e2
    .line 452
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4e5
    move-result-object v49

    #@4e6
    .line 453
    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4e8
    move-object/from16 v1, v17

    #@4ea
    move-object/from16 v2, v49

    #@4ec
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V

    #@4ef
    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f2
    .line 455
    const/4 v7, 0x1

    #@4f3
    return v7

    #@4f4
    .line 459
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v7, "android.location.ILocationManager"

    #@4f7
    move-object/from16 v0, p2

    #@4f9
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4fc
    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4ff
    move-result-object v17

    #@500
    .line 463
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@503
    move-result v7

    #@504
    if-eqz v7, :cond_1b

    #@506
    const/16 v50, 0x1

    #@508
    .line 465
    .restart local v50    # "_arg1":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@50b
    move-result-object v52

    #@50c
    .line 466
    .restart local v52    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@50e
    move-object/from16 v1, v17

    #@510
    move/from16 v2, v50

    #@512
    move-object/from16 v3, v52

    #@514
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V

    #@517
    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@51a
    .line 468
    const/4 v7, 0x1

    #@51b
    return v7

    #@51c
    .line 463
    .end local v50    # "_arg1":Z
    .end local v52    # "_arg2":Ljava/lang/String;
    :cond_1b
    const/16 v50, 0x0

    #@51e
    .restart local v50    # "_arg1":Z
    goto :goto_1b

    #@51f
    .line 472
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v50    # "_arg1":Z
    :sswitch_1c
    const-string/jumbo v7, "android.location.ILocationManager"

    #@522
    move-object/from16 v0, p2

    #@524
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@527
    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@52a
    move-result-object v17

    #@52b
    .line 476
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@52e
    move-result-object v49

    #@52f
    .line 477
    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@531
    move-object/from16 v1, v17

    #@533
    move-object/from16 v2, v49

    #@535
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V

    #@538
    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@53b
    .line 479
    const/4 v7, 0x1

    #@53c
    return v7

    #@53d
    .line 483
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v7, "android.location.ILocationManager"

    #@540
    move-object/from16 v0, p2

    #@542
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@545
    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@548
    move-result-object v17

    #@549
    .line 487
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@54c
    move-result v32

    #@54d
    .line 489
    .restart local v32    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@550
    move-result v7

    #@551
    if-eqz v7, :cond_1c

    #@553
    .line 490
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@555
    move-object/from16 v0, p2

    #@557
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@55a
    move-result-object v33

    #@55b
    check-cast v33, Landroid/os/Bundle;

    #@55d
    .line 496
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@560
    move-result-wide v34

    #@561
    .line 498
    .local v34, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@564
    move-result-object v36

    #@565
    .local v36, "_arg4":Ljava/lang/String;
    move-object/from16 v30, p0

    #@567
    move-object/from16 v31, v17

    #@569
    .line 499
    invoke-virtual/range {v30 .. v36}, Landroid/location/ILocationManager$Stub;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V

    #@56c
    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@56f
    .line 501
    const/4 v7, 0x1

    #@570
    return v7

    #@571
    .line 493
    .end local v34    # "_arg3":J
    .end local v36    # "_arg4":Ljava/lang/String;
    :cond_1c
    const/16 v33, 0x0

    #@573
    .local v33, "_arg2":Landroid/os/Bundle;
    goto :goto_1c

    #@574
    .line 505
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v32    # "_arg1":I
    .end local v33    # "_arg2":Landroid/os/Bundle;
    :sswitch_1e
    const-string/jumbo v7, "android.location.ILocationManager"

    #@577
    move-object/from16 v0, p2

    #@579
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57c
    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@57f
    move-result-object v17

    #@580
    .line 509
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@583
    move-result-object v49

    #@584
    .line 510
    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@586
    move-object/from16 v1, v17

    #@588
    move-object/from16 v2, v49

    #@58a
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V

    #@58d
    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@590
    .line 512
    const/4 v7, 0x1

    #@591
    return v7

    #@592
    .line 516
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v7, "android.location.ILocationManager"

    #@595
    move-object/from16 v0, p2

    #@597
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59a
    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@59d
    move-result-object v17

    #@59e
    .line 520
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5a1
    move-result-object v49

    #@5a2
    .line 522
    .restart local v49    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a5
    move-result v7

    #@5a6
    if-eqz v7, :cond_1d

    #@5a8
    .line 523
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5aa
    move-object/from16 v0, p2

    #@5ac
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5af
    move-result-object v33

    #@5b0
    check-cast v33, Landroid/os/Bundle;

    #@5b2
    .line 528
    :goto_1d
    move-object/from16 v0, p0

    #@5b4
    move-object/from16 v1, v17

    #@5b6
    move-object/from16 v2, v49

    #@5b8
    move-object/from16 v3, v33

    #@5ba
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    #@5bd
    move-result v58

    #@5be
    .line 529
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5c1
    .line 530
    if-eqz v58, :cond_1e

    #@5c3
    const/4 v7, 0x1

    #@5c4
    :goto_1e
    move-object/from16 v0, p3

    #@5c6
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@5c9
    .line 531
    if-eqz v33, :cond_1f

    #@5cb
    .line 532
    const/4 v7, 0x1

    #@5cc
    move-object/from16 v0, p3

    #@5ce
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@5d1
    .line 533
    const/4 v7, 0x1

    #@5d2
    move-object/from16 v0, v33

    #@5d4
    move-object/from16 v1, p3

    #@5d6
    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@5d9
    .line 538
    :goto_1f
    const/4 v7, 0x1

    #@5da
    return v7

    #@5db
    .line 526
    .end local v58    # "_result":Z
    :cond_1d
    const/16 v33, 0x0

    #@5dd
    .restart local v33    # "_arg2":Landroid/os/Bundle;
    goto :goto_1d

    #@5de
    .line 530
    .end local v33    # "_arg2":Landroid/os/Bundle;
    .restart local v58    # "_result":Z
    :cond_1e
    const/4 v7, 0x0

    #@5df
    goto :goto_1e

    #@5e0
    .line 536
    :cond_1f
    const/4 v7, 0x0

    #@5e1
    move-object/from16 v0, p3

    #@5e3
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@5e6
    goto :goto_1f

    #@5e7
    .line 542
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v58    # "_result":Z
    :sswitch_20
    const-string/jumbo v7, "android.location.ILocationManager"

    #@5ea
    move-object/from16 v0, p2

    #@5ec
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5ef
    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f2
    move-result v7

    #@5f3
    if-eqz v7, :cond_20

    #@5f5
    .line 545
    sget-object v7, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5f7
    move-object/from16 v0, p2

    #@5f9
    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5fc
    move-result-object v41

    #@5fd
    check-cast v41, Landroid/location/Location;

    #@5ff
    .line 551
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@602
    move-result v7

    #@603
    if-eqz v7, :cond_21

    #@605
    const/16 v50, 0x1

    #@607
    .line 552
    .restart local v50    # "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    #@609
    move-object/from16 v1, v41

    #@60b
    move/from16 v2, v50

    #@60d
    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->reportLocation(Landroid/location/Location;Z)V

    #@610
    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@613
    .line 554
    const/4 v7, 0x1

    #@614
    return v7

    #@615
    .line 548
    .end local v50    # "_arg1":Z
    :cond_20
    const/16 v41, 0x0

    #@617
    .local v41, "_arg0":Landroid/location/Location;
    goto :goto_20

    #@618
    .line 551
    .end local v41    # "_arg0":Landroid/location/Location;
    :cond_21
    const/16 v50, 0x0

    #@61a
    .restart local v50    # "_arg1":Z
    goto :goto_21

    #@61b
    .line 558
    .end local v50    # "_arg1":Z
    :sswitch_21
    const-string/jumbo v7, "android.location.ILocationManager"

    #@61e
    move-object/from16 v0, p2

    #@620
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@623
    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@626
    move-result-object v7

    #@627
    invoke-static {v7}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    #@62a
    move-result-object v40

    #@62b
    .line 561
    .restart local v40    # "_arg0":Landroid/location/ILocationListener;
    move-object/from16 v0, p0

    #@62d
    move-object/from16 v1, v40

    #@62f
    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->locationCallbackFinished(Landroid/location/ILocationListener;)V

    #@632
    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@635
    .line 563
    const/4 v7, 0x1

    #@636
    return v7

    #@637
    .line 43
    nop

    #@638
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
