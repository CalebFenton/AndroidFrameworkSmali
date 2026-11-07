.class public abstract Landroid/hardware/tv/tuner/IDemux$Stub;
.super Landroid/os/Binder;
.source "IDemux.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IDemux;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IDemux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IDemux$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x6

.field static final blacklist TRANSACTION_connectCiCam:I = 0x8

.field static final blacklist TRANSACTION_disconnectCiCam:I = 0x9

.field static final blacklist TRANSACTION_getAvSyncHwId:I = 0x4

.field static final blacklist TRANSACTION_getAvSyncTime:I = 0x5

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_openDvr:I = 0x7

.field static final blacklist TRANSACTION_openFilter:I = 0x2

.field static final blacklist TRANSACTION_openTimeFilter:I = 0x3

.field static final blacklist TRANSACTION_setFrontendDataSource:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDemux$Stub;->markVintfStability()V

    .line 77
    sget-object v0, Landroid/hardware/tv/tuner/IDemux$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IDemux$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IDemux;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/IDemux$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/tv/tuner/IDemux;

    if-eqz v1, :cond_14

    .line 90
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/IDemux;

    return-object v1

    .line 92
    :cond_14
    new-instance v1, Landroid/hardware/tv/tuner/IDemux$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/IDemux$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 96
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

    .line 100
    sget-object v0, Landroid/hardware/tv/tuner/IDemux$Stub;->DESCRIPTOR:Ljava/lang/String;

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
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDemux$Stub;->getInterfaceVersion()I

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
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDemux$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v2

    .line 118
    :cond_33
    packed-switch p1, :pswitch_data_dc

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 201
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDemux$Stub;->disconnectCiCam()V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto/16 :goto_da

    .line 193
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 194
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IDemux$Stub;->connectCiCam(I)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto/16 :goto_da

    .line 179
    .end local v1    # "_arg0":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 181
    .local v1, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 183
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/tv/tuner/IDvrCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IDvrCallback;

    move-result-object v4

    .line 184
    .local v4, "_arg2":Landroid/hardware/tv/tuner/IDvrCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/tv/tuner/IDemux$Stub;->openDvr(BILandroid/hardware/tv/tuner/IDvrCallback;)Landroid/hardware/tv/tuner/IDvr;

    move-result-object v5

    .line 186
    .local v5, "_result":Landroid/hardware/tv/tuner/IDvr;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 188
    goto :goto_da

    .line 172
    .end local v1    # "_arg0":B
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/tv/tuner/IDvrCallback;
    .end local v5    # "_result":Landroid/hardware/tv/tuner/IDvr;
    :pswitch_70
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDemux$Stub;->close()V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    goto :goto_da

    .line 163
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IDemux$Stub;->getAvSyncTime(I)J

    move-result-wide v3

    .line 166
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    goto :goto_da

    .line 153
    .end local v1    # "_arg0":I
    .end local v3    # "_result":J
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/tv/tuner/IFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object v1

    .line 154
    .local v1, "_arg0":Landroid/hardware/tv/tuner/IFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IDemux$Stub;->getAvSyncHwId(Landroid/hardware/tv/tuner/IFilter;)I

    move-result v3

    .line 156
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    goto :goto_da

    .line 145
    .end local v1    # "_arg0":Landroid/hardware/tv/tuner/IFilter;
    .end local v3    # "_result":I
    :pswitch_9f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDemux$Stub;->openTimeFilter()Landroid/hardware/tv/tuner/ITimeFilter;

    move-result-object v1

    .line 146
    .local v1, "_result":Landroid/hardware/tv/tuner/ITimeFilter;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 148
    goto :goto_da

    .line 132
    .end local v1    # "_result":Landroid/hardware/tv/tuner/ITimeFilter;
    :pswitch_aa
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterType;

    .line 134
    .local v1, "_arg0":Landroid/hardware/tv/tuner/DemuxFilterType;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 136
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/tv/tuner/IFilterCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilterCallback;

    move-result-object v4

    .line 137
    .local v4, "_arg2":Landroid/hardware/tv/tuner/IFilterCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/tv/tuner/IDemux$Stub;->openFilter(Landroid/hardware/tv/tuner/DemuxFilterType;ILandroid/hardware/tv/tuner/IFilterCallback;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object v5

    .line 139
    .local v5, "_result":Landroid/hardware/tv/tuner/IFilter;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 141
    goto :goto_da

    .line 123
    .end local v1    # "_arg0":Landroid/hardware/tv/tuner/DemuxFilterType;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/tv/tuner/IFilterCallback;
    .end local v5    # "_result":Landroid/hardware/tv/tuner/IFilter;
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IDemux$Stub;->setFrontendDataSource(I)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    nop

    .line 210
    .end local v1    # "_arg0":I
    :goto_da
    return v2

    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_aa
        :pswitch_9f
        :pswitch_89
        :pswitch_77
        :pswitch_70
        :pswitch_52
        :pswitch_43
        :pswitch_3b
    .end packed-switch
.end method
