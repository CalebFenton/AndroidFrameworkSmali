.class public abstract Landroid/hardware/tv/tuner/ILnb$Stub;
.super Landroid/os/Binder;
.source "ILnb.java"

# interfaces
.implements Landroid/hardware/tv/tuner/ILnb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/ILnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/ILnb$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x6

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_sendDiseqcMessage:I = 0x5

.field static final blacklist TRANSACTION_setCallback:I = 0x1

.field static final blacklist TRANSACTION_setSatellitePosition:I = 0x4

.field static final blacklist TRANSACTION_setTone:I = 0x3

.field static final blacklist TRANSACTION_setVoltage:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ILnb$Stub;->markVintfStability()V

    .line 63
    sget-object v0, Landroid/hardware/tv/tuner/ILnb$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/ILnb$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/ILnb;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/ILnb$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/tv/tuner/ILnb;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/ILnb;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Landroid/hardware/tv/tuner/ILnb$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/ILnb$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
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

    .line 86
    sget-object v0, Landroid/hardware/tv/tuner/ILnb$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 91
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v2

    .line 94
    :cond_16
    if-ne p1, v1, :cond_23

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ILnb$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return v2

    .line 99
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ILnb$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v2

    .line 104
    :cond_33
    packed-switch p1, :pswitch_data_8e

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 153
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ILnb$Stub;->close()V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_8c

    .line 145
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 146
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/ILnb$Stub;->sendDiseqcMessage([B)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto :goto_8c

    .line 136
    .end local v1    # "_arg0":[B
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/ILnb$Stub;->setSatellitePosition(I)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    goto :goto_8c

    .line 127
    .end local v1    # "_arg0":I
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/ILnb$Stub;->setTone(I)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    goto :goto_8c

    .line 118
    .end local v1    # "_arg0":I
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 119
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/ILnb$Stub;->setVoltage(I)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    goto :goto_8c

    .line 109
    .end local v1    # "_arg0":I
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/tv/tuner/ILnbCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/ILnbCallback;

    move-result-object v1

    .line 110
    .local v1, "_arg0":Landroid/hardware/tv/tuner/ILnbCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/ILnb$Stub;->setCallback(Landroid/hardware/tv/tuner/ILnbCallback;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    nop

    .line 162
    .end local v1    # "_arg0":Landroid/hardware/tv/tuner/ILnbCallback;
    :goto_8c
    return v2

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_6c
        :pswitch_5e
        :pswitch_50
        :pswitch_42
        :pswitch_3b
    .end packed-switch
.end method
