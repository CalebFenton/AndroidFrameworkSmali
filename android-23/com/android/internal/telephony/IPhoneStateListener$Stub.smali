.class public abstract Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.super Landroid/os/Binder;
.source "IPhoneStateListener.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneStateListener"

.field static final TRANSACTION_onCallForwardingIndicatorChanged:I = 0x4

.field static final TRANSACTION_onCallStateChanged:I = 0x6

.field static final TRANSACTION_onCarrierNetworkChange:I = 0x11

.field static final TRANSACTION_onCellInfoChanged:I = 0xb

.field static final TRANSACTION_onCellLocationChanged:I = 0x5

.field static final TRANSACTION_onDataActivity:I = 0x8

.field static final TRANSACTION_onDataConnectionRealTimeInfoChanged:I = 0xe

.field static final TRANSACTION_onDataConnectionStateChanged:I = 0x7

.field static final TRANSACTION_onMessageWaitingIndicatorChanged:I = 0x3

.field static final TRANSACTION_onOemHookRawEvent:I = 0x10

.field static final TRANSACTION_onOtaspChanged:I = 0xa

.field static final TRANSACTION_onPreciseCallStateChanged:I = 0xc

.field static final TRANSACTION_onPreciseDataConnectionStateChanged:I = 0xd

.field static final TRANSACTION_onServiceStateChanged:I = 0x1

.field static final TRANSACTION_onSignalStrengthChanged:I = 0x2

.field static final TRANSACTION_onSignalStrengthsChanged:I = 0x9

.field static final TRANSACTION_onVoLteServiceStateChanged:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 15
    const-string/jumbo v0, "com.android.internal.telephony.IPhoneStateListener"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 23
    if-nez p0, :cond_0

    #@3
    .line 24
    return-object v1

    #@4
    .line 26
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.IPhoneStateListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneStateListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 28
    check-cast v0, Lcom/android/internal/telephony/IPhoneStateListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 221
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v14

    #@7
    return v14

    #@8
    .line 42
    :sswitch_0
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 43
    const/4 v14, 0x1

    #@11
    return v14

    #@12
    .line 47
    :sswitch_1
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v14

    #@1e
    if-eqz v14, :cond_0

    #@20
    .line 50
    sget-object v14, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v6

    #@28
    check-cast v6, Landroid/telephony/ServiceState;

    #@2a
    .line 55
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    #@2d
    .line 56
    const/4 v14, 0x1

    #@2e
    return v14

    #@2f
    .line 53
    :cond_0
    const/4 v6, 0x0

    #@30
    .local v6, "_arg0":Landroid/telephony/ServiceState;
    goto :goto_0

    #@31
    .line 60
    .end local v6    # "_arg0":Landroid/telephony/ServiceState;
    :sswitch_2
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@34
    move-object/from16 v0, p2

    #@36
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v1

    #@3d
    .line 63
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthChanged(I)V

    #@40
    .line 64
    const/4 v14, 0x1

    #@41
    return v14

    #@42
    .line 68
    .end local v1    # "_arg0":I
    :sswitch_3
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@45
    move-object/from16 v0, p2

    #@47
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v14

    #@4e
    if-eqz v14, :cond_1

    #@50
    const/4 v10, 0x1

    #@51
    .line 71
    .local v10, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMessageWaitingIndicatorChanged(Z)V

    #@54
    .line 72
    const/4 v14, 0x1

    #@55
    return v14

    #@56
    .line 70
    .end local v10    # "_arg0":Z
    :cond_1
    const/4 v10, 0x0

    #@57
    .restart local v10    # "_arg0":Z
    goto :goto_1

    #@58
    .line 76
    .end local v10    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@5b
    move-object/from16 v0, p2

    #@5d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v14

    #@64
    if-eqz v14, :cond_2

    #@66
    const/4 v10, 0x1

    #@67
    .line 79
    .restart local v10    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallForwardingIndicatorChanged(Z)V

    #@6a
    .line 80
    const/4 v14, 0x1

    #@6b
    return v14

    #@6c
    .line 78
    .end local v10    # "_arg0":Z
    :cond_2
    const/4 v10, 0x0

    #@6d
    .restart local v10    # "_arg0":Z
    goto :goto_2

    #@6e
    .line 84
    .end local v10    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@71
    move-object/from16 v0, p2

    #@73
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v14

    #@7a
    if-eqz v14, :cond_3

    #@7c
    .line 87
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7e
    move-object/from16 v0, p2

    #@80
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@83
    move-result-object v2

    #@84
    check-cast v2, Landroid/os/Bundle;

    #@86
    .line 92
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellLocationChanged(Landroid/os/Bundle;)V

    #@89
    .line 93
    const/4 v14, 0x1

    #@8a
    return v14

    #@8b
    .line 90
    :cond_3
    const/4 v2, 0x0

    #@8c
    .local v2, "_arg0":Landroid/os/Bundle;
    goto :goto_3

    #@8d
    .line 97
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@90
    move-object/from16 v0, p2

    #@92
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@95
    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@98
    move-result v1

    #@99
    .line 101
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9c
    move-result-object v13

    #@9d
    .line 102
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v13}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallStateChanged(ILjava/lang/String;)V

    #@a0
    .line 103
    const/4 v14, 0x1

    #@a1
    return v14

    #@a2
    .line 107
    .end local v1    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@a5
    move-object/from16 v0, p2

    #@a7
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aa
    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v1

    #@ae
    .line 111
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b1
    move-result v12

    #@b2
    .line 112
    .local v12, "_arg1":I
    invoke-virtual {p0, v1, v12}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionStateChanged(II)V

    #@b5
    .line 113
    const/4 v14, 0x1

    #@b6
    return v14

    #@b7
    .line 117
    .end local v1    # "_arg0":I
    .end local v12    # "_arg1":I
    :sswitch_8
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@ba
    move-object/from16 v0, p2

    #@bc
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bf
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c2
    move-result v1

    #@c3
    .line 120
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivity(I)V

    #@c6
    .line 121
    const/4 v14, 0x1

    #@c7
    return v14

    #@c8
    .line 125
    .end local v1    # "_arg0":I
    :sswitch_9
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@cb
    move-object/from16 v0, p2

    #@cd
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d0
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d3
    move-result v14

    #@d4
    if-eqz v14, :cond_4

    #@d6
    .line 128
    sget-object v14, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d8
    move-object/from16 v0, p2

    #@da
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@dd
    move-result-object v7

    #@de
    check-cast v7, Landroid/telephony/SignalStrength;

    #@e0
    .line 133
    :goto_4
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    #@e3
    .line 134
    const/4 v14, 0x1

    #@e4
    return v14

    #@e5
    .line 131
    :cond_4
    const/4 v7, 0x0

    #@e6
    .local v7, "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_4

    #@e7
    .line 138
    .end local v7    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_a
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@ea
    move-object/from16 v0, p2

    #@ec
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ef
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f2
    move-result v1

    #@f3
    .line 141
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOtaspChanged(I)V

    #@f6
    .line 142
    const/4 v14, 0x1

    #@f7
    return v14

    #@f8
    .line 146
    .end local v1    # "_arg0":I
    :sswitch_b
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@fb
    move-object/from16 v0, p2

    #@fd
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@100
    .line 148
    sget-object v14, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@102
    move-object/from16 v0, p2

    #@104
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@107
    move-result-object v9

    #@108
    .line 149
    .local v9, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellInfoChanged(Ljava/util/List;)V

    #@10b
    .line 150
    const/4 v14, 0x1

    #@10c
    return v14

    #@10d
    .line 154
    .end local v9    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_c
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@110
    move-object/from16 v0, p2

    #@112
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@115
    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@118
    move-result v14

    #@119
    if-eqz v14, :cond_5

    #@11b
    .line 157
    sget-object v14, Landroid/telephony/PreciseCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11d
    move-object/from16 v0, p2

    #@11f
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@122
    move-result-object v4

    #@123
    check-cast v4, Landroid/telephony/PreciseCallState;

    #@125
    .line 162
    :goto_5
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    #@128
    .line 163
    const/4 v14, 0x1

    #@129
    return v14

    #@12a
    .line 160
    :cond_5
    const/4 v4, 0x0

    #@12b
    .local v4, "_arg0":Landroid/telephony/PreciseCallState;
    goto :goto_5

    #@12c
    .line 167
    .end local v4    # "_arg0":Landroid/telephony/PreciseCallState;
    :sswitch_d
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@12f
    move-object/from16 v0, p2

    #@131
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@134
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@137
    move-result v14

    #@138
    if-eqz v14, :cond_6

    #@13a
    .line 170
    sget-object v14, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13c
    move-object/from16 v0, p2

    #@13e
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@141
    move-result-object v5

    #@142
    check-cast v5, Landroid/telephony/PreciseDataConnectionState;

    #@144
    .line 175
    :goto_6
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    #@147
    .line 176
    const/4 v14, 0x1

    #@148
    return v14

    #@149
    .line 173
    :cond_6
    const/4 v5, 0x0

    #@14a
    .local v5, "_arg0":Landroid/telephony/PreciseDataConnectionState;
    goto :goto_6

    #@14b
    .line 180
    .end local v5    # "_arg0":Landroid/telephony/PreciseDataConnectionState;
    :sswitch_e
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@14e
    move-object/from16 v0, p2

    #@150
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@153
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@156
    move-result v14

    #@157
    if-eqz v14, :cond_7

    #@159
    .line 183
    sget-object v14, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15b
    move-object/from16 v0, p2

    #@15d
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@160
    move-result-object v3

    #@161
    check-cast v3, Landroid/telephony/DataConnectionRealTimeInfo;

    #@163
    .line 188
    :goto_7
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    #@166
    .line 189
    const/4 v14, 0x1

    #@167
    return v14

    #@168
    .line 186
    :cond_7
    const/4 v3, 0x0

    #@169
    .local v3, "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    goto :goto_7

    #@16a
    .line 193
    .end local v3    # "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    :sswitch_f
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@16d
    move-object/from16 v0, p2

    #@16f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@172
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@175
    move-result v14

    #@176
    if-eqz v14, :cond_8

    #@178
    .line 196
    sget-object v14, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17a
    move-object/from16 v0, p2

    #@17c
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17f
    move-result-object v8

    #@180
    check-cast v8, Landroid/telephony/VoLteServiceState;

    #@182
    .line 201
    :goto_8
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    #@185
    .line 202
    const/4 v14, 0x1

    #@186
    return v14

    #@187
    .line 199
    :cond_8
    const/4 v8, 0x0

    #@188
    .local v8, "_arg0":Landroid/telephony/VoLteServiceState;
    goto :goto_8

    #@189
    .line 206
    .end local v8    # "_arg0":Landroid/telephony/VoLteServiceState;
    :sswitch_10
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@18c
    move-object/from16 v0, p2

    #@18e
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@191
    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@194
    move-result-object v11

    #@195
    .line 209
    .local v11, "_arg0":[B
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOemHookRawEvent([B)V

    #@198
    .line 210
    const/4 v14, 0x1

    #@199
    return v14

    #@19a
    .line 214
    .end local v11    # "_arg0":[B
    :sswitch_11
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    #@19d
    move-object/from16 v0, p2

    #@19f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a2
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a5
    move-result v14

    #@1a6
    if-eqz v14, :cond_9

    #@1a8
    const/4 v10, 0x1

    #@1a9
    .line 217
    .restart local v10    # "_arg0":Z
    :goto_9
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierNetworkChange(Z)V

    #@1ac
    .line 218
    const/4 v14, 0x1

    #@1ad
    return v14

    #@1ae
    .line 216
    .end local v10    # "_arg0":Z
    :cond_9
    const/4 v10, 0x0

    #@1af
    .restart local v10    # "_arg0":Z
    goto :goto_9

    #@1b0
    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
