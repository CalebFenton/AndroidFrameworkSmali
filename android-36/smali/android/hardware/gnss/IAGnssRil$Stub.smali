.class public abstract Landroid/hardware/gnss/IAGnssRil$Stub;
.super Landroid/os/Binder;
.source "IAGnssRil.java"

# interfaces
.implements Landroid/hardware/gnss/IAGnssRil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnssRil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IAGnssRil$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_setCallback:I = 0x1

.field static final blacklist TRANSACTION_setRefLocation:I = 0x2

.field static final blacklist TRANSACTION_setSetId:I = 0x3

.field static final blacklist TRANSACTION_updateNetworkState:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnssRil$Stub;->markVintfStability()V

    .line 57
    sget-object v0, Landroid/hardware/gnss/IAGnssRil$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IAGnssRil$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IAGnssRil;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IAGnssRil$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IAGnssRil;

    if-eqz v1, :cond_14

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IAGnssRil;

    return-object v1

    .line 72
    :cond_14
    new-instance v1, Landroid/hardware/gnss/IAGnssRil$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IAGnssRil$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 81
    sparse-switch p0, :sswitch_data_18

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 101
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 105
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 97
    :sswitch_b
    const-string v0, "updateNetworkState"

    return-object v0

    .line 93
    :sswitch_e
    const-string v0, "setSetId"

    return-object v0

    .line 89
    :sswitch_11
    const-string v0, "setRefLocation"

    return-object v0

    .line 85
    :sswitch_14
    const-string v0, "setCallback"

    return-object v0

    nop

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_11
        0x3 -> :sswitch_e
        0x4 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 319
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 116
    invoke-static {p1}, Landroid/hardware/gnss/IAGnssRil$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 120
    sget-object v0, Landroid/hardware/gnss/IAGnssRil$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 121
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v2

    .line 128
    :cond_16
    if-ne p1, v1, :cond_23

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnssRil$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return v2

    .line 133
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnssRil$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v2

    .line 138
    :cond_33
    packed-switch p1, :pswitch_data_84

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 172
    :pswitch_3b
    sget-object v1, Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;

    .line 173
    .local v1, "_arg0":Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IAGnssRil$Stub;->updateNetworkState(Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    goto :goto_83

    .line 161
    .end local v1    # "_arg0":Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v1, v3}, Landroid/hardware/gnss/IAGnssRil$Stub;->setSetId(ILjava/lang/String;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    goto :goto_83

    .line 152
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_5f
    sget-object v1, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;

    .line 153
    .local v1, "_arg0":Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IAGnssRil$Stub;->setRefLocation(Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    goto :goto_83

    .line 143
    .end local v1    # "_arg0":Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/IAGnssRilCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IAGnssRilCallback;

    move-result-object v1

    .line 144
    .local v1, "_arg0":Landroid/hardware/gnss/IAGnssRilCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IAGnssRil$Stub;->setCallback(Landroid/hardware/gnss/IAGnssRilCallback;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    nop

    .line 183
    .end local v1    # "_arg0":Landroid/hardware/gnss/IAGnssRilCallback;
    :goto_83
    return v2

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_71
        :pswitch_5f
        :pswitch_4d
        :pswitch_3b
    .end packed-switch
.end method
