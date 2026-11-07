.class public abstract Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothManagerCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothManagerCallback"

.field static final blacklist TRANSACTION_onBluetoothOff:I = 0x4

.field static final blacklist TRANSACTION_onBluetoothOn:I = 0x3

.field static final blacklist TRANSACTION_onBluetoothServiceDown:I = 0x2

.field static final blacklist TRANSACTION_onBluetoothServiceUp:I = 0x1


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.bluetooth.IBluetoothManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothManagerCallback;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothManagerCallback;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_12

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string v0, "onBluetoothOff"

    return-object v0

    .line 80
    :pswitch_8
    const-string v0, "onBluetoothOn"

    return-object v0

    .line 76
    :pswitch_b
    const-string v0, "onBluetoothServiceDown"

    return-object v0

    .line 72
    :pswitch_e
    const-string v0, "onBluetoothServiceUp"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 209
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    const-string v0, "android.bluetooth.IBluetoothManagerCallback"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_16
    packed-switch p1, :pswitch_data_36

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 129
    :pswitch_1e
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->onBluetoothOff()V

    .line 130
    goto :goto_35

    .line 124
    :pswitch_22
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->onBluetoothOn()V

    .line 125
    goto :goto_35

    .line 119
    :pswitch_26
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->onBluetoothServiceDown()V

    .line 120
    goto :goto_35

    .line 112
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 113
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->onBluetoothServiceUp(Landroid/os/IBinder;)V

    .line 115
    nop

    .line 137
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :goto_35
    return v1

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
