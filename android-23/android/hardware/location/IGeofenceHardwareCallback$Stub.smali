.class public abstract Landroid/hardware/location/IGeofenceHardwareCallback$Stub;
.super Landroid/os/Binder;
.source "IGeofenceHardwareCallback.java"

# interfaces
.implements Landroid/hardware/location/IGeofenceHardwareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IGeofenceHardwareCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IGeofenceHardwareCallback"

.field static final TRANSACTION_onGeofenceAdd:I = 0x2

.field static final TRANSACTION_onGeofencePause:I = 0x4

.field static final TRANSACTION_onGeofenceRemove:I = 0x3

.field static final TRANSACTION_onGeofenceResume:I = 0x5

.field static final TRANSACTION_onGeofenceTransition:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.hardware.location.IGeofenceHardwareCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareCallback;
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
    const-string/jumbo v1, "android.hardware.location.IGeofenceHardwareCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v7, 0x1

    #@1
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v0, "android.hardware.location.IGeofenceHardwareCallback"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v7

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v0, "android.hardware.location.IGeofenceHardwareCallback"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    .line 52
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v2

    #@1e
    .line 54
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 55
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Landroid/location/Location;

    #@2c
    .line 61
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@2f
    move-result-wide v4

    #@30
    .line 63
    .local v4, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v6

    #@34
    .local v6, "_arg4":I
    move-object v0, p0

    #@35
    .line 64
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceTransition(IILandroid/location/Location;JI)V

    #@38
    .line 65
    return v7

    #@39
    .line 58
    .end local v4    # "_arg3":J
    .end local v6    # "_arg4":I
    :cond_0
    const/4 v3, 0x0

    #@3a
    .local v3, "_arg2":Landroid/location/Location;
    goto :goto_0

    #@3b
    .line 69
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/location/Location;
    :sswitch_2
    const-string/jumbo v0, "android.hardware.location.IGeofenceHardwareCallback"

    #@3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v1

    #@45
    .line 73
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v2

    #@49
    .line 74
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceAdd(II)V

    #@4c
    .line 75
    return v7

    #@4d
    .line 79
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_3
    const-string/jumbo v0, "android.hardware.location.IGeofenceHardwareCallback"

    #@50
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v1

    #@57
    .line 83
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v2

    #@5b
    .line 84
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceRemove(II)V

    #@5e
    .line 85
    return v7

    #@5f
    .line 89
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_4
    const-string/jumbo v0, "android.hardware.location.IGeofenceHardwareCallback"

    #@62
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65
    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v1

    #@69
    .line 93
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6c
    move-result v2

    #@6d
    .line 94
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofencePause(II)V

    #@70
    .line 95
    return v7

    #@71
    .line 99
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_5
    const-string/jumbo v0, "android.hardware.location.IGeofenceHardwareCallback"

    #@74
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77
    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v1

    #@7b
    .line 103
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7e
    move-result v2

    #@7f
    .line 104
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceResume(II)V

    #@82
    .line 105
    return v7

    #@83
    .line 39
    nop

    #@84
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
