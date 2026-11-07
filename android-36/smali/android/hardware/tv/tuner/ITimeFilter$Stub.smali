.class public abstract Landroid/hardware/tv/tuner/ITimeFilter$Stub;
.super Landroid/os/Binder;
.source "ITimeFilter.java"

# interfaces
.implements Landroid/hardware/tv/tuner/ITimeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/ITimeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/ITimeFilter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearTimeStamp:I = 0x2

.field static final blacklist TRANSACTION_close:I = 0x5

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSourceTime:I = 0x4

.field static final blacklist TRANSACTION_getTimeStamp:I = 0x3

.field static final blacklist TRANSACTION_setTimeStamp:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->markVintfStability()V

    .line 62
    sget-object v0, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/ITimeFilter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/tv/tuner/ITimeFilter;

    if-eqz v1, :cond_14

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/ITimeFilter;

    return-object v1

    .line 77
    :cond_14
    new-instance v1, Landroid/hardware/tv/tuner/ITimeFilter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    sget-object v0, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 90
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v2

    .line 93
    :cond_16
    if-ne p1, v1, :cond_23

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return v2

    .line 98
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v2

    .line 103
    :cond_33
    packed-switch p1, :pswitch_data_6e

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 136
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->close()V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    goto :goto_6d

    .line 129
    :pswitch_42
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->getSourceTime()J

    move-result-wide v3

    .line 130
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    goto :goto_6d

    .line 122
    .end local v3    # "_result":J
    :pswitch_4d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->getTimeStamp()J

    move-result-wide v3

    .line 123
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    goto :goto_6d

    .line 116
    .end local v3    # "_result":J
    :pswitch_58
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->clearTimeStamp()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    goto :goto_6d

    .line 108
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 109
    .local v3, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v3, v4}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->setTimeStamp(J)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    nop

    .line 145
    .end local v3    # "_arg0":J
    :goto_6d
    return v2

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_58
        :pswitch_4d
        :pswitch_42
        :pswitch_3b
    .end packed-switch
.end method
