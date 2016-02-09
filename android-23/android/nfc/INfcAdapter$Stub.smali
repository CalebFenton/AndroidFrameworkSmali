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

.field static final TRANSACTION_addNfcUnlockHandler:I = 0x13

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_disableNdefPush:I = 0x8

.field static final TRANSACTION_dispatch:I = 0x10

.field static final TRANSACTION_enable:I = 0x6

.field static final TRANSACTION_enableNdefPush:I = 0x7

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x3

.field static final TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_invokeBeam:I = 0xe

.field static final TRANSACTION_invokeBeamInternal:I = 0xf

.field static final TRANSACTION_isNdefPushEnabled:I = 0x9

.field static final TRANSACTION_pausePolling:I = 0xa

.field static final TRANSACTION_removeNfcUnlockHandler:I = 0x14

.field static final TRANSACTION_resumePolling:I = 0xb

.field static final TRANSACTION_setAppCallback:I = 0xd

.field static final TRANSACTION_setForegroundDispatch:I = 0xc

.field static final TRANSACTION_setP2pModes:I = 0x12

.field static final TRANSACTION_setReaderMode:I = 0x11

.field static final TRANSACTION_verifyNfcPermission:I = 0x15


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
    .locals 24
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
    .line 264
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v23

    #@7
    return v23

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v23

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 46
    const/16 v23, 0x1

    #@14
    return v23

    #@15
    .line 50
    :sswitch_1
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v23

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    #@22
    move-result-object v21

    #@23
    .line 52
    .local v21, "_result":Landroid/nfc/INfcTag;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26
    .line 53
    if-eqz v21, :cond_0

    #@28
    invoke-interface/range {v21 .. v21}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v23

    #@2c
    :goto_0
    move-object/from16 v0, p3

    #@2e
    move-object/from16 v1, v23

    #@30
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@33
    .line 54
    const/16 v23, 0x1

    #@35
    return v23

    #@36
    .line 53
    :cond_0
    const/16 v23, 0x0

    #@38
    goto :goto_0

    #@39
    .line 58
    .end local v21    # "_result":Landroid/nfc/INfcTag;
    :sswitch_2
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@3c
    move-object/from16 v0, p2

    #@3e
    move-object/from16 v1, v23

    #@40
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43
    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    #@46
    move-result-object v20

    #@47
    .line 60
    .local v20, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a
    .line 61
    if-eqz v20, :cond_1

    #@4c
    invoke-interface/range {v20 .. v20}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    #@4f
    move-result-object v23

    #@50
    :goto_1
    move-object/from16 v0, p3

    #@52
    move-object/from16 v1, v23

    #@54
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@57
    .line 62
    const/16 v23, 0x1

    #@59
    return v23

    #@5a
    .line 61
    :cond_1
    const/16 v23, 0x0

    #@5c
    goto :goto_1

    #@5d
    .line 66
    .end local v20    # "_result":Landroid/nfc/INfcCardEmulation;
    :sswitch_3
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@60
    move-object/from16 v0, p2

    #@62
    move-object/from16 v1, v23

    #@64
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67
    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6a
    move-result-object v9

    #@6b
    .line 69
    .local v9, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6d
    invoke-virtual {v0, v9}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    #@70
    move-result-object v19

    #@71
    .line 70
    .local v19, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@74
    .line 71
    if-eqz v19, :cond_2

    #@76
    invoke-interface/range {v19 .. v19}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    #@79
    move-result-object v23

    #@7a
    :goto_2
    move-object/from16 v0, p3

    #@7c
    move-object/from16 v1, v23

    #@7e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@81
    .line 72
    const/16 v23, 0x1

    #@83
    return v23

    #@84
    .line 71
    :cond_2
    const/16 v23, 0x0

    #@86
    goto :goto_2

    #@87
    .line 76
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Landroid/nfc/INfcAdapterExtras;
    :sswitch_4
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@8a
    move-object/from16 v0, p2

    #@8c
    move-object/from16 v1, v23

    #@8e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@91
    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    #@94
    move-result v18

    #@95
    .line 78
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@98
    .line 79
    move-object/from16 v0, p3

    #@9a
    move/from16 v1, v18

    #@9c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9f
    .line 80
    const/16 v23, 0x1

    #@a1
    return v23

    #@a2
    .line 84
    .end local v18    # "_result":I
    :sswitch_5
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@a5
    move-object/from16 v0, p2

    #@a7
    move-object/from16 v1, v23

    #@a9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ac
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@af
    move-result v23

    #@b0
    if-eqz v23, :cond_3

    #@b2
    const/4 v10, 0x1

    #@b3
    .line 87
    .local v10, "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    #@b5
    invoke-virtual {v0, v10}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    #@b8
    move-result v22

    #@b9
    .line 88
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bc
    .line 89
    if-eqz v22, :cond_4

    #@be
    const/16 v23, 0x1

    #@c0
    :goto_4
    move-object/from16 v0, p3

    #@c2
    move/from16 v1, v23

    #@c4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c7
    .line 90
    const/16 v23, 0x1

    #@c9
    return v23

    #@ca
    .line 86
    .end local v10    # "_arg0":Z
    .end local v22    # "_result":Z
    :cond_3
    const/4 v10, 0x0

    #@cb
    .restart local v10    # "_arg0":Z
    goto :goto_3

    #@cc
    .line 89
    .restart local v22    # "_result":Z
    :cond_4
    const/16 v23, 0x0

    #@ce
    goto :goto_4

    #@cf
    .line 94
    .end local v10    # "_arg0":Z
    .end local v22    # "_result":Z
    :sswitch_6
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@d2
    move-object/from16 v0, p2

    #@d4
    move-object/from16 v1, v23

    #@d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d9
    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    #@dc
    move-result v22

    #@dd
    .line 96
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e0
    .line 97
    if-eqz v22, :cond_5

    #@e2
    const/16 v23, 0x1

    #@e4
    :goto_5
    move-object/from16 v0, p3

    #@e6
    move/from16 v1, v23

    #@e8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@eb
    .line 98
    const/16 v23, 0x1

    #@ed
    return v23

    #@ee
    .line 97
    :cond_5
    const/16 v23, 0x0

    #@f0
    goto :goto_5

    #@f1
    .line 102
    .end local v22    # "_result":Z
    :sswitch_7
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@f4
    move-object/from16 v0, p2

    #@f6
    move-object/from16 v1, v23

    #@f8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fb
    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    #@fe
    move-result v22

    #@ff
    .line 104
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@102
    .line 105
    if-eqz v22, :cond_6

    #@104
    const/16 v23, 0x1

    #@106
    :goto_6
    move-object/from16 v0, p3

    #@108
    move/from16 v1, v23

    #@10a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10d
    .line 106
    const/16 v23, 0x1

    #@10f
    return v23

    #@110
    .line 105
    :cond_6
    const/16 v23, 0x0

    #@112
    goto :goto_6

    #@113
    .line 110
    .end local v22    # "_result":Z
    :sswitch_8
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@116
    move-object/from16 v0, p2

    #@118
    move-object/from16 v1, v23

    #@11a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11d
    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    #@120
    move-result v22

    #@121
    .line 112
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@124
    .line 113
    if-eqz v22, :cond_7

    #@126
    const/16 v23, 0x1

    #@128
    :goto_7
    move-object/from16 v0, p3

    #@12a
    move/from16 v1, v23

    #@12c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@12f
    .line 114
    const/16 v23, 0x1

    #@131
    return v23

    #@132
    .line 113
    :cond_7
    const/16 v23, 0x0

    #@134
    goto :goto_7

    #@135
    .line 118
    .end local v22    # "_result":Z
    :sswitch_9
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@138
    move-object/from16 v0, p2

    #@13a
    move-object/from16 v1, v23

    #@13c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13f
    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    #@142
    move-result v22

    #@143
    .line 120
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@146
    .line 121
    if-eqz v22, :cond_8

    #@148
    const/16 v23, 0x1

    #@14a
    :goto_8
    move-object/from16 v0, p3

    #@14c
    move/from16 v1, v23

    #@14e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@151
    .line 122
    const/16 v23, 0x1

    #@153
    return v23

    #@154
    .line 121
    :cond_8
    const/16 v23, 0x0

    #@156
    goto :goto_8

    #@157
    .line 126
    .end local v22    # "_result":Z
    :sswitch_a
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@15a
    move-object/from16 v0, p2

    #@15c
    move-object/from16 v1, v23

    #@15e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@161
    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@164
    move-result v2

    #@165
    .line 129
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    #@167
    invoke-virtual {v0, v2}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(I)V

    #@16a
    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16d
    .line 131
    const/16 v23, 0x1

    #@16f
    return v23

    #@170
    .line 135
    .end local v2    # "_arg0":I
    :sswitch_b
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@173
    move-object/from16 v0, p2

    #@175
    move-object/from16 v1, v23

    #@177
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17a
    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()V

    #@17d
    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@180
    .line 138
    const/16 v23, 0x1

    #@182
    return v23

    #@183
    .line 142
    :sswitch_c
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@186
    move-object/from16 v0, p2

    #@188
    move-object/from16 v1, v23

    #@18a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18d
    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@190
    move-result v23

    #@191
    if-eqz v23, :cond_9

    #@193
    .line 145
    sget-object v23, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@195
    move-object/from16 v0, v23

    #@197
    move-object/from16 v1, p2

    #@199
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19c
    move-result-object v3

    #@19d
    check-cast v3, Landroid/app/PendingIntent;

    #@19f
    .line 151
    :goto_9
    sget-object v23, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a1
    move-object/from16 v0, p2

    #@1a3
    move-object/from16 v1, v23

    #@1a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1a8
    move-result-object v14

    #@1a9
    check-cast v14, [Landroid/content/IntentFilter;

    #@1ab
    .line 153
    .local v14, "_arg1":[Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ae
    move-result v23

    #@1af
    if-eqz v23, :cond_a

    #@1b1
    .line 154
    sget-object v23, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b3
    move-object/from16 v0, v23

    #@1b5
    move-object/from16 v1, p2

    #@1b7
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ba
    move-result-object v16

    #@1bb
    check-cast v16, Landroid/nfc/TechListParcel;

    #@1bd
    .line 159
    :goto_a
    move-object/from16 v0, p0

    #@1bf
    move-object/from16 v1, v16

    #@1c1
    invoke-virtual {v0, v3, v14, v1}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    #@1c4
    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c7
    .line 161
    const/16 v23, 0x1

    #@1c9
    return v23

    #@1ca
    .line 148
    .end local v14    # "_arg1":[Landroid/content/IntentFilter;
    :cond_9
    const/4 v3, 0x0

    #@1cb
    .local v3, "_arg0":Landroid/app/PendingIntent;
    goto :goto_9

    #@1cc
    .line 157
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    .restart local v14    # "_arg1":[Landroid/content/IntentFilter;
    :cond_a
    const/16 v16, 0x0

    #@1ce
    .local v16, "_arg2":Landroid/nfc/TechListParcel;
    goto :goto_a

    #@1cf
    .line 165
    .end local v14    # "_arg1":[Landroid/content/IntentFilter;
    .end local v16    # "_arg2":Landroid/nfc/TechListParcel;
    :sswitch_d
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@1d2
    move-object/from16 v0, p2

    #@1d4
    move-object/from16 v1, v23

    #@1d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d9
    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1dc
    move-result-object v23

    #@1dd
    invoke-static/range {v23 .. v23}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    #@1e0
    move-result-object v5

    #@1e1
    .line 168
    .local v5, "_arg0":Landroid/nfc/IAppCallback;
    move-object/from16 v0, p0

    #@1e3
    invoke-virtual {v0, v5}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    #@1e6
    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e9
    .line 170
    const/16 v23, 0x1

    #@1eb
    return v23

    #@1ec
    .line 174
    .end local v5    # "_arg0":Landroid/nfc/IAppCallback;
    :sswitch_e
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@1ef
    move-object/from16 v0, p2

    #@1f1
    move-object/from16 v1, v23

    #@1f3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f6
    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeam()V

    #@1f9
    .line 176
    const/16 v23, 0x1

    #@1fb
    return v23

    #@1fc
    .line 180
    :sswitch_f
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@1ff
    move-object/from16 v0, p2

    #@201
    move-object/from16 v1, v23

    #@203
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@206
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@209
    move-result v23

    #@20a
    if-eqz v23, :cond_b

    #@20c
    .line 183
    sget-object v23, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20e
    move-object/from16 v0, v23

    #@210
    move-object/from16 v1, p2

    #@212
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@215
    move-result-object v4

    #@216
    check-cast v4, Landroid/nfc/BeamShareData;

    #@218
    .line 188
    :goto_b
    move-object/from16 v0, p0

    #@21a
    invoke-virtual {v0, v4}, Landroid/nfc/INfcAdapter$Stub;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V

    #@21d
    .line 189
    const/16 v23, 0x1

    #@21f
    return v23

    #@220
    .line 186
    :cond_b
    const/4 v4, 0x0

    #@221
    .local v4, "_arg0":Landroid/nfc/BeamShareData;
    goto :goto_b

    #@222
    .line 193
    .end local v4    # "_arg0":Landroid/nfc/BeamShareData;
    :sswitch_10
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@225
    move-object/from16 v0, p2

    #@227
    move-object/from16 v1, v23

    #@229
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22c
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22f
    move-result v23

    #@230
    if-eqz v23, :cond_c

    #@232
    .line 196
    sget-object v23, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    #@234
    move-object/from16 v0, v23

    #@236
    move-object/from16 v1, p2

    #@238
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23b
    move-result-object v7

    #@23c
    check-cast v7, Landroid/nfc/Tag;

    #@23e
    .line 201
    :goto_c
    move-object/from16 v0, p0

    #@240
    invoke-virtual {v0, v7}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    #@243
    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@246
    .line 203
    const/16 v23, 0x1

    #@248
    return v23

    #@249
    .line 199
    :cond_c
    const/4 v7, 0x0

    #@24a
    .local v7, "_arg0":Landroid/nfc/Tag;
    goto :goto_c

    #@24b
    .line 207
    .end local v7    # "_arg0":Landroid/nfc/Tag;
    :sswitch_11
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@24e
    move-object/from16 v0, p2

    #@250
    move-object/from16 v1, v23

    #@252
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@255
    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@258
    move-result-object v8

    #@259
    .line 211
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25c
    move-result-object v23

    #@25d
    invoke-static/range {v23 .. v23}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    #@260
    move-result-object v12

    #@261
    .line 213
    .local v12, "_arg1":Landroid/nfc/IAppCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@264
    move-result v15

    #@265
    .line 215
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@268
    move-result v23

    #@269
    if-eqz v23, :cond_d

    #@26b
    .line 216
    sget-object v23, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26d
    move-object/from16 v0, v23

    #@26f
    move-object/from16 v1, p2

    #@271
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@274
    move-result-object v17

    #@275
    check-cast v17, Landroid/os/Bundle;

    #@277
    .line 221
    :goto_d
    move-object/from16 v0, p0

    #@279
    move-object/from16 v1, v17

    #@27b
    invoke-virtual {v0, v8, v12, v15, v1}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    #@27e
    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@281
    .line 223
    const/16 v23, 0x1

    #@283
    return v23

    #@284
    .line 219
    :cond_d
    const/16 v17, 0x0

    #@286
    .local v17, "_arg3":Landroid/os/Bundle;
    goto :goto_d

    #@287
    .line 227
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":Landroid/nfc/IAppCallback;
    .end local v15    # "_arg2":I
    .end local v17    # "_arg3":Landroid/os/Bundle;
    :sswitch_12
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@28a
    move-object/from16 v0, p2

    #@28c
    move-object/from16 v1, v23

    #@28e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@291
    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@294
    move-result v2

    #@295
    .line 231
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@298
    move-result v11

    #@299
    .line 232
    .local v11, "_arg1":I
    move-object/from16 v0, p0

    #@29b
    invoke-virtual {v0, v2, v11}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    #@29e
    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a1
    .line 234
    const/16 v23, 0x1

    #@2a3
    return v23

    #@2a4
    .line 238
    .end local v2    # "_arg0":I
    .end local v11    # "_arg1":I
    :sswitch_13
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@2a7
    move-object/from16 v0, p2

    #@2a9
    move-object/from16 v1, v23

    #@2ab
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ae
    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b1
    move-result-object v23

    #@2b2
    invoke-static/range {v23 .. v23}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    #@2b5
    move-result-object v6

    #@2b6
    .line 242
    .local v6, "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@2b9
    move-result-object v13

    #@2ba
    .line 243
    .local v13, "_arg1":[I
    move-object/from16 v0, p0

    #@2bc
    invoke-virtual {v0, v6, v13}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    #@2bf
    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c2
    .line 245
    const/16 v23, 0x1

    #@2c4
    return v23

    #@2c5
    .line 249
    .end local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    .end local v13    # "_arg1":[I
    :sswitch_14
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@2c8
    move-object/from16 v0, p2

    #@2ca
    move-object/from16 v1, v23

    #@2cc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2cf
    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d2
    move-result-object v23

    #@2d3
    invoke-static/range {v23 .. v23}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    #@2d6
    move-result-object v6

    #@2d7
    .line 252
    .restart local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    move-object/from16 v0, p0

    #@2d9
    invoke-virtual {v0, v6}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    #@2dc
    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2df
    .line 254
    const/16 v23, 0x1

    #@2e1
    return v23

    #@2e2
    .line 258
    .end local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    :sswitch_15
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    #@2e5
    move-object/from16 v0, p2

    #@2e7
    move-object/from16 v1, v23

    #@2e9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ec
    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->verifyNfcPermission()V

    #@2ef
    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f2
    .line 261
    const/16 v23, 0x1

    #@2f4
    return v23

    #@2f5
    .line 41
    nop

    #@2f6
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
