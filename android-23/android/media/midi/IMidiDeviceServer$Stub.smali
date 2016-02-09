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
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.midi.IMidiDeviceServer"

.field static final TRANSACTION_closeDevice:I = 0x4

.field static final TRANSACTION_closePort:I = 0x3

.field static final TRANSACTION_connectPorts:I = 0x5

.field static final TRANSACTION_getDeviceInfo:I = 0x6

.field static final TRANSACTION_openInputPort:I = 0x1

.field static final TRANSACTION_openOutputPort:I = 0x2

.field static final TRANSACTION_setDeviceInfo:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.media.midi.IMidiDeviceServer"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.media.midi.IMidiDeviceServer"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/midi/IMidiDeviceServer;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/media/midi/IMidiDeviceServer;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v7

    #@9
    return v7

    #@a
    .line 43
    :sswitch_0
    const-string/jumbo v7, "android.media.midi.IMidiDeviceServer"

    #@d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    return v8

    #@11
    .line 48
    :sswitch_1
    const-string/jumbo v7, "android.media.midi.IMidiDeviceServer"

    #@14
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v1

    #@1b
    .line 52
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v2

    #@1f
    .line 53
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/media/midi/IMidiDeviceServer$Stub;->openInputPort(Landroid/os/IBinder;I)Landroid/os/ParcelFileDescriptor;

    #@22
    move-result-object v6

    #@23
    .line 54
    .local v6, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@26
    .line 55
    if-eqz v6, :cond_0

    #@28
    .line 56
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 57
    invoke-virtual {v6, p3, v8}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e
    .line 62
    :goto_0
    return v8

    #@2f
    .line 60
    :cond_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    goto :goto_0

    #@33
    .line 66
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v7, "android.media.midi.IMidiDeviceServer"

    #@36
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3c
    move-result-object v1

    #@3d
    .line 70
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v2

    #@41
    .line 71
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/media/midi/IMidiDeviceServer$Stub;->openOutputPort(Landroid/os/IBinder;I)Landroid/os/ParcelFileDescriptor;

    #@44
    move-result-object v6

    #@45
    .line 72
    .restart local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@48
    .line 73
    if-eqz v6, :cond_1

    #@4a
    .line 74
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 75
    invoke-virtual {v6, p3, v8}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@50
    .line 80
    :goto_1
    return v8

    #@51
    .line 78
    :cond_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@54
    goto :goto_1

    #@55
    .line 84
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string/jumbo v7, "android.media.midi.IMidiDeviceServer"

    #@58
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5e
    move-result-object v1

    #@5f
    .line 87
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/midi/IMidiDeviceServer$Stub;->closePort(Landroid/os/IBinder;)V

    #@62
    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@65
    .line 89
    return v8

    #@66
    .line 93
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :sswitch_4
    const-string/jumbo v7, "android.media.midi.IMidiDeviceServer"

    #@69
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c
    .line 94
    invoke-virtual {p0}, Landroid/media/midi/IMidiDeviceServer$Stub;->closeDevice()V

    #@6f
    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@72
    .line 96
    return v8

    #@73
    .line 100
    :sswitch_5
    const-string/jumbo v7, "android.media.midi.IMidiDeviceServer"

    #@76
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@79
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7c
    move-result-object v1

    #@7d
    .line 104
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v7

    #@81
    if-eqz v7, :cond_2

    #@83
    .line 105
    sget-object v7, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@85
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@88
    move-result-object v3

    #@89
    check-cast v3, Landroid/os/ParcelFileDescriptor;

    #@8b
    .line 111
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8e
    move-result v4

    #@8f
    .line 112
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/midi/IMidiDeviceServer$Stub;->connectPorts(Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V

    #@92
    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@95
    .line 114
    return v8

    #@96
    .line 108
    .end local v4    # "_arg2":I
    :cond_2
    const/4 v3, 0x0

    #@97
    .local v3, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_2

    #@98
    .line 118
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_6
    const-string/jumbo v7, "android.media.midi.IMidiDeviceServer"

    #@9b
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e
    .line 119
    invoke-virtual {p0}, Landroid/media/midi/IMidiDeviceServer$Stub;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    #@a1
    move-result-object v5

    #@a2
    .line 120
    .local v5, "_result":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a5
    .line 121
    if-eqz v5, :cond_3

    #@a7
    .line 122
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@aa
    .line 123
    invoke-virtual {v5, p3, v8}, Landroid/media/midi/MidiDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@ad
    .line 128
    :goto_3
    return v8

    #@ae
    .line 126
    :cond_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@b1
    goto :goto_3

    #@b2
    .line 132
    .end local v5    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :sswitch_7
    const-string/jumbo v7, "android.media.midi.IMidiDeviceServer"

    #@b5
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8
    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bb
    move-result v7

    #@bc
    if-eqz v7, :cond_4

    #@be
    .line 135
    sget-object v7, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c0
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c3
    move-result-object v0

    #@c4
    check-cast v0, Landroid/media/midi/MidiDeviceInfo;

    #@c6
    .line 140
    :goto_4
    invoke-virtual {p0, v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V

    #@c9
    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cc
    .line 142
    return v8

    #@cd
    .line 138
    :cond_4
    const/4 v0, 0x0

    #@ce
    .local v0, "_arg0":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_4

    #@cf
    .line 39
    nop

    #@d0
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
