.class public abstract Landroid/hardware/radio/ims/IRadioImsIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioImsIndication.java"

# interfaces
.implements Landroid/hardware/radio/ims/IRadioImsIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ims/IRadioImsIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ims/IRadioImsIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_notifyAnbr:I = 0x2

.field static final blacklist TRANSACTION_onConnectionSetupFailure:I = 0x1

.field static final blacklist TRANSACTION_triggerImsDeregistration:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->markVintfStability()V

    .line 89
    sget-object v0, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioImsIndication;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 97
    if-nez p0, :cond_4

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_4
    sget-object v0, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/ims/IRadioImsIndication;

    if-eqz v1, :cond_14

    .line 102
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/ims/IRadioImsIndication;

    return-object v1

    .line 104
    :cond_14
    new-instance v1, Landroid/hardware/radio/ims/IRadioImsIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 108
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    sget-object v0, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 113
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v2

    .line 120
    :cond_16
    if-ne p1, v1, :cond_23

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return v2

    .line 125
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v2

    .line 130
    :cond_33
    packed-switch p1, :pswitch_data_7a

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 161
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->triggerImsDeregistration(II)V

    .line 166
    goto :goto_78

    .line 147
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 151
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 153
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 154
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->notifyAnbr(IIII)V

    .line 156
    goto :goto_78

    .line 135
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 139
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/hardware/radio/ims/ConnectionFailureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/ims/ConnectionFailureInfo;

    .line 140
    .local v4, "_arg2":Landroid/hardware/radio/ims/ConnectionFailureInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->onConnectionSetupFailure(IILandroid/hardware/radio/ims/ConnectionFailureInfo;)V

    .line 142
    nop

    .line 173
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/radio/ims/ConnectionFailureInfo;
    :goto_78
    return v2

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_61
        :pswitch_4a
        :pswitch_3b
    .end packed-switch
.end method
