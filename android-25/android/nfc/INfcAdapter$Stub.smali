.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_addNfcUnlockHandler:I = 0x15

.field static final TRANSACTION_disable:I = 0x6

.field static final TRANSACTION_disableNdefPush:I = 0x9

.field static final TRANSACTION_dispatch:I = 0x12

.field static final TRANSACTION_enable:I = 0x7

.field static final TRANSACTION_enableNdefPush:I = 0x8

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x4

.field static final TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final TRANSACTION_getNfcFCardEmulationInterface:I = 0x3

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getState:I = 0x5

.field static final TRANSACTION_ignore:I = 0x11

.field static final TRANSACTION_invokeBeam:I = 0xf

.field static final TRANSACTION_invokeBeamInternal:I = 0x10

.field static final TRANSACTION_isNdefPushEnabled:I = 0xa

.field static final TRANSACTION_pausePolling:I = 0xb

.field static final TRANSACTION_removeNfcUnlockHandler:I = 0x16

.field static final TRANSACTION_resumePolling:I = 0xc

.field static final TRANSACTION_setAppCallback:I = 0xe

.field static final TRANSACTION_setForegroundDispatch:I = 0xd

.field static final TRANSACTION_setP2pModes:I = 0x14

.field static final TRANSACTION_setReaderMode:I = 0x13

.field static final TRANSACTION_verifyNfcPermission:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.nfc.INfcAdapter"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.nfc.INfcAdapter"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/nfc/INfcAdapter;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcAdapter$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 286
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v25

    #@7
    return v25

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v25

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 46
    const/16 v25, 0x1

    #@14
    return v25

    #@15
    .line 50
    :sswitch_1
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v25

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    #@22
    move-result-object v23

    #@23
    .line 52
    .local v23, "_result":Landroid/nfc/INfcTag;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26
    .line 53
    if-eqz v23, :cond_0

    #@28
    invoke-interface/range {v23 .. v23}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v25

    #@2c
    :goto_0
    move-object/from16 v0, p3

    #@2e
    move-object/from16 v1, v25

    #@30
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@33
    .line 54
    const/16 v25, 0x1

    #@35
    return v25

    #@36
    .line 53
    :cond_0
    const/16 v25, 0x0

    #@38
    goto :goto_0

    #@39
    .line 58
    .end local v23    # "_result":Landroid/nfc/INfcTag;
    :sswitch_2
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@3c
    move-object/from16 v0, p2

    #@3e
    move-object/from16 v1, v25

    #@40
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43
    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    #@46
    move-result-object v21

    #@47
    .line 60
    .local v21, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a
    .line 61
    if-eqz v21, :cond_1

    #@4c
    invoke-interface/range {v21 .. v21}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    #@4f
    move-result-object v25

    #@50
    :goto_1
    move-object/from16 v0, p3

    #@52
    move-object/from16 v1, v25

    #@54
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@57
    .line 62
    const/16 v25, 0x1

    #@59
    return v25

    #@5a
    .line 61
    :cond_1
    const/16 v25, 0x0

    #@5c
    goto :goto_1

    #@5d
    .line 66
    .end local v21    # "_result":Landroid/nfc/INfcCardEmulation;
    :sswitch_3
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@60
    move-object/from16 v0, p2

    #@62
    move-object/from16 v1, v25

    #@64
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67
    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    #@6a
    move-result-object v22

    #@6b
    .line 68
    .local v22, "_result":Landroid/nfc/INfcFCardEmulation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e
    .line 69
    if-eqz v22, :cond_2

    #@70
    invoke-interface/range {v22 .. v22}, Landroid/nfc/INfcFCardEmulation;->asBinder()Landroid/os/IBinder;

    #@73
    move-result-object v25

    #@74
    :goto_2
    move-object/from16 v0, p3

    #@76
    move-object/from16 v1, v25

    #@78
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@7b
    .line 70
    const/16 v25, 0x1

    #@7d
    return v25

    #@7e
    .line 69
    :cond_2
    const/16 v25, 0x0

    #@80
    goto :goto_2

    #@81
    .line 74
    .end local v22    # "_result":Landroid/nfc/INfcFCardEmulation;
    :sswitch_4
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@84
    move-object/from16 v0, p2

    #@86
    move-object/from16 v1, v25

    #@88
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8e
    move-result-object v9

    #@8f
    .line 77
    .local v9, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@91
    invoke-virtual {v0, v9}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    #@94
    move-result-object v20

    #@95
    .line 78
    .local v20, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@98
    .line 79
    if-eqz v20, :cond_3

    #@9a
    invoke-interface/range {v20 .. v20}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    #@9d
    move-result-object v25

    #@9e
    :goto_3
    move-object/from16 v0, p3

    #@a0
    move-object/from16 v1, v25

    #@a2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@a5
    .line 80
    const/16 v25, 0x1

    #@a7
    return v25

    #@a8
    .line 79
    :cond_3
    const/16 v25, 0x0

    #@aa
    goto :goto_3

    #@ab
    .line 84
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":Landroid/nfc/INfcAdapterExtras;
    :sswitch_5
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@ae
    move-object/from16 v0, p2

    #@b0
    move-object/from16 v1, v25

    #@b2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    #@b8
    move-result v19

    #@b9
    .line 86
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bc
    .line 87
    move-object/from16 v0, p3

    #@be
    move/from16 v1, v19

    #@c0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c3
    .line 88
    const/16 v25, 0x1

    #@c5
    return v25

    #@c6
    .line 92
    .end local v19    # "_result":I
    :sswitch_6
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@c9
    move-object/from16 v0, p2

    #@cb
    move-object/from16 v1, v25

    #@cd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d0
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d3
    move-result v25

    #@d4
    if-eqz v25, :cond_4

    #@d6
    const/4 v10, 0x1

    #@d7
    .line 95
    .local v10, "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    #@d9
    invoke-virtual {v0, v10}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    #@dc
    move-result v24

    #@dd
    .line 96
    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e0
    .line 97
    if-eqz v24, :cond_5

    #@e2
    const/16 v25, 0x1

    #@e4
    :goto_5
    move-object/from16 v0, p3

    #@e6
    move/from16 v1, v25

    #@e8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@eb
    .line 98
    const/16 v25, 0x1

    #@ed
    return v25

    #@ee
    .line 94
    .end local v10    # "_arg0":Z
    .end local v24    # "_result":Z
    :cond_4
    const/4 v10, 0x0

    #@ef
    goto :goto_4

    #@f0
    .line 97
    .restart local v10    # "_arg0":Z
    .restart local v24    # "_result":Z
    :cond_5
    const/16 v25, 0x0

    #@f2
    goto :goto_5

    #@f3
    .line 102
    .end local v10    # "_arg0":Z
    .end local v24    # "_result":Z
    :sswitch_7
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@f6
    move-object/from16 v0, p2

    #@f8
    move-object/from16 v1, v25

    #@fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fd
    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    #@100
    move-result v24

    #@101
    .line 104
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@104
    .line 105
    if-eqz v24, :cond_6

    #@106
    const/16 v25, 0x1

    #@108
    :goto_6
    move-object/from16 v0, p3

    #@10a
    move/from16 v1, v25

    #@10c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10f
    .line 106
    const/16 v25, 0x1

    #@111
    return v25

    #@112
    .line 105
    :cond_6
    const/16 v25, 0x0

    #@114
    goto :goto_6

    #@115
    .line 110
    .end local v24    # "_result":Z
    :sswitch_8
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@118
    move-object/from16 v0, p2

    #@11a
    move-object/from16 v1, v25

    #@11c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f
    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    #@122
    move-result v24

    #@123
    .line 112
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@126
    .line 113
    if-eqz v24, :cond_7

    #@128
    const/16 v25, 0x1

    #@12a
    :goto_7
    move-object/from16 v0, p3

    #@12c
    move/from16 v1, v25

    #@12e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@131
    .line 114
    const/16 v25, 0x1

    #@133
    return v25

    #@134
    .line 113
    :cond_7
    const/16 v25, 0x0

    #@136
    goto :goto_7

    #@137
    .line 118
    .end local v24    # "_result":Z
    :sswitch_9
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@13a
    move-object/from16 v0, p2

    #@13c
    move-object/from16 v1, v25

    #@13e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@141
    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    #@144
    move-result v24

    #@145
    .line 120
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@148
    .line 121
    if-eqz v24, :cond_8

    #@14a
    const/16 v25, 0x1

    #@14c
    :goto_8
    move-object/from16 v0, p3

    #@14e
    move/from16 v1, v25

    #@150
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@153
    .line 122
    const/16 v25, 0x1

    #@155
    return v25

    #@156
    .line 121
    :cond_8
    const/16 v25, 0x0

    #@158
    goto :goto_8

    #@159
    .line 126
    .end local v24    # "_result":Z
    :sswitch_a
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@15c
    move-object/from16 v0, p2

    #@15e
    move-object/from16 v1, v25

    #@160
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@163
    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    #@166
    move-result v24

    #@167
    .line 128
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16a
    .line 129
    if-eqz v24, :cond_9

    #@16c
    const/16 v25, 0x1

    #@16e
    :goto_9
    move-object/from16 v0, p3

    #@170
    move/from16 v1, v25

    #@172
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@175
    .line 130
    const/16 v25, 0x1

    #@177
    return v25

    #@178
    .line 129
    :cond_9
    const/16 v25, 0x0

    #@17a
    goto :goto_9

    #@17b
    .line 134
    .end local v24    # "_result":Z
    :sswitch_b
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@17e
    move-object/from16 v0, p2

    #@180
    move-object/from16 v1, v25

    #@182
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@185
    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@188
    move-result v2

    #@189
    .line 137
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    #@18b
    invoke-virtual {v0, v2}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(I)V

    #@18e
    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@191
    .line 139
    const/16 v25, 0x1

    #@193
    return v25

    #@194
    .line 143
    .end local v2    # "_arg0":I
    :sswitch_c
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@197
    move-object/from16 v0, p2

    #@199
    move-object/from16 v1, v25

    #@19b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19e
    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()V

    #@1a1
    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a4
    .line 146
    const/16 v25, 0x1

    #@1a6
    return v25

    #@1a7
    .line 150
    :sswitch_d
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@1aa
    move-object/from16 v0, p2

    #@1ac
    move-object/from16 v1, v25

    #@1ae
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b1
    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b4
    move-result v25

    #@1b5
    if-eqz v25, :cond_a

    #@1b7
    .line 153
    sget-object v25, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b9
    move-object/from16 v0, v25

    #@1bb
    move-object/from16 v1, p2

    #@1bd
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c0
    move-result-object v3

    #@1c1
    check-cast v3, Landroid/app/PendingIntent;

    #@1c3
    .line 159
    :goto_a
    sget-object v25, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c5
    move-object/from16 v0, p2

    #@1c7
    move-object/from16 v1, v25

    #@1c9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1cc
    move-result-object v14

    #@1cd
    check-cast v14, [Landroid/content/IntentFilter;

    #@1cf
    .line 161
    .local v14, "_arg1":[Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d2
    move-result v25

    #@1d3
    if-eqz v25, :cond_b

    #@1d5
    .line 162
    sget-object v25, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d7
    move-object/from16 v0, v25

    #@1d9
    move-object/from16 v1, p2

    #@1db
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1de
    move-result-object v17

    #@1df
    check-cast v17, Landroid/nfc/TechListParcel;

    #@1e1
    .line 167
    :goto_b
    move-object/from16 v0, p0

    #@1e3
    move-object/from16 v1, v17

    #@1e5
    invoke-virtual {v0, v3, v14, v1}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    #@1e8
    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1eb
    .line 169
    const/16 v25, 0x1

    #@1ed
    return v25

    #@1ee
    .line 156
    .end local v14    # "_arg1":[Landroid/content/IntentFilter;
    :cond_a
    const/4 v3, 0x0

    #@1ef
    .local v3, "_arg0":Landroid/app/PendingIntent;
    goto :goto_a

    #@1f0
    .line 165
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    .restart local v14    # "_arg1":[Landroid/content/IntentFilter;
    :cond_b
    const/16 v17, 0x0

    #@1f2
    .local v17, "_arg2":Landroid/nfc/TechListParcel;
    goto :goto_b

    #@1f3
    .line 173
    .end local v14    # "_arg1":[Landroid/content/IntentFilter;
    .end local v17    # "_arg2":Landroid/nfc/TechListParcel;
    :sswitch_e
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@1f6
    move-object/from16 v0, p2

    #@1f8
    move-object/from16 v1, v25

    #@1fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fd
    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@200
    move-result-object v25

    #@201
    invoke-static/range {v25 .. v25}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    #@204
    move-result-object v5

    #@205
    .line 176
    .local v5, "_arg0":Landroid/nfc/IAppCallback;
    move-object/from16 v0, p0

    #@207
    invoke-virtual {v0, v5}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    #@20a
    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20d
    .line 178
    const/16 v25, 0x1

    #@20f
    return v25

    #@210
    .line 182
    .end local v5    # "_arg0":Landroid/nfc/IAppCallback;
    :sswitch_f
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@213
    move-object/from16 v0, p2

    #@215
    move-object/from16 v1, v25

    #@217
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21a
    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeam()V

    #@21d
    .line 184
    const/16 v25, 0x1

    #@21f
    return v25

    #@220
    .line 188
    :sswitch_10
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@223
    move-object/from16 v0, p2

    #@225
    move-object/from16 v1, v25

    #@227
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22a
    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22d
    move-result v25

    #@22e
    if-eqz v25, :cond_c

    #@230
    .line 191
    sget-object v25, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@232
    move-object/from16 v0, v25

    #@234
    move-object/from16 v1, p2

    #@236
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@239
    move-result-object v4

    #@23a
    check-cast v4, Landroid/nfc/BeamShareData;

    #@23c
    .line 196
    :goto_c
    move-object/from16 v0, p0

    #@23e
    invoke-virtual {v0, v4}, Landroid/nfc/INfcAdapter$Stub;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V

    #@241
    .line 197
    const/16 v25, 0x1

    #@243
    return v25

    #@244
    .line 194
    :cond_c
    const/4 v4, 0x0

    #@245
    .local v4, "_arg0":Landroid/nfc/BeamShareData;
    goto :goto_c

    #@246
    .line 201
    .end local v4    # "_arg0":Landroid/nfc/BeamShareData;
    :sswitch_11
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@249
    move-object/from16 v0, p2

    #@24b
    move-object/from16 v1, v25

    #@24d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@250
    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@253
    move-result v2

    #@254
    .line 205
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@257
    move-result v11

    #@258
    .line 207
    .local v11, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25b
    move-result-object v25

    #@25c
    invoke-static/range {v25 .. v25}, Landroid/nfc/ITagRemovedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/ITagRemovedCallback;

    #@25f
    move-result-object v16

    #@260
    .line 208
    .local v16, "_arg2":Landroid/nfc/ITagRemovedCallback;
    move-object/from16 v0, p0

    #@262
    move-object/from16 v1, v16

    #@264
    invoke-virtual {v0, v2, v11, v1}, Landroid/nfc/INfcAdapter$Stub;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z

    #@267
    move-result v24

    #@268
    .line 209
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26b
    .line 210
    if-eqz v24, :cond_d

    #@26d
    const/16 v25, 0x1

    #@26f
    :goto_d
    move-object/from16 v0, p3

    #@271
    move/from16 v1, v25

    #@273
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@276
    .line 211
    const/16 v25, 0x1

    #@278
    return v25

    #@279
    .line 210
    :cond_d
    const/16 v25, 0x0

    #@27b
    goto :goto_d

    #@27c
    .line 215
    .end local v2    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v16    # "_arg2":Landroid/nfc/ITagRemovedCallback;
    .end local v24    # "_result":Z
    :sswitch_12
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@27f
    move-object/from16 v0, p2

    #@281
    move-object/from16 v1, v25

    #@283
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@286
    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@289
    move-result v25

    #@28a
    if-eqz v25, :cond_e

    #@28c
    .line 218
    sget-object v25, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28e
    move-object/from16 v0, v25

    #@290
    move-object/from16 v1, p2

    #@292
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@295
    move-result-object v7

    #@296
    check-cast v7, Landroid/nfc/Tag;

    #@298
    .line 223
    :goto_e
    move-object/from16 v0, p0

    #@29a
    invoke-virtual {v0, v7}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    #@29d
    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a0
    .line 225
    const/16 v25, 0x1

    #@2a2
    return v25

    #@2a3
    .line 221
    :cond_e
    const/4 v7, 0x0

    #@2a4
    .local v7, "_arg0":Landroid/nfc/Tag;
    goto :goto_e

    #@2a5
    .line 229
    .end local v7    # "_arg0":Landroid/nfc/Tag;
    :sswitch_13
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@2a8
    move-object/from16 v0, p2

    #@2aa
    move-object/from16 v1, v25

    #@2ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2af
    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b2
    move-result-object v8

    #@2b3
    .line 233
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b6
    move-result-object v25

    #@2b7
    invoke-static/range {v25 .. v25}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    #@2ba
    move-result-object v12

    #@2bb
    .line 235
    .local v12, "_arg1":Landroid/nfc/IAppCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2be
    move-result v15

    #@2bf
    .line 237
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c2
    move-result v25

    #@2c3
    if-eqz v25, :cond_f

    #@2c5
    .line 238
    sget-object v25, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c7
    move-object/from16 v0, v25

    #@2c9
    move-object/from16 v1, p2

    #@2cb
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2ce
    move-result-object v18

    #@2cf
    check-cast v18, Landroid/os/Bundle;

    #@2d1
    .line 243
    :goto_f
    move-object/from16 v0, p0

    #@2d3
    move-object/from16 v1, v18

    #@2d5
    invoke-virtual {v0, v8, v12, v15, v1}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    #@2d8
    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2db
    .line 245
    const/16 v25, 0x1

    #@2dd
    return v25

    #@2de
    .line 241
    :cond_f
    const/16 v18, 0x0

    #@2e0
    .local v18, "_arg3":Landroid/os/Bundle;
    goto :goto_f

    #@2e1
    .line 249
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":Landroid/nfc/IAppCallback;
    .end local v15    # "_arg2":I
    .end local v18    # "_arg3":Landroid/os/Bundle;
    :sswitch_14
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@2e4
    move-object/from16 v0, p2

    #@2e6
    move-object/from16 v1, v25

    #@2e8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2eb
    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ee
    move-result v2

    #@2ef
    .line 253
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f2
    move-result v11

    #@2f3
    .line 254
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    #@2f5
    invoke-virtual {v0, v2, v11}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    #@2f8
    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2fb
    .line 256
    const/16 v25, 0x1

    #@2fd
    return v25

    #@2fe
    .line 260
    .end local v2    # "_arg0":I
    .end local v11    # "_arg1":I
    :sswitch_15
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@301
    move-object/from16 v0, p2

    #@303
    move-object/from16 v1, v25

    #@305
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@308
    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@30b
    move-result-object v25

    #@30c
    invoke-static/range {v25 .. v25}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    #@30f
    move-result-object v6

    #@310
    .line 264
    .local v6, "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@313
    move-result-object v13

    #@314
    .line 265
    .local v13, "_arg1":[I
    move-object/from16 v0, p0

    #@316
    invoke-virtual {v0, v6, v13}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    #@319
    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31c
    .line 267
    const/16 v25, 0x1

    #@31e
    return v25

    #@31f
    .line 271
    .end local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    .end local v13    # "_arg1":[I
    :sswitch_16
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@322
    move-object/from16 v0, p2

    #@324
    move-object/from16 v1, v25

    #@326
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@329
    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@32c
    move-result-object v25

    #@32d
    invoke-static/range {v25 .. v25}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    #@330
    move-result-object v6

    #@331
    .line 274
    .restart local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    move-object/from16 v0, p0

    #@333
    invoke-virtual {v0, v6}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    #@336
    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@339
    .line 276
    const/16 v25, 0x1

    #@33b
    return v25

    #@33c
    .line 280
    .end local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    :sswitch_17
    const-string/jumbo v25, "android.nfc.INfcAdapter"

    #@33f
    move-object/from16 v0, p2

    #@341
    move-object/from16 v1, v25

    #@343
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@346
    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->verifyNfcPermission()V

    #@349
    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34c
    .line 283
    const/16 v25, 0x1

    #@34e
    return v25

    #@34f
    .line 41
    nop

    #@350
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
