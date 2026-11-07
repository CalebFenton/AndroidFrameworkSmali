.class public abstract Landroid/hardware/usb/IUsbSerialReader$Stub;
.super Landroid/os/Binder;
.source "IUsbSerialReader.java"

# interfaces
.implements Landroid/hardware/usb/IUsbSerialReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbSerialReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbSerialReader$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getSerial:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "android.hardware.usb.IUsbSerialReader"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/IUsbSerialReader$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbSerialReader;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_4
    const-string v0, "android.hardware.usb.IUsbSerialReader"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/usb/IUsbSerialReader;

    if-eqz v1, :cond_14

    .line 46
    move-object v1, v0

    check-cast v1, Landroid/hardware/usb/IUsbSerialReader;

    return-object v1

    .line 48
    :cond_14
    new-instance v1, Landroid/hardware/usb/IUsbSerialReader$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/IUsbSerialReader$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 57
    packed-switch p0, :pswitch_data_8

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 61
    :pswitch_5
    const-string v0, "getSerial"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 72
    invoke-static {p1}, Landroid/hardware/usb/IUsbSerialReader$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const-string v0, "android.hardware.usb.IUsbSerialReader"

    .line 77
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 81
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    .line 84
    :cond_16
    packed-switch p1, :pswitch_data_32

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 89
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 91
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbSerialReader$Stub;->getSerial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    nop

    .line 101
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    return v1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
