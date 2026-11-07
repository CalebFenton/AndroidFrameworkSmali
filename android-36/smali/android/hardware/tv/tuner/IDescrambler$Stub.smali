.class public abstract Landroid/hardware/tv/tuner/IDescrambler$Stub;
.super Landroid/os/Binder;
.source "IDescrambler.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IDescrambler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IDescrambler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IDescrambler$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addPid:I = 0x3

.field static final blacklist TRANSACTION_close:I = 0x5

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_removePid:I = 0x4

.field static final blacklist TRANSACTION_setDemuxSource:I = 0x1

.field static final blacklist TRANSACTION_setKeyToken:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->markVintfStability()V

    .line 60
    sget-object v0, Landroid/hardware/tv/tuner/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IDescrambler;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/tv/tuner/IDescrambler;

    if-eqz v1, :cond_14

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/IDescrambler;

    return-object v1

    .line 75
    :cond_14
    new-instance v1, Landroid/hardware/tv/tuner/IDescrambler$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/IDescrambler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 79
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

    .line 83
    sget-object v0, Landroid/hardware/tv/tuner/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 84
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v2

    .line 91
    :cond_16
    if-ne p1, v1, :cond_23

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v2

    .line 96
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v2

    .line 101
    :cond_33
    packed-switch p1, :pswitch_data_94

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 145
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->close()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    goto :goto_92

    .line 135
    :pswitch_42
    sget-object v1, Landroid/hardware/tv/tuner/DemuxPid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxPid;

    .line 137
    .local v1, "_arg0":Landroid/hardware/tv/tuner/DemuxPid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/tv/tuner/IFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object v3

    .line 138
    .local v3, "_arg1":Landroid/hardware/tv/tuner/IFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v1, v3}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->removePid(Landroid/hardware/tv/tuner/DemuxPid;Landroid/hardware/tv/tuner/IFilter;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    goto :goto_92

    .line 124
    .end local v1    # "_arg0":Landroid/hardware/tv/tuner/DemuxPid;
    .end local v3    # "_arg1":Landroid/hardware/tv/tuner/IFilter;
    :pswitch_5c
    sget-object v1, Landroid/hardware/tv/tuner/DemuxPid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxPid;

    .line 126
    .restart local v1    # "_arg0":Landroid/hardware/tv/tuner/DemuxPid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/tv/tuner/IFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object v3

    .line 127
    .restart local v3    # "_arg1":Landroid/hardware/tv/tuner/IFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v1, v3}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->addPid(Landroid/hardware/tv/tuner/DemuxPid;Landroid/hardware/tv/tuner/IFilter;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    goto :goto_92

    .line 115
    .end local v1    # "_arg0":Landroid/hardware/tv/tuner/DemuxPid;
    .end local v3    # "_arg1":Landroid/hardware/tv/tuner/IFilter;
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 116
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->setKeyToken([B)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    goto :goto_92

    .line 106
    .end local v1    # "_arg0":[B
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IDescrambler$Stub;->setDemuxSource(I)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    nop

    .line 154
    .end local v1    # "_arg0":I
    :goto_92
    return v2

    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_84
        :pswitch_76
        :pswitch_5c
        :pswitch_42
        :pswitch_3b
    .end packed-switch
.end method
