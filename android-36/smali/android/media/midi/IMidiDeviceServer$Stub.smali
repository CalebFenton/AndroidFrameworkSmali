.class public abstract Landroid/media/midi/IMidiDeviceServer$Stub;
.super Landroid/os/Binder;
.source "IMidiDeviceServer.java"

# interfaces
.implements Landroid/media/midi/IMidiDeviceServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/IMidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.midi.IMidiDeviceServer"

.field static final greylist-max-o TRANSACTION_closeDevice:I = 0x4

.field static final greylist-max-o TRANSACTION_closePort:I = 0x3

.field static final greylist-max-o TRANSACTION_connectPorts:I = 0x5

.field static final greylist-max-o TRANSACTION_getDeviceInfo:I = 0x6

.field static final greylist-max-o TRANSACTION_openInputPort:I = 0x1

.field static final greylist-max-o TRANSACTION_openOutputPort:I = 0x2

.field static final greylist-max-o TRANSACTION_setDeviceInfo:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.media.midi.IMidiDeviceServer"

    invoke-virtual {p0, p0, v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    const-string v0, "android.media.midi.IMidiDeviceServer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/midi/IMidiDeviceServer;

    if-eqz v1, :cond_14

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/media/midi/IMidiDeviceServer;

    return-object v1

    .line 71
    :cond_14
    new-instance v1, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 80
    packed-switch p0, :pswitch_data_1a

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 108
    :pswitch_5
    const-string v0, "setDeviceInfo"

    return-object v0

    .line 104
    :pswitch_8
    const-string v0, "getDeviceInfo"

    return-object v0

    .line 100
    :pswitch_b
    const-string v0, "connectPorts"

    return-object v0

    .line 96
    :pswitch_e
    const-string v0, "closeDevice"

    return-object v0

    .line 92
    :pswitch_11
    const-string v0, "closePort"

    return-object v0

    .line 88
    :pswitch_14
    const-string v0, "openOutputPort"

    return-object v0

    .line 84
    :pswitch_17
    const-string v0, "openInputPort"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 351
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 119
    invoke-static {p1}, Landroid/media/midi/IMidiDeviceServer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 123
    const-string v0, "android.media.midi.IMidiDeviceServer"

    .line 124
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 125
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v1

    .line 131
    :cond_16
    packed-switch p1, :pswitch_data_92

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 195
    :pswitch_1e
    sget-object v2, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/MidiDeviceInfo;

    .line 196
    .local v2, "_arg0":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2}, Landroid/media/midi/IMidiDeviceServer$Stub;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V

    .line 198
    goto :goto_90

    .line 187
    .end local v2    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    :pswitch_2d
    invoke-virtual {p0}, Landroid/media/midi/IMidiDeviceServer$Stub;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v2

    .line 188
    .local v2, "_result":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 190
    goto :goto_90

    .line 174
    .end local v2    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 176
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 178
    .local v3, "_arg1":Ljava/io/FileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 179
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/midi/IMidiDeviceServer$Stub;->connectPorts(Landroid/os/IBinder;Ljava/io/FileDescriptor;I)I

    move-result v5

    .line 181
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    goto :goto_90

    .line 168
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/io/FileDescriptor;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_52
    invoke-virtual {p0}, Landroid/media/midi/IMidiDeviceServer$Stub;->closeDevice()V

    .line 169
    goto :goto_90

    .line 160
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 161
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Landroid/media/midi/IMidiDeviceServer$Stub;->closePort(Landroid/os/IBinder;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    goto :goto_90

    .line 148
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 150
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 151
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2, v3}, Landroid/media/midi/IMidiDeviceServer$Stub;->openOutputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 153
    .local v4, "_result":Ljava/io/FileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 155
    goto :goto_90

    .line 136
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/io/FileDescriptor;
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 138
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 139
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3}, Landroid/media/midi/IMidiDeviceServer$Stub;->openInputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 141
    .restart local v4    # "_result":Ljava/io/FileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 143
    nop

    .line 205
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/io/FileDescriptor;
    :goto_90
    return v1

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_64
        :pswitch_56
        :pswitch_52
        :pswitch_38
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
