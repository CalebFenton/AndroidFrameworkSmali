.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final TRANSACTION_connectWifiDisplay:I = 0x6

.field static final TRANSACTION_createVirtualDisplay:I = 0xd

.field static final TRANSACTION_disconnectWifiDisplay:I = 0x7

.field static final TRANSACTION_forgetWifiDisplay:I = 0x9

.field static final TRANSACTION_getDisplayIds:I = 0x2

.field static final TRANSACTION_getDisplayInfo:I = 0x1

.field static final TRANSACTION_getWifiDisplayStatus:I = 0xc

.field static final TRANSACTION_pauseWifiDisplay:I = 0xa

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_releaseVirtualDisplay:I = 0x10

.field static final TRANSACTION_renameWifiDisplay:I = 0x8

.field static final TRANSACTION_resizeVirtualDisplay:I = 0xe

.field static final TRANSACTION_resumeWifiDisplay:I = 0xb

.field static final TRANSACTION_setVirtualDisplaySurface:I = 0xf

.field static final TRANSACTION_startWifiDisplayScan:I = 0x4

.field static final TRANSACTION_stopWifiDisplayScan:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.hardware.display.IDisplayManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
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
    const-string/jumbo v1, "android.hardware.display.IDisplayManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/hardware/display/IDisplayManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 229
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v14

    #@1e
    .line 51
    .local v14, "_arg0":I
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v14}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    #@23
    move-result-object v24

    #@24
    .line 52
    .local v24, "_result":Landroid/view/DisplayInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    .line 53
    if-eqz v24, :cond_0

    #@29
    .line 54
    const/4 v4, 0x1

    #@2a
    move-object/from16 v0, p3

    #@2c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 55
    const/4 v4, 0x1

    #@30
    move-object/from16 v0, v24

    #@32
    move-object/from16 v1, p3

    #@34
    invoke-virtual {v0, v1, v4}, Landroid/view/DisplayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@37
    .line 60
    :goto_0
    const/4 v4, 0x1

    #@38
    return v4

    #@39
    .line 58
    :cond_0
    const/4 v4, 0x0

    #@3a
    move-object/from16 v0, p3

    #@3c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    goto :goto_0

    #@40
    .line 64
    .end local v14    # "_arg0":I
    .end local v24    # "_result":Landroid/view/DisplayInfo;
    :sswitch_2
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@43
    move-object/from16 v0, p2

    #@45
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds()[I

    #@4b
    move-result-object v25

    #@4c
    .line 66
    .local v25, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f
    .line 67
    move-object/from16 v0, p3

    #@51
    move-object/from16 v1, v25

    #@53
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@56
    .line 68
    const/4 v4, 0x1

    #@57
    return v4

    #@58
    .line 72
    .end local v25    # "_result":[I
    :sswitch_3
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@5b
    move-object/from16 v0, p2

    #@5d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@63
    move-result-object v4

    #@64
    invoke-static {v4}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    #@67
    move-result-object v15

    #@68
    .line 75
    .local v15, "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    move-object/from16 v0, p0

    #@6a
    invoke-virtual {v0, v15}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    #@6d
    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@70
    .line 77
    const/4 v4, 0x1

    #@71
    return v4

    #@72
    .line 81
    .end local v15    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    :sswitch_4
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@75
    move-object/from16 v0, p2

    #@77
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a
    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    #@7d
    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@80
    .line 84
    const/4 v4, 0x1

    #@81
    return v4

    #@82
    .line 88
    :sswitch_5
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@85
    move-object/from16 v0, p2

    #@87
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8a
    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    #@8d
    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@90
    .line 91
    const/4 v4, 0x1

    #@91
    return v4

    #@92
    .line 95
    :sswitch_6
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@95
    move-object/from16 v0, p2

    #@97
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9a
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9d
    move-result-object v16

    #@9e
    .line 98
    .local v16, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a0
    move-object/from16 v1, v16

    #@a2
    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    #@a5
    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    .line 100
    const/4 v4, 0x1

    #@a9
    return v4

    #@aa
    .line 104
    .end local v16    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@ad
    move-object/from16 v0, p2

    #@af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2
    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    #@b5
    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8
    .line 107
    const/4 v4, 0x1

    #@b9
    return v4

    #@ba
    .line 111
    :sswitch_8
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@bd
    move-object/from16 v0, p2

    #@bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c2
    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c5
    move-result-object v16

    #@c6
    .line 115
    .restart local v16    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c9
    move-result-object v19

    #@ca
    .line 116
    .local v19, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@cc
    move-object/from16 v1, v16

    #@ce
    move-object/from16 v2, v19

    #@d0
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    #@d3
    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d6
    .line 118
    const/4 v4, 0x1

    #@d7
    return v4

    #@d8
    .line 122
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@db
    move-object/from16 v0, p2

    #@dd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e0
    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e3
    move-result-object v16

    #@e4
    .line 125
    .restart local v16    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e6
    move-object/from16 v1, v16

    #@e8
    invoke-virtual {v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    #@eb
    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ee
    .line 127
    const/4 v4, 0x1

    #@ef
    return v4

    #@f0
    .line 131
    .end local v16    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@f3
    move-object/from16 v0, p2

    #@f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f8
    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    #@fb
    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fe
    .line 134
    const/4 v4, 0x1

    #@ff
    return v4

    #@100
    .line 138
    :sswitch_b
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@103
    move-object/from16 v0, p2

    #@105
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@108
    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    #@10b
    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10e
    .line 141
    const/4 v4, 0x1

    #@10f
    return v4

    #@110
    .line 145
    :sswitch_c
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@113
    move-object/from16 v0, p2

    #@115
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@118
    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    #@11b
    move-result-object v23

    #@11c
    .line 147
    .local v23, "_result":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11f
    .line 148
    if-eqz v23, :cond_1

    #@121
    .line 149
    const/4 v4, 0x1

    #@122
    move-object/from16 v0, p3

    #@124
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@127
    .line 150
    const/4 v4, 0x1

    #@128
    move-object/from16 v0, v23

    #@12a
    move-object/from16 v1, p3

    #@12c
    invoke-virtual {v0, v1, v4}, Landroid/hardware/display/WifiDisplayStatus;->writeToParcel(Landroid/os/Parcel;I)V

    #@12f
    .line 155
    :goto_1
    const/4 v4, 0x1

    #@130
    return v4

    #@131
    .line 153
    :cond_1
    const/4 v4, 0x0

    #@132
    move-object/from16 v0, p3

    #@134
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@137
    goto :goto_1

    #@138
    .line 159
    .end local v23    # "_result":Landroid/hardware/display/WifiDisplayStatus;
    :sswitch_d
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@13b
    move-object/from16 v0, p2

    #@13d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@140
    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@143
    move-result-object v4

    #@144
    invoke-static {v4}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    #@147
    move-result-object v5

    #@148
    .line 163
    .local v5, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14b
    move-result-object v4

    #@14c
    invoke-static {v4}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    #@14f
    move-result-object v6

    #@150
    .line 165
    .local v6, "_arg1":Landroid/media/projection/IMediaProjection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@153
    move-result-object v7

    #@154
    .line 167
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@157
    move-result-object v8

    #@158
    .line 169
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15b
    move-result v9

    #@15c
    .line 171
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15f
    move-result v10

    #@160
    .line 173
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@163
    move-result v11

    #@164
    .line 175
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@167
    move-result v4

    #@168
    if-eqz v4, :cond_2

    #@16a
    .line 176
    sget-object v4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16c
    move-object/from16 v0, p2

    #@16e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@171
    move-result-object v12

    #@172
    check-cast v12, Landroid/view/Surface;

    #@174
    .line 182
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@177
    move-result v13

    #@178
    .local v13, "_arg8":I
    move-object/from16 v4, p0

    #@17a
    .line 183
    invoke-virtual/range {v4 .. v13}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I

    #@17d
    move-result v22

    #@17e
    .line 184
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@181
    .line 185
    move-object/from16 v0, p3

    #@183
    move/from16 v1, v22

    #@185
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@188
    .line 186
    const/4 v4, 0x1

    #@189
    return v4

    #@18a
    .line 179
    .end local v13    # "_arg8":I
    .end local v22    # "_result":I
    :cond_2
    const/4 v12, 0x0

    #@18b
    .local v12, "_arg7":Landroid/view/Surface;
    goto :goto_2

    #@18c
    .line 190
    .end local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v6    # "_arg1":Landroid/media/projection/IMediaProjection;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":Landroid/view/Surface;
    :sswitch_e
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@18f
    move-object/from16 v0, p2

    #@191
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@194
    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@197
    move-result-object v4

    #@198
    invoke-static {v4}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    #@19b
    move-result-object v5

    #@19c
    .line 194
    .restart local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19f
    move-result v17

    #@1a0
    .line 196
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a3
    move-result v20

    #@1a4
    .line 198
    .local v20, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a7
    move-result v21

    #@1a8
    .line 199
    .local v21, "_arg3":I
    move-object/from16 v0, p0

    #@1aa
    move/from16 v1, v17

    #@1ac
    move/from16 v2, v20

    #@1ae
    move/from16 v3, v21

    #@1b0
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    #@1b3
    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b6
    .line 201
    const/4 v4, 0x1

    #@1b7
    return v4

    #@1b8
    .line 205
    .end local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v17    # "_arg1":I
    .end local v20    # "_arg2":I
    .end local v21    # "_arg3":I
    :sswitch_f
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@1bb
    move-object/from16 v0, p2

    #@1bd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c0
    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1c3
    move-result-object v4

    #@1c4
    invoke-static {v4}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    #@1c7
    move-result-object v5

    #@1c8
    .line 209
    .restart local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cb
    move-result v4

    #@1cc
    if-eqz v4, :cond_3

    #@1ce
    .line 210
    sget-object v4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d0
    move-object/from16 v0, p2

    #@1d2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d5
    move-result-object v18

    #@1d6
    check-cast v18, Landroid/view/Surface;

    #@1d8
    .line 215
    :goto_3
    move-object/from16 v0, p0

    #@1da
    move-object/from16 v1, v18

    #@1dc
    invoke-virtual {v0, v5, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    #@1df
    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e2
    .line 217
    const/4 v4, 0x1

    #@1e3
    return v4

    #@1e4
    .line 213
    :cond_3
    const/16 v18, 0x0

    #@1e6
    .local v18, "_arg1":Landroid/view/Surface;
    goto :goto_3

    #@1e7
    .line 221
    .end local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v18    # "_arg1":Landroid/view/Surface;
    :sswitch_10
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    #@1ea
    move-object/from16 v0, p2

    #@1ec
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ef
    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f2
    move-result-object v4

    #@1f3
    invoke-static {v4}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    #@1f6
    move-result-object v5

    #@1f7
    .line 224
    .restart local v5    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    move-object/from16 v0, p0

    #@1f9
    invoke-virtual {v0, v5}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    #@1fc
    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ff
    .line 226
    const/4 v4, 0x1

    #@200
    return v4

    #@201
    .line 39
    nop

    #@202
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
