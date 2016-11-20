.class public abstract Landroid/net/wifi/nan/IWifiNanManager$Stub;
.super Landroid/os/Binder;
.source "IWifiNanManager.java"

# interfaces
.implements Landroid/net/wifi/nan/IWifiNanManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/IWifiNanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nan.IWifiNanManager"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_createSession:I = 0x4

.field static final TRANSACTION_destroySession:I = 0x9

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_publish:I = 0x5

.field static final TRANSACTION_requestConfig:I = 0x3

.field static final TRANSACTION_sendMessage:I = 0x7

.field static final TRANSACTION_stopSession:I = 0x8

.field static final TRANSACTION_subscribe:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/wifi/nan/IWifiNanManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/net/wifi/nan/IWifiNanManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 180
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v10

    #@1e
    .line 56
    .local v10, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@21
    move-result-object v2

    #@22
    invoke-static {v2}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanEventListener;

    #@25
    move-result-object v11

    #@26
    .line 58
    .local v11, "_arg1":Landroid/net/wifi/nan/IWifiNanEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v14

    #@2a
    .line 59
    .local v14, "_arg2":I
    move-object/from16 v0, p0

    #@2c
    invoke-virtual {v0, v10, v11, v14}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->connect(Landroid/os/IBinder;Landroid/net/wifi/nan/IWifiNanEventListener;I)V

    #@2f
    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@32
    .line 61
    const/4 v2, 0x1

    #@33
    return v2

    #@34
    .line 65
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v11    # "_arg1":Landroid/net/wifi/nan/IWifiNanEventListener;
    .end local v14    # "_arg2":I
    :sswitch_2
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    #@37
    move-object/from16 v0, p2

    #@39
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c
    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3f
    move-result-object v10

    #@40
    .line 68
    .restart local v10    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@42
    invoke-virtual {v0, v10}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->disconnect(Landroid/os/IBinder;)V

    #@45
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@48
    .line 70
    const/4 v2, 0x1

    #@49
    return v2

    #@4a
    .line 74
    .end local v10    # "_arg0":Landroid/os/IBinder;
    :sswitch_3
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    #@4d
    move-object/from16 v0, p2

    #@4f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_0

    #@58
    .line 77
    sget-object v2, Landroid/net/wifi/nan/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5a
    move-object/from16 v0, p2

    #@5c
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5f
    move-result-object v8

    #@60
    check-cast v8, Landroid/net/wifi/nan/ConfigRequest;

    #@62
    .line 82
    :goto_0
    move-object/from16 v0, p0

    #@64
    invoke-virtual {v0, v8}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->requestConfig(Landroid/net/wifi/nan/ConfigRequest;)V

    #@67
    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a
    .line 84
    const/4 v2, 0x1

    #@6b
    return v2

    #@6c
    .line 80
    :cond_0
    const/4 v8, 0x0

    #@6d
    .local v8, "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    goto :goto_0

    #@6e
    .line 88
    .end local v8    # "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    :sswitch_4
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    #@71
    move-object/from16 v0, p2

    #@73
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76
    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@79
    move-result-object v2

    #@7a
    invoke-static {v2}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanSessionListener;

    #@7d
    move-result-object v9

    #@7e
    .line 92
    .local v9, "_arg0":Landroid/net/wifi/nan/IWifiNanSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v4

    #@82
    .line 93
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    #@84
    invoke-virtual {v0, v9, v4}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->createSession(Landroid/net/wifi/nan/IWifiNanSessionListener;I)I

    #@87
    move-result v17

    #@88
    .line 94
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8b
    .line 95
    move-object/from16 v0, p3

    #@8d
    move/from16 v1, v17

    #@8f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@92
    .line 96
    const/4 v2, 0x1

    #@93
    return v2

    #@94
    .line 100
    .end local v4    # "_arg1":I
    .end local v9    # "_arg0":Landroid/net/wifi/nan/IWifiNanSessionListener;
    .end local v17    # "_result":I
    :sswitch_5
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    #@97
    move-object/from16 v0, p2

    #@99
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9f
    move-result v3

    #@a0
    .line 104
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a3
    move-result v2

    #@a4
    if-eqz v2, :cond_1

    #@a6
    .line 105
    sget-object v2, Landroid/net/wifi/nan/PublishData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a8
    move-object/from16 v0, p2

    #@aa
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ad
    move-result-object v12

    #@ae
    check-cast v12, Landroid/net/wifi/nan/PublishData;

    #@b0
    .line 111
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b3
    move-result v2

    #@b4
    if-eqz v2, :cond_2

    #@b6
    .line 112
    sget-object v2, Landroid/net/wifi/nan/PublishSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b8
    move-object/from16 v0, p2

    #@ba
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bd
    move-result-object v15

    #@be
    check-cast v15, Landroid/net/wifi/nan/PublishSettings;

    #@c0
    .line 117
    :goto_2
    move-object/from16 v0, p0

    #@c2
    invoke-virtual {v0, v3, v12, v15}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->publish(ILandroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;)V

    #@c5
    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c8
    .line 119
    const/4 v2, 0x1

    #@c9
    return v2

    #@ca
    .line 108
    :cond_1
    const/4 v12, 0x0

    #@cb
    .local v12, "_arg1":Landroid/net/wifi/nan/PublishData;
    goto :goto_1

    #@cc
    .line 115
    .end local v12    # "_arg1":Landroid/net/wifi/nan/PublishData;
    :cond_2
    const/4 v15, 0x0

    #@cd
    .local v15, "_arg2":Landroid/net/wifi/nan/PublishSettings;
    goto :goto_2

    #@ce
    .line 123
    .end local v3    # "_arg0":I
    .end local v15    # "_arg2":Landroid/net/wifi/nan/PublishSettings;
    :sswitch_6
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    #@d1
    move-object/from16 v0, p2

    #@d3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d6
    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d9
    move-result v3

    #@da
    .line 127
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dd
    move-result v2

    #@de
    if-eqz v2, :cond_3

    #@e0
    .line 128
    sget-object v2, Landroid/net/wifi/nan/SubscribeData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e2
    move-object/from16 v0, p2

    #@e4
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e7
    move-result-object v13

    #@e8
    check-cast v13, Landroid/net/wifi/nan/SubscribeData;

    #@ea
    .line 134
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ed
    move-result v2

    #@ee
    if-eqz v2, :cond_4

    #@f0
    .line 135
    sget-object v2, Landroid/net/wifi/nan/SubscribeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f2
    move-object/from16 v0, p2

    #@f4
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f7
    move-result-object v16

    #@f8
    check-cast v16, Landroid/net/wifi/nan/SubscribeSettings;

    #@fa
    .line 140
    :goto_4
    move-object/from16 v0, p0

    #@fc
    move-object/from16 v1, v16

    #@fe
    invoke-virtual {v0, v3, v13, v1}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->subscribe(ILandroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V

    #@101
    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@104
    .line 142
    const/4 v2, 0x1

    #@105
    return v2

    #@106
    .line 131
    :cond_3
    const/4 v13, 0x0

    #@107
    .local v13, "_arg1":Landroid/net/wifi/nan/SubscribeData;
    goto :goto_3

    #@108
    .line 138
    .end local v13    # "_arg1":Landroid/net/wifi/nan/SubscribeData;
    :cond_4
    const/16 v16, 0x0

    #@10a
    .local v16, "_arg2":Landroid/net/wifi/nan/SubscribeSettings;
    goto :goto_4

    #@10b
    .line 146
    .end local v3    # "_arg0":I
    .end local v16    # "_arg2":Landroid/net/wifi/nan/SubscribeSettings;
    :sswitch_7
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    #@10e
    move-object/from16 v0, p2

    #@110
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@113
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@116
    move-result v3

    #@117
    .line 150
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11a
    move-result v4

    #@11b
    .line 152
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@11e
    move-result-object v5

    #@11f
    .line 154
    .local v5, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@122
    move-result v6

    #@123
    .line 156
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@126
    move-result v7

    #@127
    .local v7, "_arg4":I
    move-object/from16 v2, p0

    #@129
    .line 157
    invoke-virtual/range {v2 .. v7}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->sendMessage(II[BII)V

    #@12c
    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12f
    .line 159
    const/4 v2, 0x1

    #@130
    return v2

    #@131
    .line 163
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    :sswitch_8
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    #@134
    move-object/from16 v0, p2

    #@136
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@139
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13c
    move-result v3

    #@13d
    .line 166
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@13f
    invoke-virtual {v0, v3}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->stopSession(I)V

    #@142
    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@145
    .line 168
    const/4 v2, 0x1

    #@146
    return v2

    #@147
    .line 172
    .end local v3    # "_arg0":I
    :sswitch_9
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    #@14a
    move-object/from16 v0, p2

    #@14c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14f
    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@152
    move-result v3

    #@153
    .line 175
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@155
    invoke-virtual {v0, v3}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->destroySession(I)V

    #@158
    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15b
    .line 177
    const/4 v2, 0x1

    #@15c
    return v2

    #@15d
    .line 43
    nop

    #@15e
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
