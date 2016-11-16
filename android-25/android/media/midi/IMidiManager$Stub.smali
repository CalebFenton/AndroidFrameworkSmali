.class public abstract Landroid/media/midi/IMidiManager$Stub;
.super Landroid/os/Binder;
.source "IMidiManager.java"

# interfaces
.implements Landroid/media/midi/IMidiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/IMidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.midi.IMidiManager"

.field static final TRANSACTION_closeDevice:I = 0x6

.field static final TRANSACTION_getDeviceStatus:I = 0xa

.field static final TRANSACTION_getDevices:I = 0x1

.field static final TRANSACTION_getServiceDeviceInfo:I = 0x9

.field static final TRANSACTION_openBluetoothDevice:I = 0x5

.field static final TRANSACTION_openDevice:I = 0x4

.field static final TRANSACTION_registerDeviceServer:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x2

.field static final TRANSACTION_setDeviceStatus:I = 0xb

.field static final TRANSACTION_unregisterDeviceServer:I = 0x8

.field static final TRANSACTION_unregisterListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.media.midi.IMidiManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/midi/IMidiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiManager;
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
    const-string/jumbo v1, "android.media.midi.IMidiManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/midi/IMidiManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/media/midi/IMidiManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/midi/IMidiManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/midi/IMidiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 23
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 221
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v2, "android.media.midi.IMidiManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v2, "android.media.midi.IMidiManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/media/midi/IMidiManager$Stub;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    #@1d
    move-result-object v22

    #@1e
    .line 50
    .local v22, "_result":[Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 51
    const/4 v2, 0x1

    #@22
    move-object/from16 v0, p3

    #@24
    move-object/from16 v1, v22

    #@26
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@29
    .line 52
    const/4 v2, 0x1

    #@2a
    return v2

    #@2b
    .line 56
    .end local v22    # "_result":[Landroid/media/midi/MidiDeviceInfo;
    :sswitch_2
    const-string/jumbo v2, "android.media.midi.IMidiManager"

    #@2e
    move-object/from16 v0, p2

    #@30
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33
    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@36
    move-result-object v11

    #@37
    .line 60
    .local v11, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v2}, Landroid/media/midi/IMidiDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceListener;

    #@3e
    move-result-object v14

    #@3f
    .line 61
    .local v14, "_arg1":Landroid/media/midi/IMidiDeviceListener;
    move-object/from16 v0, p0

    #@41
    invoke-virtual {v0, v11, v14}, Landroid/media/midi/IMidiManager$Stub;->registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V

    #@44
    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@47
    .line 63
    const/4 v2, 0x1

    #@48
    return v2

    #@49
    .line 67
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    :sswitch_3
    const-string/jumbo v2, "android.media.midi.IMidiManager"

    #@4c
    move-object/from16 v0, p2

    #@4e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51
    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@54
    move-result-object v11

    #@55
    .line 71
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@58
    move-result-object v2

    #@59
    invoke-static {v2}, Landroid/media/midi/IMidiDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceListener;

    #@5c
    move-result-object v14

    #@5d
    .line 72
    .restart local v14    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    move-object/from16 v0, p0

    #@5f
    invoke-virtual {v0, v11, v14}, Landroid/media/midi/IMidiManager$Stub;->unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V

    #@62
    .line 73
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@65
    .line 74
    const/4 v2, 0x1

    #@66
    return v2

    #@67
    .line 78
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    :sswitch_4
    const-string/jumbo v2, "android.media.midi.IMidiManager"

    #@6a
    move-object/from16 v0, p2

    #@6c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@72
    move-result-object v11

    #@73
    .line 82
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@76
    move-result v2

    #@77
    if-eqz v2, :cond_0

    #@79
    .line 83
    sget-object v2, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7b
    move-object/from16 v0, p2

    #@7d
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@80
    move-result-object v15

    #@81
    check-cast v15, Landroid/media/midi/MidiDeviceInfo;

    #@83
    .line 89
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@86
    move-result-object v2

    #@87
    invoke-static {v2}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceOpenCallback;

    #@8a
    move-result-object v19

    #@8b
    .line 90
    .local v19, "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    move-object/from16 v0, p0

    #@8d
    move-object/from16 v1, v19

    #@8f
    invoke-virtual {v0, v11, v15, v1}, Landroid/media/midi/IMidiManager$Stub;->openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    #@92
    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@95
    .line 92
    const/4 v2, 0x1

    #@96
    return v2

    #@97
    .line 86
    .end local v19    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    :cond_0
    const/4 v15, 0x0

    #@98
    .local v15, "_arg1":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_0

    #@99
    .line 96
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":Landroid/media/midi/MidiDeviceInfo;
    :sswitch_5
    const-string/jumbo v2, "android.media.midi.IMidiManager"

    #@9c
    move-object/from16 v0, p2

    #@9e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a1
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a4
    move-result-object v11

    #@a5
    .line 100
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a8
    move-result v2

    #@a9
    if-eqz v2, :cond_1

    #@ab
    .line 101
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ad
    move-object/from16 v0, p2

    #@af
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b2
    move-result-object v13

    #@b3
    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    #@b5
    .line 107
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b8
    move-result-object v2

    #@b9
    invoke-static {v2}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceOpenCallback;

    #@bc
    move-result-object v19

    #@bd
    .line 108
    .restart local v19    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    move-object/from16 v0, p0

    #@bf
    move-object/from16 v1, v19

    #@c1
    invoke-virtual {v0, v11, v13, v1}, Landroid/media/midi/IMidiManager$Stub;->openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    #@c4
    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c7
    .line 110
    const/4 v2, 0x1

    #@c8
    return v2

    #@c9
    .line 104
    .end local v19    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    :cond_1
    const/4 v13, 0x0

    #@ca
    .local v13, "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    #@cb
    .line 114
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string/jumbo v2, "android.media.midi.IMidiManager"

    #@ce
    move-object/from16 v0, p2

    #@d0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d3
    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d6
    move-result-object v11

    #@d7
    .line 118
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@da
    move-result-object v17

    #@db
    .line 119
    .local v17, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@dd
    move-object/from16 v1, v17

    #@df
    invoke-virtual {v0, v11, v1}, Landroid/media/midi/IMidiManager$Stub;->closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V

    #@e2
    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e5
    .line 121
    const/4 v2, 0x1

    #@e6
    return v2

    #@e7
    .line 125
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":Landroid/os/IBinder;
    :sswitch_7
    const-string/jumbo v2, "android.media.midi.IMidiManager"

    #@ea
    move-object/from16 v0, p2

    #@ec
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ef
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f2
    move-result-object v2

    #@f3
    invoke-static {v2}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    #@f6
    move-result-object v3

    #@f7
    .line 129
    .local v3, "_arg0":Landroid/media/midi/IMidiDeviceServer;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fa
    move-result v4

    #@fb
    .line 131
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fe
    move-result v5

    #@ff
    .line 133
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@102
    move-result-object v6

    #@103
    .line 135
    .local v6, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@106
    move-result-object v7

    #@107
    .line 137
    .local v7, "_arg4":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10a
    move-result v2

    #@10b
    if-eqz v2, :cond_2

    #@10d
    .line 138
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10f
    move-object/from16 v0, p2

    #@111
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@114
    move-result-object v8

    #@115
    check-cast v8, Landroid/os/Bundle;

    #@117
    .line 144
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11a
    move-result v9

    #@11b
    .local v9, "_arg6":I
    move-object/from16 v2, p0

    #@11d
    .line 145
    invoke-virtual/range {v2 .. v9}, Landroid/media/midi/IMidiManager$Stub;->registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/midi/MidiDeviceInfo;

    #@120
    move-result-object v20

    #@121
    .line 146
    .local v20, "_result":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@124
    .line 147
    if-eqz v20, :cond_3

    #@126
    .line 148
    const/4 v2, 0x1

    #@127
    move-object/from16 v0, p3

    #@129
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@12c
    .line 149
    const/4 v2, 0x1

    #@12d
    move-object/from16 v0, v20

    #@12f
    move-object/from16 v1, p3

    #@131
    invoke-virtual {v0, v1, v2}, Landroid/media/midi/MidiDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@134
    .line 154
    :goto_3
    const/4 v2, 0x1

    #@135
    return v2

    #@136
    .line 141
    .end local v9    # "_arg6":I
    .end local v20    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :cond_2
    const/4 v8, 0x0

    #@137
    .local v8, "_arg5":Landroid/os/Bundle;
    goto :goto_2

    #@138
    .line 152
    .end local v8    # "_arg5":Landroid/os/Bundle;
    .restart local v9    # "_arg6":I
    .restart local v20    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :cond_3
    const/4 v2, 0x0

    #@139
    move-object/from16 v0, p3

    #@13b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@13e
    goto :goto_3

    #@13f
    .line 158
    .end local v3    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":[Ljava/lang/String;
    .end local v7    # "_arg4":[Ljava/lang/String;
    .end local v9    # "_arg6":I
    .end local v20    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :sswitch_8
    const-string/jumbo v2, "android.media.midi.IMidiManager"

    #@142
    move-object/from16 v0, p2

    #@144
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@147
    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14a
    move-result-object v2

    #@14b
    invoke-static {v2}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    #@14e
    move-result-object v3

    #@14f
    .line 161
    .restart local v3    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    move-object/from16 v0, p0

    #@151
    invoke-virtual {v0, v3}, Landroid/media/midi/IMidiManager$Stub;->unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    #@154
    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@157
    .line 163
    const/4 v2, 0x1

    #@158
    return v2

    #@159
    .line 167
    .end local v3    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    :sswitch_9
    const-string/jumbo v2, "android.media.midi.IMidiManager"

    #@15c
    move-object/from16 v0, p2

    #@15e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@161
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@164
    move-result-object v12

    #@165
    .line 171
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@168
    move-result-object v18

    #@169
    .line 172
    .local v18, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@16b
    move-object/from16 v1, v18

    #@16d
    invoke-virtual {v0, v12, v1}, Landroid/media/midi/IMidiManager$Stub;->getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;

    #@170
    move-result-object v20

    #@171
    .line 173
    .restart local v20    # "_result":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@174
    .line 174
    if-eqz v20, :cond_4

    #@176
    .line 175
    const/4 v2, 0x1

    #@177
    move-object/from16 v0, p3

    #@179
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17c
    .line 176
    const/4 v2, 0x1

    #@17d
    move-object/from16 v0, v20

    #@17f
    move-object/from16 v1, p3

    #@181
    invoke-virtual {v0, v1, v2}, Landroid/media/midi/MidiDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@184
    .line 181
    :goto_4
    const/4 v2, 0x1

    #@185
    return v2

    #@186
    .line 179
    :cond_4
    const/4 v2, 0x0

    #@187
    move-object/from16 v0, p3

    #@189
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18c
    goto :goto_4

    #@18d
    .line 185
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :sswitch_a
    const-string/jumbo v2, "android.media.midi.IMidiManager"

    #@190
    move-object/from16 v0, p2

    #@192
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@195
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@198
    move-result v2

    #@199
    if-eqz v2, :cond_5

    #@19b
    .line 188
    sget-object v2, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19d
    move-object/from16 v0, p2

    #@19f
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a2
    move-result-object v10

    #@1a3
    check-cast v10, Landroid/media/midi/MidiDeviceInfo;

    #@1a5
    .line 193
    :goto_5
    move-object/from16 v0, p0

    #@1a7
    invoke-virtual {v0, v10}, Landroid/media/midi/IMidiManager$Stub;->getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;

    #@1aa
    move-result-object v21

    #@1ab
    .line 194
    .local v21, "_result":Landroid/media/midi/MidiDeviceStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ae
    .line 195
    if-eqz v21, :cond_6

    #@1b0
    .line 196
    const/4 v2, 0x1

    #@1b1
    move-object/from16 v0, p3

    #@1b3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b6
    .line 197
    const/4 v2, 0x1

    #@1b7
    move-object/from16 v0, v21

    #@1b9
    move-object/from16 v1, p3

    #@1bb
    invoke-virtual {v0, v1, v2}, Landroid/media/midi/MidiDeviceStatus;->writeToParcel(Landroid/os/Parcel;I)V

    #@1be
    .line 202
    :goto_6
    const/4 v2, 0x1

    #@1bf
    return v2

    #@1c0
    .line 191
    .end local v21    # "_result":Landroid/media/midi/MidiDeviceStatus;
    :cond_5
    const/4 v10, 0x0

    #@1c1
    .local v10, "_arg0":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_5

    #@1c2
    .line 200
    .end local v10    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    .restart local v21    # "_result":Landroid/media/midi/MidiDeviceStatus;
    :cond_6
    const/4 v2, 0x0

    #@1c3
    move-object/from16 v0, p3

    #@1c5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c8
    goto :goto_6

    #@1c9
    .line 206
    .end local v21    # "_result":Landroid/media/midi/MidiDeviceStatus;
    :sswitch_b
    const-string/jumbo v2, "android.media.midi.IMidiManager"

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d1
    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d4
    move-result-object v2

    #@1d5
    invoke-static {v2}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    #@1d8
    move-result-object v3

    #@1d9
    .line 210
    .restart local v3    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1dc
    move-result v2

    #@1dd
    if-eqz v2, :cond_7

    #@1df
    .line 211
    sget-object v2, Landroid/media/midi/MidiDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e1
    move-object/from16 v0, p2

    #@1e3
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e6
    move-result-object v16

    #@1e7
    check-cast v16, Landroid/media/midi/MidiDeviceStatus;

    #@1e9
    .line 216
    :goto_7
    move-object/from16 v0, p0

    #@1eb
    move-object/from16 v1, v16

    #@1ed
    invoke-virtual {v0, v3, v1}, Landroid/media/midi/IMidiManager$Stub;->setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V

    #@1f0
    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f3
    .line 218
    const/4 v2, 0x1

    #@1f4
    return v2

    #@1f5
    .line 214
    :cond_7
    const/16 v16, 0x0

    #@1f7
    .local v16, "_arg1":Landroid/media/midi/MidiDeviceStatus;
    goto :goto_7

    #@1f8
    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
