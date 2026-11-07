.class public abstract Landroid/hardware/tv/tuner/IDvr$Stub;
.super Landroid/os/Binder;
.source "IDvr.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IDvr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IDvr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IDvr$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_attachFilter:I = 0x3

.field static final blacklist TRANSACTION_close:I = 0x8

.field static final blacklist TRANSACTION_configure:I = 0x2

.field static final blacklist TRANSACTION_detachFilter:I = 0x4

.field static final blacklist TRANSACTION_flush:I = 0x7

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getQueueDesc:I = 0x1

.field static final blacklist TRANSACTION_setStatusCheckIntervalHint:I = 0x9

.field static final blacklist TRANSACTION_start:I = 0x5

.field static final blacklist TRANSACTION_stop:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->markVintfStability()V

    .line 72
    sget-object v0, Landroid/hardware/tv/tuner/IDvr$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IDvr$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IDvr;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_4

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/IDvr$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/tv/tuner/IDvr;

    if-eqz v1, :cond_14

    .line 85
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/IDvr;

    return-object v1

    .line 87
    :cond_14
    new-instance v1, Landroid/hardware/tv/tuner/IDvr$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/IDvr$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 91
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

    .line 95
    sget-object v0, Landroid/hardware/tv/tuner/IDvr$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v2

    .line 103
    :cond_16
    if-ne p1, v1, :cond_23

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v2

    .line 108
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v2

    .line 113
    :cond_33
    packed-switch p1, :pswitch_data_ae

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 179
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 180
    .local v3, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v3, v4}, Landroid/hardware/tv/tuner/IDvr$Stub;->setStatusCheckIntervalHint(J)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto :goto_ad

    .line 172
    .end local v3    # "_arg0":J
    :pswitch_49
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->close()V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    goto :goto_ad

    .line 166
    :pswitch_50
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->flush()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    goto :goto_ad

    .line 160
    :pswitch_57
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->stop()V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    goto :goto_ad

    .line 154
    :pswitch_5e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->start()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    goto :goto_ad

    .line 146
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/tv/tuner/IFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object v1

    .line 147
    .local v1, "_arg0":Landroid/hardware/tv/tuner/IFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IDvr$Stub;->detachFilter(Landroid/hardware/tv/tuner/IFilter;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_ad

    .line 137
    .end local v1    # "_arg0":Landroid/hardware/tv/tuner/IFilter;
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/tv/tuner/IFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object v1

    .line 138
    .restart local v1    # "_arg0":Landroid/hardware/tv/tuner/IFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IDvr$Stub;->attachFilter(Landroid/hardware/tv/tuner/IFilter;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    goto :goto_ad

    .line 128
    .end local v1    # "_arg0":Landroid/hardware/tv/tuner/IFilter;
    :pswitch_89
    sget-object v1, Landroid/hardware/tv/tuner/DvrSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DvrSettings;

    .line 129
    .local v1, "_arg0":Landroid/hardware/tv/tuner/DvrSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IDvr$Stub;->configure(Landroid/hardware/tv/tuner/DvrSettings;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    goto :goto_ad

    .line 118
    .end local v1    # "_arg0":Landroid/hardware/tv/tuner/DvrSettings;
    :pswitch_9b
    new-instance v1, Landroid/hardware/common/fmq/MQDescriptor;

    invoke-direct {v1}, Landroid/hardware/common/fmq/MQDescriptor;-><init>()V

    .line 119
    .local v1, "_arg0":Landroid/hardware/common/fmq/MQDescriptor;, "Landroid/hardware/common/fmq/MQDescriptor<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IDvr$Stub;->getQueueDesc(Landroid/hardware/common/fmq/MQDescriptor;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 123
    nop

    .line 190
    .end local v1    # "_arg0":Landroid/hardware/common/fmq/MQDescriptor;, "Landroid/hardware/common/fmq/MQDescriptor<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    :goto_ad
    return v2

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_89
        :pswitch_77
        :pswitch_65
        :pswitch_5e
        :pswitch_57
        :pswitch_50
        :pswitch_49
        :pswitch_3b
    .end packed-switch
.end method
