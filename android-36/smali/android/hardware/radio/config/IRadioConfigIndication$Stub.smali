.class public abstract Landroid/hardware/radio/config/IRadioConfigIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioConfigIndication.java"

# interfaces
.implements Landroid/hardware/radio/config/IRadioConfigIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/config/IRadioConfigIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_onSimultaneousCallingSupportChanged:I = 0x2

.field static final blacklist TRANSACTION_simSlotsStatusChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigIndication$Stub;->markVintfStability()V

    .line 77
    sget-object v0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/config/IRadioConfigIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/config/IRadioConfigIndication;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_4
    sget-object v0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/config/IRadioConfigIndication;

    if-eqz v1, :cond_14

    .line 90
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/config/IRadioConfigIndication;

    return-object v1

    .line 92
    :cond_14
    new-instance v1, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 96
    return-object p0
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

    .line 100
    sget-object v0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v2

    .line 108
    :cond_16
    if-ne p1, v1, :cond_23

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigIndication$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return v2

    .line 113
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v2

    .line 118
    :cond_33
    packed-switch p1, :pswitch_data_5a

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 133
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 134
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v1}, Landroid/hardware/radio/config/IRadioConfigIndication$Stub;->onSimultaneousCallingSupportChanged([I)V

    .line 136
    goto :goto_59

    .line 123
    .end local v1    # "_arg0":[I
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .local v1, "_arg0":I
    sget-object v3, Landroid/hardware/radio/config/SimSlotStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/config/SimSlotStatus;

    .line 126
    .local v3, "_arg1":[Landroid/hardware/radio/config/SimSlotStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/config/IRadioConfigIndication$Stub;->simSlotsStatusChanged(I[Landroid/hardware/radio/config/SimSlotStatus;)V

    .line 128
    nop

    .line 143
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/config/SimSlotStatus;
    :goto_59
    return v2

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_46
        :pswitch_3b
    .end packed-switch
.end method
