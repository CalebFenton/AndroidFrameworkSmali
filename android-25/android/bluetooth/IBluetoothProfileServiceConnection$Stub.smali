.class public abstract Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;
.super Landroid/os/Binder;
.source "IBluetoothProfileServiceConnection.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothProfileServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothProfileServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothProfileServiceConnection"

.field static final TRANSACTION_onServiceConnected:I = 0x1

.field static final TRANSACTION_onServiceDisconnected:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothProfileServiceConnection"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothProfileServiceConnection;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothProfileServiceConnection"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothProfileServiceConnection"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v3

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v2, "android.bluetooth.IBluetoothProfileServiceConnection"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 55
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/content/ComponentName;

    #@24
    .line 61
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@27
    move-result-object v1

    #@28
    .line 62
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    #@2b
    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e
    .line 64
    return v3

    #@2f
    .line 58
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :cond_0
    const/4 v0, 0x0

    #@30
    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    #@31
    .line 68
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2
    const-string/jumbo v2, "android.bluetooth.IBluetoothProfileServiceConnection"

    #@34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_1

    #@3d
    .line 71
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3f
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroid/content/ComponentName;

    #@45
    .line 76
    :goto_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;->onServiceDisconnected(Landroid/content/ComponentName;)V

    #@48
    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b
    .line 78
    return v3

    #@4c
    .line 74
    :cond_1
    const/4 v0, 0x0

    #@4d
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    #@4e
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
