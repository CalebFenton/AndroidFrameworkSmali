.class public abstract Landroid/location/IGpsGeofenceHardware$Stub;
.super Landroid/os/Binder;
.source "IGpsGeofenceHardware.java"

# interfaces
.implements Landroid/location/IGpsGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsGeofenceHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGpsGeofenceHardware"

.field static final TRANSACTION_addCircularHardwareGeofence:I = 0x2

.field static final TRANSACTION_isHardwareGeofenceSupported:I = 0x1

.field static final TRANSACTION_pauseHardwareGeofence:I = 0x4

.field static final TRANSACTION_removeHardwareGeofence:I = 0x3

.field static final TRANSACTION_resumeHardwareGeofence:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.location.IGpsGeofenceHardware"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/location/IGpsGeofenceHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;
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
    const-string/jumbo v1, "android.location.IGpsGeofenceHardware"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/location/IGpsGeofenceHardware;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/location/IGpsGeofenceHardware;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 16
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
    .line 115
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v2, "android.location.IGpsGeofenceHardware"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v2, "android.location.IGpsGeofenceHardware"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/location/IGpsGeofenceHardware$Stub;->isHardwareGeofenceSupported()Z

    #@1d
    move-result v15

    #@1e
    .line 54
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 55
    if-eqz v15, :cond_0

    #@23
    const/4 v2, 0x1

    #@24
    :goto_0
    move-object/from16 v0, p3

    #@26
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 56
    const/4 v2, 0x1

    #@2a
    return v2

    #@2b
    .line 55
    :cond_0
    const/4 v2, 0x0

    #@2c
    goto :goto_0

    #@2d
    .line 60
    .end local v15    # "_result":Z
    :sswitch_2
    const-string/jumbo v2, "android.location.IGpsGeofenceHardware"

    #@30
    move-object/from16 v0, p2

    #@32
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v3

    #@39
    .line 64
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@3c
    move-result-wide v4

    #@3d
    .line 66
    .local v4, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@40
    move-result-wide v6

    #@41
    .line 68
    .local v6, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    #@44
    move-result-wide v8

    #@45
    .line 70
    .local v8, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v10

    #@49
    .line 72
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v11

    #@4d
    .line 74
    .local v11, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v12

    #@51
    .line 76
    .local v12, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@54
    move-result v13

    #@55
    .local v13, "_arg7":I
    move-object/from16 v2, p0

    #@57
    .line 77
    invoke-virtual/range {v2 .. v13}, Landroid/location/IGpsGeofenceHardware$Stub;->addCircularHardwareGeofence(IDDDIIII)Z

    #@5a
    move-result v15

    #@5b
    .line 78
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e
    .line 79
    if-eqz v15, :cond_1

    #@60
    const/4 v2, 0x1

    #@61
    :goto_1
    move-object/from16 v0, p3

    #@63
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@66
    .line 80
    const/4 v2, 0x1

    #@67
    return v2

    #@68
    .line 79
    :cond_1
    const/4 v2, 0x0

    #@69
    goto :goto_1

    #@6a
    .line 84
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":D
    .end local v6    # "_arg2":D
    .end local v8    # "_arg3":D
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":I
    .end local v13    # "_arg7":I
    .end local v15    # "_result":Z
    :sswitch_3
    const-string/jumbo v2, "android.location.IGpsGeofenceHardware"

    #@6d
    move-object/from16 v0, p2

    #@6f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v3

    #@76
    .line 87
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@78
    invoke-virtual {v0, v3}, Landroid/location/IGpsGeofenceHardware$Stub;->removeHardwareGeofence(I)Z

    #@7b
    move-result v15

    #@7c
    .line 88
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f
    .line 89
    if-eqz v15, :cond_2

    #@81
    const/4 v2, 0x1

    #@82
    :goto_2
    move-object/from16 v0, p3

    #@84
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@87
    .line 90
    const/4 v2, 0x1

    #@88
    return v2

    #@89
    .line 89
    :cond_2
    const/4 v2, 0x0

    #@8a
    goto :goto_2

    #@8b
    .line 94
    .end local v3    # "_arg0":I
    .end local v15    # "_result":Z
    :sswitch_4
    const-string/jumbo v2, "android.location.IGpsGeofenceHardware"

    #@8e
    move-object/from16 v0, p2

    #@90
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@93
    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@96
    move-result v3

    #@97
    .line 97
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@99
    invoke-virtual {v0, v3}, Landroid/location/IGpsGeofenceHardware$Stub;->pauseHardwareGeofence(I)Z

    #@9c
    move-result v15

    #@9d
    .line 98
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a0
    .line 99
    if-eqz v15, :cond_3

    #@a2
    const/4 v2, 0x1

    #@a3
    :goto_3
    move-object/from16 v0, p3

    #@a5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@a8
    .line 100
    const/4 v2, 0x1

    #@a9
    return v2

    #@aa
    .line 99
    :cond_3
    const/4 v2, 0x0

    #@ab
    goto :goto_3

    #@ac
    .line 104
    .end local v3    # "_arg0":I
    .end local v15    # "_result":Z
    :sswitch_5
    const-string/jumbo v2, "android.location.IGpsGeofenceHardware"

    #@af
    move-object/from16 v0, p2

    #@b1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b4
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v3

    #@b8
    .line 108
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bb
    move-result v14

    #@bc
    .line 109
    .local v14, "_arg1":I
    move-object/from16 v0, p0

    #@be
    invoke-virtual {v0, v3, v14}, Landroid/location/IGpsGeofenceHardware$Stub;->resumeHardwareGeofence(II)Z

    #@c1
    move-result v15

    #@c2
    .line 110
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c5
    .line 111
    if-eqz v15, :cond_4

    #@c7
    const/4 v2, 0x1

    #@c8
    :goto_4
    move-object/from16 v0, p3

    #@ca
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@cd
    .line 112
    const/4 v2, 0x1

    #@ce
    return v2

    #@cf
    .line 111
    :cond_4
    const/4 v2, 0x0

    #@d0
    goto :goto_4

    #@d1
    .line 43
    nop

    #@d2
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
