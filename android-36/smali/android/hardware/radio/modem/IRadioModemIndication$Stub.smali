.class public abstract Landroid/hardware/radio/modem/IRadioModemIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioModemIndication.java"

# interfaces
.implements Landroid/hardware/radio/modem/IRadioModemIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/IRadioModemIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/modem/IRadioModemIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_hardwareConfigChanged:I = 0x1

.field static final blacklist TRANSACTION_modemReset:I = 0x2

.field static final blacklist TRANSACTION_onImeiMappingChanged:I = 0x6

.field static final blacklist TRANSACTION_radioCapabilityIndication:I = 0x3

.field static final blacklist TRANSACTION_radioStateChanged:I = 0x4

.field static final blacklist TRANSACTION_rilConnected:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 113
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 114
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->markVintfStability()V

    .line 115
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModemIndication;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 123
    if-nez p0, :cond_4

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_4
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 127
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/modem/IRadioModemIndication;

    if-eqz v1, :cond_14

    .line 128
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/modem/IRadioModemIndication;

    return-object v1

    .line 130
    :cond_14
    new-instance v1, Landroid/hardware/radio/modem/IRadioModemIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 134
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

    .line 138
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 139
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 143
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return v2

    .line 146
    :cond_16
    if-ne p1, v1, :cond_23

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return v2

    .line 151
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return v2

    .line 156
    :cond_33
    packed-switch p1, :pswitch_data_9e

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 209
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .local v1, "_arg0":I
    sget-object v3, Landroid/hardware/radio/modem/ImeiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/modem/ImeiInfo;

    .line 212
    .local v3, "_arg1":Landroid/hardware/radio/modem/ImeiInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->onImeiMappingChanged(ILandroid/hardware/radio/modem/ImeiInfo;)V

    .line 214
    goto :goto_9d

    .line 201
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/modem/ImeiInfo;
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v1}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->rilConnected(I)V

    .line 204
    goto :goto_9d

    .line 191
    .end local v1    # "_arg0":I
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->radioStateChanged(II)V

    .line 196
    goto :goto_9d

    .line 181
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/modem/RadioCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/modem/RadioCapability;

    .line 184
    .local v3, "_arg1":Landroid/hardware/radio/modem/RadioCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/modem/RadioCapability;)V

    .line 186
    goto :goto_9d

    .line 171
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/modem/RadioCapability;
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 176
    goto :goto_9d

    .line 161
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/modem/HardwareConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/modem/HardwareConfig;

    .line 164
    .local v3, "_arg1":[Landroid/hardware/radio/modem/HardwareConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->hardwareConfigChanged(I[Landroid/hardware/radio/modem/HardwareConfig;)V

    .line 166
    nop

    .line 221
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/modem/HardwareConfig;
    :goto_9d
    return v2

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_7b
        :pswitch_68
        :pswitch_59
        :pswitch_4e
        :pswitch_3b
    .end packed-switch
.end method
