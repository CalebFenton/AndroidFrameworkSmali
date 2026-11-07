.class public abstract Landroid/hardware/usb/gadget/IUsbGadget$Stub;
.super Landroid/os/Binder;
.source "IUsbGadget.java"

# interfaces
.implements Landroid/hardware/usb/gadget/IUsbGadget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/gadget/IUsbGadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCurrentUsbFunctions:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getUsbSpeed:I = 0x3

.field static final blacklist TRANSACTION_reset:I = 0x4

.field static final blacklist TRANSACTION_setCurrentUsbFunctions:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->markVintfStability()V

    .line 56
    sget-object v0, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/gadget/IUsbGadget;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    sget-object v0, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/usb/gadget/IUsbGadget;

    if-eqz v1, :cond_14

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/hardware/usb/gadget/IUsbGadget;

    return-object v1

    .line 71
    :cond_14
    new-instance v1, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
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
    move-object v8, p3

    sget-object v9, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 80
    .local v9, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    if-gt p1, v1, :cond_e

    .line 81
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 84
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v10

    .line 87
    :cond_17
    if-ne p1, v1, :cond_24

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return v10

    .line 92
    :cond_24
    const v1, 0xfffffe

    if-ne p1, v1, :cond_34

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v10

    .line 97
    :cond_34
    packed-switch p1, :pswitch_data_92

    .line 145
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 136
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/gadget/IUsbGadgetCallback;

    move-result-object v1

    .line 138
    .local v1, "_arg0":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 139
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->reset(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V

    .line 141
    goto :goto_91

    .line 126
    .end local v1    # "_arg0":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .end local v2    # "_arg1":J
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/gadget/IUsbGadgetCallback;

    move-result-object v1

    .line 128
    .restart local v1    # "_arg0":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 129
    .restart local v2    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->getUsbSpeed(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V

    .line 131
    goto :goto_91

    .line 116
    .end local v1    # "_arg0":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .end local v2    # "_arg1":J
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/gadget/IUsbGadgetCallback;

    move-result-object v1

    .line 118
    .restart local v1    # "_arg0":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 119
    .restart local v2    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V

    .line 121
    goto :goto_91

    .line 102
    .end local v1    # "_arg0":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .end local v2    # "_arg1":J
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 104
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/gadget/IUsbGadgetCallback;

    move-result-object v3

    .line 106
    .local v3, "_arg1":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 108
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 109
    .local v6, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/IUsbGadgetCallback;JJ)V

    .line 111
    nop

    .line 148
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":J
    :goto_91
    return v10

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_75
        :pswitch_62
        :pswitch_4f
        :pswitch_3c
    .end packed-switch
.end method
