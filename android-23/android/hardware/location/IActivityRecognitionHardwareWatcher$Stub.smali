.class public abstract Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;
.super Landroid/os/Binder;
.source "IActivityRecognitionHardwareWatcher.java"

# interfaces
.implements Landroid/hardware/location/IActivityRecognitionHardwareWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IActivityRecognitionHardwareWatcher"

.field static final TRANSACTION_onInstanceChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.hardware.location.IActivityRecognitionHardwareWatcher"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    if-nez p0, :cond_0

    #@3
    .line 30
    return-object v1

    #@4
    .line 32
    :cond_0
    const-string/jumbo v1, "android.hardware.location.IActivityRecognitionHardwareWatcher"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v2, 0x1

    #@1
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 48
    :sswitch_0
    const-string/jumbo v1, "android.hardware.location.IActivityRecognitionHardwareWatcher"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 49
    return v2

    #@10
    .line 53
    :sswitch_1
    const-string/jumbo v1, "android.hardware.location.IActivityRecognitionHardwareWatcher"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardware;

    #@1d
    move-result-object v0

    #@1e
    .line 56
    .local v0, "_arg0":Landroid/hardware/location/IActivityRecognitionHardware;
    invoke-virtual {p0, v0}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;->onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V

    #@21
    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24
    .line 58
    return v2

    #@25
    .line 44
    nop

    #@26
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
