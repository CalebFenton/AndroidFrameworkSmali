.class public abstract Landroid/hardware/location/IGeofenceHardware$Stub;
.super Landroid/os/Binder;
.source "IGeofenceHardware.java"

# interfaces
.implements Landroid/hardware/location/IGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IGeofenceHardware"

.field static final TRANSACTION_addCircularFence:I = 0x5

.field static final TRANSACTION_getMonitoringTypes:I = 0x3

.field static final TRANSACTION_getStatusOfMonitoringType:I = 0x4

.field static final TRANSACTION_pauseGeofence:I = 0x7

.field static final TRANSACTION_registerForMonitorStateChangeCallback:I = 0x9

.field static final TRANSACTION_removeGeofence:I = 0x6

.field static final TRANSACTION_resumeGeofence:I = 0x8

.field static final TRANSACTION_setFusedGeofenceHardware:I = 0x2

.field static final TRANSACTION_setGpsGeofenceHardware:I = 0x1

.field static final TRANSACTION_unregisterForMonitorStateChangeCallback:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.hardware.location.IGeofenceHardware"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IGeofenceHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardware;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.hardware.location.IGeofenceHardware"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/location/IGeofenceHardware;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/hardware/location/IGeofenceHardware;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 164
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v11

    #@7
    return v11

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v11, "android.hardware.location.IGeofenceHardware"

    #@b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 44
    const/4 v11, 0x1

    #@f
    return v11

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v11, "android.hardware.location.IGeofenceHardware"

    #@13
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v11

    #@1a
    invoke-static {v11}, Landroid/location/IGpsGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;

    #@1d
    move-result-object v2

    #@1e
    .line 51
    .local v2, "_arg0":Landroid/location/IGpsGeofenceHardware;
    invoke-virtual {p0, v2}, Landroid/hardware/location/IGeofenceHardware$Stub;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    #@21
    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24
    .line 53
    const/4 v11, 0x1

    #@25
    return v11

    #@26
    .line 57
    .end local v2    # "_arg0":Landroid/location/IGpsGeofenceHardware;
    :sswitch_2
    const-string/jumbo v11, "android.hardware.location.IGeofenceHardware"

    #@29
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v11

    #@30
    invoke-static {v11}, Landroid/location/IFusedGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IFusedGeofenceHardware;

    #@33
    move-result-object v1

    #@34
    .line 60
    .local v1, "_arg0":Landroid/location/IFusedGeofenceHardware;
    invoke-virtual {p0, v1}, Landroid/hardware/location/IGeofenceHardware$Stub;->setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V

    #@37
    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a
    .line 62
    const/4 v11, 0x1

    #@3b
    return v11

    #@3c
    .line 66
    .end local v1    # "_arg0":Landroid/location/IFusedGeofenceHardware;
    :sswitch_3
    const-string/jumbo v11, "android.hardware.location.IGeofenceHardware"

    #@3f
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 67
    invoke-virtual {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;->getMonitoringTypes()[I

    #@45
    move-result-object v10

    #@46
    .line 68
    .local v10, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@49
    .line 69
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    #@4c
    .line 70
    const/4 v11, 0x1

    #@4d
    return v11

    #@4e
    .line 74
    .end local v10    # "_result":[I
    :sswitch_4
    const-string/jumbo v11, "android.hardware.location.IGeofenceHardware"

    #@51
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v0

    #@58
    .line 77
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IGeofenceHardware$Stub;->getStatusOfMonitoringType(I)I

    #@5b
    move-result v8

    #@5c
    .line 78
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5f
    .line 79
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@62
    .line 80
    const/4 v11, 0x1

    #@63
    return v11

    #@64
    .line 84
    .end local v0    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_5
    const-string/jumbo v11, "android.hardware.location.IGeofenceHardware"

    #@67
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v0

    #@6e
    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v11

    #@72
    if-eqz v11, :cond_0

    #@74
    .line 89
    sget-object v11, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    #@76
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@79
    move-result-object v4

    #@7a
    check-cast v4, Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    #@7c
    .line 95
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7f
    move-result-object v11

    #@80
    invoke-static {v11}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareCallback;

    #@83
    move-result-object v7

    #@84
    .line 96
    .local v7, "_arg2":Landroid/hardware/location/IGeofenceHardwareCallback;
    invoke-virtual {p0, v0, v4, v7}, Landroid/hardware/location/IGeofenceHardware$Stub;->addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z

    #@87
    move-result v9

    #@88
    .line 97
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8b
    .line 98
    if-eqz v9, :cond_1

    #@8d
    const/4 v11, 0x1

    #@8e
    :goto_1
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@91
    .line 99
    const/4 v11, 0x1

    #@92
    return v11

    #@93
    .line 92
    .end local v7    # "_arg2":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v9    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    #@94
    .local v4, "_arg1":Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    goto :goto_0

    #@95
    .line 98
    .end local v4    # "_arg1":Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .restart local v7    # "_arg2":Landroid/hardware/location/IGeofenceHardwareCallback;
    .restart local v9    # "_result":Z
    :cond_1
    const/4 v11, 0x0

    #@96
    goto :goto_1

    #@97
    .line 103
    .end local v0    # "_arg0":I
    .end local v7    # "_arg2":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v9    # "_result":Z
    :sswitch_6
    const-string/jumbo v11, "android.hardware.location.IGeofenceHardware"

    #@9a
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d
    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v0

    #@a1
    .line 107
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a4
    move-result v3

    #@a5
    .line 108
    .local v3, "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/hardware/location/IGeofenceHardware$Stub;->removeGeofence(II)Z

    #@a8
    move-result v9

    #@a9
    .line 109
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac
    .line 110
    if-eqz v9, :cond_2

    #@ae
    const/4 v11, 0x1

    #@af
    :goto_2
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@b2
    .line 111
    const/4 v11, 0x1

    #@b3
    return v11

    #@b4
    .line 110
    :cond_2
    const/4 v11, 0x0

    #@b5
    goto :goto_2

    #@b6
    .line 115
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Z
    :sswitch_7
    const-string/jumbo v11, "android.hardware.location.IGeofenceHardware"

    #@b9
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bc
    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bf
    move-result v0

    #@c0
    .line 119
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c3
    move-result v3

    #@c4
    .line 120
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/hardware/location/IGeofenceHardware$Stub;->pauseGeofence(II)Z

    #@c7
    move-result v9

    #@c8
    .line 121
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cb
    .line 122
    if-eqz v9, :cond_3

    #@cd
    const/4 v11, 0x1

    #@ce
    :goto_3
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@d1
    .line 123
    const/4 v11, 0x1

    #@d2
    return v11

    #@d3
    .line 122
    :cond_3
    const/4 v11, 0x0

    #@d4
    goto :goto_3

    #@d5
    .line 127
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Z
    :sswitch_8
    const-string/jumbo v11, "android.hardware.location.IGeofenceHardware"

    #@d8
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@db
    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@de
    move-result v0

    #@df
    .line 131
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e2
    move-result v3

    #@e3
    .line 133
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e6
    move-result v6

    #@e7
    .line 134
    .local v6, "_arg2":I
    invoke-virtual {p0, v0, v3, v6}, Landroid/hardware/location/IGeofenceHardware$Stub;->resumeGeofence(III)Z

    #@ea
    move-result v9

    #@eb
    .line 135
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ee
    .line 136
    if-eqz v9, :cond_4

    #@f0
    const/4 v11, 0x1

    #@f1
    :goto_4
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@f4
    .line 137
    const/4 v11, 0x1

    #@f5
    return v11

    #@f6
    .line 136
    :cond_4
    const/4 v11, 0x0

    #@f7
    goto :goto_4

    #@f8
    .line 141
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v9    # "_result":Z
    :sswitch_9
    const-string/jumbo v11, "android.hardware.location.IGeofenceHardware"

    #@fb
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fe
    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@101
    move-result v0

    #@102
    .line 145
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@105
    move-result-object v11

    #@106
    invoke-static {v11}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@109
    move-result-object v5

    #@10a
    .line 146
    .local v5, "_arg1":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    invoke-virtual {p0, v0, v5}, Landroid/hardware/location/IGeofenceHardware$Stub;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    #@10d
    move-result v9

    #@10e
    .line 147
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@111
    .line 148
    if-eqz v9, :cond_5

    #@113
    const/4 v11, 0x1

    #@114
    :goto_5
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@117
    .line 149
    const/4 v11, 0x1

    #@118
    return v11

    #@119
    .line 148
    :cond_5
    const/4 v11, 0x0

    #@11a
    goto :goto_5

    #@11b
    .line 153
    .end local v0    # "_arg0":I
    .end local v5    # "_arg1":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v9    # "_result":Z
    :sswitch_a
    const-string/jumbo v11, "android.hardware.location.IGeofenceHardware"

    #@11e
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@121
    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@124
    move-result v0

    #@125
    .line 157
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@128
    move-result-object v11

    #@129
    invoke-static {v11}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@12c
    move-result-object v5

    #@12d
    .line 158
    .restart local v5    # "_arg1":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    invoke-virtual {p0, v0, v5}, Landroid/hardware/location/IGeofenceHardware$Stub;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    #@130
    move-result v9

    #@131
    .line 159
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@134
    .line 160
    if-eqz v9, :cond_6

    #@136
    const/4 v11, 0x1

    #@137
    :goto_6
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@13a
    .line 161
    const/4 v11, 0x1

    #@13b
    return v11

    #@13c
    .line 160
    :cond_6
    const/4 v11, 0x0

    #@13d
    goto :goto_6

    #@13e
    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
