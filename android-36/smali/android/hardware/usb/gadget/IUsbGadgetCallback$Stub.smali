.class public abstract Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;
.super Landroid/os/Binder;
.source "IUsbGadgetCallback.java"

# interfaces
.implements Landroid/hardware/usb/gadget/IUsbGadgetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/gadget/IUsbGadgetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCurrentUsbFunctionsCb:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getUsbSpeedCb:I = 0x3

.field static final blacklist TRANSACTION_resetCb:I = 0x4

.field static final blacklist TRANSACTION_setCurrentUsbFunctionsCb:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->markVintfStability()V

    .line 56
    sget-object v0, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    sget-object v0, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/usb/gadget/IUsbGadgetCallback;

    if-eqz v1, :cond_14

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/hardware/usb/gadget/IUsbGadgetCallback;

    return-object v1

    .line 71
    :cond_14
    new-instance v1, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    sget-object v6, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 80
    .local v6, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    if-gt p1, v1, :cond_d

    .line 81
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 84
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v7

    .line 87
    :cond_16
    if-ne p1, v1, :cond_23

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return v7

    .line 92
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v7

    .line 97
    :cond_33
    packed-switch p1, :pswitch_data_82

    .line 145
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 136
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 138
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 139
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->resetCb(IJ)V

    .line 141
    goto :goto_81

    .line 126
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 129
    .restart local v2    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->getUsbSpeedCb(IJ)V

    .line 131
    goto :goto_81

    .line 114
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 116
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 118
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 119
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->getCurrentUsbFunctionsCb(JIJ)V

    .line 121
    goto :goto_81

    .line 102
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 104
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 106
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 107
    .restart local v4    # "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->setCurrentUsbFunctionsCb(JIJ)V

    .line 109
    nop

    .line 148
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    :goto_81
    return v7

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_59
        :pswitch_4a
        :pswitch_3b
    .end packed-switch
.end method
