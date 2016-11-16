.class public abstract Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;
.super Landroid/os/Binder;
.source "IActivityRecognitionHardwareClient.java"

# interfaces
.implements Landroid/hardware/location/IActivityRecognitionHardwareClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IActivityRecognitionHardwareClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IActivityRecognitionHardwareClient"

.field static final TRANSACTION_onAvailabilityChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 22
    const-string/jumbo v0, "android.hardware.location.IActivityRecognitionHardwareClient"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    if-nez p0, :cond_0

    #@3
    .line 31
    return-object v1

    #@4
    .line 33
    :cond_0
    const-string/jumbo v1, "android.hardware.location.IActivityRecognitionHardwareClient"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/location/IActivityRecognitionHardwareClient;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 35
    check-cast v0, Landroid/hardware/location/IActivityRecognitionHardwareClient;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v3, 0x1

    #@1
    .line 45
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 49
    :sswitch_0
    const-string/jumbo v2, "android.hardware.location.IActivityRecognitionHardwareClient"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 50
    return v3

    #@10
    .line 54
    :sswitch_1
    const-string/jumbo v2, "android.hardware.location.IActivityRecognitionHardwareClient"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    const/4 v0, 0x1

    #@1d
    .line 58
    .local v0, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@20
    move-result-object v2

    #@21
    invoke-static {v2}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardware;

    #@24
    move-result-object v1

    #@25
    .line 59
    .local v1, "_arg1":Landroid/hardware/location/IActivityRecognitionHardware;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;->onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V

    #@28
    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b
    .line 61
    return v3

    #@2c
    .line 56
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/hardware/location/IActivityRecognitionHardware;
    :cond_0
    const/4 v0, 0x0

    #@2d
    .restart local v0    # "_arg0":Z
    goto :goto_0

    #@2e
    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
