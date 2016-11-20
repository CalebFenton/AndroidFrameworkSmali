.class public abstract Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.super Landroid/os/Binder;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistry"

.field static final TRANSACTION_addOnSubscriptionsChangedListener:I = 0x1

.field static final TRANSACTION_listen:I = 0x3

.field static final TRANSACTION_listenForSubscriber:I = 0x4

.field static final TRANSACTION_notifyCallForwardingChanged:I = 0xa

.field static final TRANSACTION_notifyCallForwardingChangedForSubscriber:I = 0xb

.field static final TRANSACTION_notifyCallState:I = 0x5

.field static final TRANSACTION_notifyCallStateForPhoneId:I = 0x6

.field static final TRANSACTION_notifyCarrierNetworkChange:I = 0x1d

.field static final TRANSACTION_notifyCellInfo:I = 0x15

.field static final TRANSACTION_notifyCellInfoForSubscriber:I = 0x19

.field static final TRANSACTION_notifyCellLocation:I = 0x12

.field static final TRANSACTION_notifyCellLocationForSubscriber:I = 0x13

.field static final TRANSACTION_notifyDataActivity:I = 0xc

.field static final TRANSACTION_notifyDataActivityForSubscriber:I = 0xd

.field static final TRANSACTION_notifyDataConnection:I = 0xe

.field static final TRANSACTION_notifyDataConnectionFailed:I = 0x10

.field static final TRANSACTION_notifyDataConnectionFailedForSubscriber:I = 0x11

.field static final TRANSACTION_notifyDataConnectionForSubscriber:I = 0xf

.field static final TRANSACTION_notifyDisconnectCause:I = 0x17

.field static final TRANSACTION_notifyMessageWaitingChangedForPhoneId:I = 0x9

.field static final TRANSACTION_notifyOemHookRawEventForSubscriber:I = 0x1b

.field static final TRANSACTION_notifyOtaspChanged:I = 0x14

.field static final TRANSACTION_notifyPreciseCallState:I = 0x16

.field static final TRANSACTION_notifyPreciseDataConnectionFailed:I = 0x18

.field static final TRANSACTION_notifyServiceStateForPhoneId:I = 0x7

.field static final TRANSACTION_notifySignalStrengthForPhoneId:I = 0x8

.field static final TRANSACTION_notifySubscriptionInfoChanged:I = 0x1c

.field static final TRANSACTION_notifyVoLteServiceStateChanged:I = 0x1a

.field static final TRANSACTION_removeOnSubscriptionsChangedListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 15
    const-string/jumbo v0, "com.android.internal.telephony.ITelephonyRegistry"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;
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
    const-string/jumbo v1, "com.android.internal.telephony.ITelephonyRegistry"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 28
    check-cast v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 46
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
    .line 450
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v5

    #@7
    return v5

    #@8
    .line 42
    :sswitch_0
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 43
    const/4 v5, 0x1

    #@11
    return v5

    #@12
    .line 47
    :sswitch_1
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v34

    #@1e
    .line 51
    .local v34, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@21
    move-result-object v5

    #@22
    invoke-static {v5}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@25
    move-result-object v38

    #@26
    .line 52
    .local v38, "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    move-object/from16 v0, p0

    #@28
    move-object/from16 v1, v34

    #@2a
    move-object/from16 v2, v38

    #@2c
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    #@2f
    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@32
    .line 54
    const/4 v5, 0x1

    #@33
    return v5

    #@34
    .line 58
    .end local v34    # "_arg0":Ljava/lang/String;
    .end local v38    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :sswitch_2
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@37
    move-object/from16 v0, p2

    #@39
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c
    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3f
    move-result-object v34

    #@40
    .line 62
    .restart local v34    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@43
    move-result-object v5

    #@44
    invoke-static {v5}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@47
    move-result-object v38

    #@48
    .line 63
    .restart local v38    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    move-object/from16 v0, p0

    #@4a
    move-object/from16 v1, v34

    #@4c
    move-object/from16 v2, v38

    #@4e
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    #@51
    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54
    .line 65
    const/4 v5, 0x1

    #@55
    return v5

    #@56
    .line 69
    .end local v34    # "_arg0":Ljava/lang/String;
    .end local v38    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :sswitch_3
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@59
    move-object/from16 v0, p2

    #@5b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e
    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@61
    move-result-object v34

    #@62
    .line 73
    .restart local v34    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@65
    move-result-object v5

    #@66
    invoke-static {v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    #@69
    move-result-object v39

    #@6a
    .line 75
    .local v39, "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v42

    #@6e
    .line 77
    .local v42, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v5

    #@72
    if-eqz v5, :cond_0

    #@74
    const/16 v45, 0x1

    #@76
    .line 78
    .local v45, "_arg3":Z
    :goto_0
    move-object/from16 v0, p0

    #@78
    move-object/from16 v1, v34

    #@7a
    move-object/from16 v2, v39

    #@7c
    move/from16 v3, v42

    #@7e
    move/from16 v4, v45

    #@80
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    #@83
    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@86
    .line 80
    const/4 v5, 0x1

    #@87
    return v5

    #@88
    .line 77
    .end local v45    # "_arg3":Z
    :cond_0
    const/16 v45, 0x0

    #@8a
    goto :goto_0

    #@8b
    .line 84
    .end local v34    # "_arg0":Ljava/lang/String;
    .end local v39    # "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v42    # "_arg2":I
    :sswitch_4
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@8e
    move-object/from16 v0, p2

    #@90
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@93
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@96
    move-result v6

    #@97
    .line 88
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9a
    move-result-object v7

    #@9b
    .line 90
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9e
    move-result-object v5

    #@9f
    invoke-static {v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    #@a2
    move-result-object v8

    #@a3
    .line 92
    .local v8, "_arg2":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a6
    move-result v9

    #@a7
    .line 94
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aa
    move-result v5

    #@ab
    if-eqz v5, :cond_1

    #@ad
    const/4 v10, 0x1

    #@ae
    .local v10, "_arg4":Z
    :goto_1
    move-object/from16 v5, p0

    #@b0
    .line 95
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    #@b3
    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6
    .line 97
    const/4 v5, 0x1

    #@b7
    return v5

    #@b8
    .line 94
    .end local v10    # "_arg4":Z
    :cond_1
    const/4 v10, 0x0

    #@b9
    goto :goto_1

    #@ba
    .line 101
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v9    # "_arg3":I
    :sswitch_5
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@bd
    move-object/from16 v0, p2

    #@bf
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c2
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c5
    move-result v6

    #@c6
    .line 105
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c9
    move-result-object v7

    #@ca
    .line 106
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@cc
    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallState(ILjava/lang/String;)V

    #@cf
    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d2
    .line 108
    const/4 v5, 0x1

    #@d3
    return v5

    #@d4
    .line 112
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@d7
    move-object/from16 v0, p2

    #@d9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dc
    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@df
    move-result v6

    #@e0
    .line 116
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e3
    move-result v23

    #@e4
    .line 118
    .local v23, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e7
    move-result v42

    #@e8
    .line 120
    .restart local v42    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@eb
    move-result-object v15

    #@ec
    .line 121
    .local v15, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ee
    move/from16 v1, v23

    #@f0
    move/from16 v2, v42

    #@f2
    invoke-virtual {v0, v6, v1, v2, v15}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallStateForPhoneId(IIILjava/lang/String;)V

    #@f5
    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f8
    .line 123
    const/4 v5, 0x1

    #@f9
    return v5

    #@fa
    .line 127
    .end local v6    # "_arg0":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v23    # "_arg1":I
    .end local v42    # "_arg2":I
    :sswitch_7
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@fd
    move-object/from16 v0, p2

    #@ff
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@102
    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@105
    move-result v6

    #@106
    .line 131
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@109
    move-result v23

    #@10a
    .line 133
    .restart local v23    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10d
    move-result v5

    #@10e
    if-eqz v5, :cond_2

    #@110
    .line 134
    sget-object v5, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@112
    move-object/from16 v0, p2

    #@114
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@117
    move-result-object v43

    #@118
    check-cast v43, Landroid/telephony/ServiceState;

    #@11a
    .line 139
    :goto_2
    move-object/from16 v0, p0

    #@11c
    move/from16 v1, v23

    #@11e
    move-object/from16 v2, v43

    #@120
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V

    #@123
    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@126
    .line 141
    const/4 v5, 0x1

    #@127
    return v5

    #@128
    .line 137
    :cond_2
    const/16 v43, 0x0

    #@12a
    .local v43, "_arg2":Landroid/telephony/ServiceState;
    goto :goto_2

    #@12b
    .line 145
    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    .end local v43    # "_arg2":Landroid/telephony/ServiceState;
    :sswitch_8
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@12e
    move-object/from16 v0, p2

    #@130
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@133
    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@136
    move-result v6

    #@137
    .line 149
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13a
    move-result v23

    #@13b
    .line 151
    .restart local v23    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13e
    move-result v5

    #@13f
    if-eqz v5, :cond_3

    #@141
    .line 152
    sget-object v5, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    #@143
    move-object/from16 v0, p2

    #@145
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@148
    move-result-object v44

    #@149
    check-cast v44, Landroid/telephony/SignalStrength;

    #@14b
    .line 157
    :goto_3
    move-object/from16 v0, p0

    #@14d
    move/from16 v1, v23

    #@14f
    move-object/from16 v2, v44

    #@151
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V

    #@154
    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@157
    .line 159
    const/4 v5, 0x1

    #@158
    return v5

    #@159
    .line 155
    :cond_3
    const/16 v44, 0x0

    #@15b
    .local v44, "_arg2":Landroid/telephony/SignalStrength;
    goto :goto_3

    #@15c
    .line 163
    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    .end local v44    # "_arg2":Landroid/telephony/SignalStrength;
    :sswitch_9
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@15f
    move-object/from16 v0, p2

    #@161
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@164
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@167
    move-result v6

    #@168
    .line 167
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16b
    move-result v23

    #@16c
    .line 169
    .restart local v23    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16f
    move-result v5

    #@170
    if-eqz v5, :cond_4

    #@172
    const/16 v24, 0x1

    #@174
    .line 170
    .local v24, "_arg2":Z
    :goto_4
    move-object/from16 v0, p0

    #@176
    move/from16 v1, v23

    #@178
    move/from16 v2, v24

    #@17a
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChangedForPhoneId(IIZ)V

    #@17d
    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@180
    .line 172
    const/4 v5, 0x1

    #@181
    return v5

    #@182
    .line 169
    .end local v24    # "_arg2":Z
    :cond_4
    const/16 v24, 0x0

    #@184
    goto :goto_4

    #@185
    .line 176
    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    :sswitch_a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@188
    move-object/from16 v0, p2

    #@18a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18d
    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@190
    move-result v5

    #@191
    if-eqz v5, :cond_5

    #@193
    const/16 v36, 0x1

    #@195
    .line 179
    .local v36, "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    #@197
    move/from16 v1, v36

    #@199
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChanged(Z)V

    #@19c
    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19f
    .line 181
    const/4 v5, 0x1

    #@1a0
    return v5

    #@1a1
    .line 178
    .end local v36    # "_arg0":Z
    :cond_5
    const/16 v36, 0x0

    #@1a3
    goto :goto_5

    #@1a4
    .line 185
    :sswitch_b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@1a7
    move-object/from16 v0, p2

    #@1a9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ac
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1af
    move-result v6

    #@1b0
    .line 189
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b3
    move-result v5

    #@1b4
    if-eqz v5, :cond_6

    #@1b6
    const/4 v13, 0x1

    #@1b7
    .line 190
    .local v13, "_arg1":Z
    :goto_6
    move-object/from16 v0, p0

    #@1b9
    invoke-virtual {v0, v6, v13}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChangedForSubscriber(IZ)V

    #@1bc
    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bf
    .line 192
    const/4 v5, 0x1

    #@1c0
    return v5

    #@1c1
    .line 189
    .end local v13    # "_arg1":Z
    :cond_6
    const/4 v13, 0x0

    #@1c2
    goto :goto_6

    #@1c3
    .line 196
    .end local v6    # "_arg0":I
    :sswitch_c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@1c6
    move-object/from16 v0, p2

    #@1c8
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cb
    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ce
    move-result v6

    #@1cf
    .line 199
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@1d1
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivity(I)V

    #@1d4
    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d7
    .line 201
    const/4 v5, 0x1

    #@1d8
    return v5

    #@1d9
    .line 205
    .end local v6    # "_arg0":I
    :sswitch_d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@1dc
    move-object/from16 v0, p2

    #@1de
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e1
    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e4
    move-result v6

    #@1e5
    .line 209
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e8
    move-result v23

    #@1e9
    .line 210
    .restart local v23    # "_arg1":I
    move-object/from16 v0, p0

    #@1eb
    move/from16 v1, v23

    #@1ed
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivityForSubscriber(II)V

    #@1f0
    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f3
    .line 212
    const/4 v5, 0x1

    #@1f4
    return v5

    #@1f5
    .line 216
    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    :sswitch_e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@1f8
    move-object/from16 v0, p2

    #@1fa
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fd
    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@200
    move-result v6

    #@201
    .line 220
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@204
    move-result v5

    #@205
    if-eqz v5, :cond_7

    #@207
    const/4 v13, 0x1

    #@208
    .line 222
    .local v13, "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20b
    move-result-object v14

    #@20c
    .line 224
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20f
    move-result-object v15

    #@210
    .line 226
    .restart local v15    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@213
    move-result-object v16

    #@214
    .line 228
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@217
    move-result v5

    #@218
    if-eqz v5, :cond_8

    #@21a
    .line 229
    sget-object v5, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21c
    move-object/from16 v0, p2

    #@21e
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@221
    move-result-object v17

    #@222
    check-cast v17, Landroid/net/LinkProperties;

    #@224
    .line 235
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@227
    move-result v5

    #@228
    if-eqz v5, :cond_9

    #@22a
    .line 236
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22c
    move-object/from16 v0, p2

    #@22e
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@231
    move-result-object v18

    #@232
    check-cast v18, Landroid/net/NetworkCapabilities;

    #@234
    .line 242
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@237
    move-result v19

    #@238
    .line 244
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23b
    move-result v5

    #@23c
    if-eqz v5, :cond_a

    #@23e
    const/16 v20, 0x1

    #@240
    .local v20, "_arg8":Z
    :goto_a
    move-object/from16 v11, p0

    #@242
    move v12, v6

    #@243
    .line 245
    invoke-virtual/range {v11 .. v20}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    #@246
    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@249
    .line 247
    const/4 v5, 0x1

    #@24a
    return v5

    #@24b
    .line 220
    .end local v13    # "_arg1":Z
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg7":I
    .end local v20    # "_arg8":Z
    :cond_7
    const/4 v13, 0x0

    #@24c
    .restart local v13    # "_arg1":Z
    goto :goto_7

    #@24d
    .line 232
    .restart local v14    # "_arg2":Ljava/lang/String;
    .restart local v15    # "_arg3":Ljava/lang/String;
    .restart local v16    # "_arg4":Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    #@24f
    .local v17, "_arg5":Landroid/net/LinkProperties;
    goto :goto_8

    #@250
    .line 239
    .end local v17    # "_arg5":Landroid/net/LinkProperties;
    :cond_9
    const/16 v18, 0x0

    #@252
    .local v18, "_arg6":Landroid/net/NetworkCapabilities;
    goto :goto_9

    #@253
    .line 244
    .end local v18    # "_arg6":Landroid/net/NetworkCapabilities;
    .restart local v19    # "_arg7":I
    :cond_a
    const/16 v20, 0x0

    #@255
    goto :goto_a

    #@256
    .line 251
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Z
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg7":I
    :sswitch_f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@259
    move-object/from16 v0, p2

    #@25b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25e
    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@261
    move-result v6

    #@262
    .line 255
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@265
    move-result v23

    #@266
    .line 257
    .restart local v23    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@269
    move-result v5

    #@26a
    if-eqz v5, :cond_b

    #@26c
    const/16 v24, 0x1

    #@26e
    .line 259
    .local v24, "_arg2":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@271
    move-result-object v15

    #@272
    .line 261
    .restart local v15    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@275
    move-result-object v16

    #@276
    .line 263
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@279
    move-result-object v27

    #@27a
    .line 265
    .local v27, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27d
    move-result v5

    #@27e
    if-eqz v5, :cond_c

    #@280
    .line 266
    sget-object v5, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@282
    move-object/from16 v0, p2

    #@284
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@287
    move-result-object v28

    #@288
    check-cast v28, Landroid/net/LinkProperties;

    #@28a
    .line 272
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28d
    move-result v5

    #@28e
    if-eqz v5, :cond_d

    #@290
    .line 273
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@292
    move-object/from16 v0, p2

    #@294
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@297
    move-result-object v29

    #@298
    check-cast v29, Landroid/net/NetworkCapabilities;

    #@29a
    .line 279
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29d
    move-result v30

    #@29e
    .line 281
    .local v30, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a1
    move-result v5

    #@2a2
    if-eqz v5, :cond_e

    #@2a4
    const/16 v31, 0x1

    #@2a6
    .local v31, "_arg9":Z
    :goto_e
    move-object/from16 v21, p0

    #@2a8
    move/from16 v22, v6

    #@2aa
    move-object/from16 v25, v15

    #@2ac
    move-object/from16 v26, v16

    #@2ae
    .line 282
    invoke-virtual/range {v21 .. v31}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    #@2b1
    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b4
    .line 284
    const/4 v5, 0x1

    #@2b5
    return v5

    #@2b6
    .line 257
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v24    # "_arg2":Z
    .end local v27    # "_arg5":Ljava/lang/String;
    .end local v30    # "_arg8":I
    .end local v31    # "_arg9":Z
    :cond_b
    const/16 v24, 0x0

    #@2b8
    .restart local v24    # "_arg2":Z
    goto :goto_b

    #@2b9
    .line 269
    .restart local v15    # "_arg3":Ljava/lang/String;
    .restart local v16    # "_arg4":Ljava/lang/String;
    .restart local v27    # "_arg5":Ljava/lang/String;
    :cond_c
    const/16 v28, 0x0

    #@2bb
    .local v28, "_arg6":Landroid/net/LinkProperties;
    goto :goto_c

    #@2bc
    .line 276
    .end local v28    # "_arg6":Landroid/net/LinkProperties;
    :cond_d
    const/16 v29, 0x0

    #@2be
    .local v29, "_arg7":Landroid/net/NetworkCapabilities;
    goto :goto_d

    #@2bf
    .line 281
    .end local v29    # "_arg7":Landroid/net/NetworkCapabilities;
    .restart local v30    # "_arg8":I
    :cond_e
    const/16 v31, 0x0

    #@2c1
    goto :goto_e

    #@2c2
    .line 288
    .end local v6    # "_arg0":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v23    # "_arg1":I
    .end local v24    # "_arg2":Z
    .end local v27    # "_arg5":Ljava/lang/String;
    .end local v30    # "_arg8":I
    :sswitch_10
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@2c5
    move-object/from16 v0, p2

    #@2c7
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ca
    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2cd
    move-result-object v34

    #@2ce
    .line 292
    .restart local v34    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d1
    move-result-object v7

    #@2d2
    .line 293
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2d4
    move-object/from16 v1, v34

    #@2d6
    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    #@2d9
    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2dc
    .line 295
    const/4 v5, 0x1

    #@2dd
    return v5

    #@2de
    .line 299
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v34    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@2e1
    move-object/from16 v0, p2

    #@2e3
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e6
    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e9
    move-result v6

    #@2ea
    .line 303
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ed
    move-result-object v7

    #@2ee
    .line 305
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f1
    move-result-object v14

    #@2f2
    .line 306
    .restart local v14    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2f4
    invoke-virtual {v0, v6, v7, v14}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    #@2f7
    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2fa
    .line 308
    const/4 v5, 0x1

    #@2fb
    return v5

    #@2fc
    .line 312
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@2ff
    move-object/from16 v0, p2

    #@301
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@304
    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@307
    move-result v5

    #@308
    if-eqz v5, :cond_f

    #@30a
    .line 315
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30c
    move-object/from16 v0, p2

    #@30e
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@311
    move-result-object v32

    #@312
    check-cast v32, Landroid/os/Bundle;

    #@314
    .line 320
    :goto_f
    move-object/from16 v0, p0

    #@316
    move-object/from16 v1, v32

    #@318
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocation(Landroid/os/Bundle;)V

    #@31b
    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31e
    .line 322
    const/4 v5, 0x1

    #@31f
    return v5

    #@320
    .line 318
    :cond_f
    const/16 v32, 0x0

    #@322
    .local v32, "_arg0":Landroid/os/Bundle;
    goto :goto_f

    #@323
    .line 326
    .end local v32    # "_arg0":Landroid/os/Bundle;
    :sswitch_13
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@326
    move-object/from16 v0, p2

    #@328
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32b
    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@32e
    move-result v6

    #@32f
    .line 330
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@332
    move-result v5

    #@333
    if-eqz v5, :cond_10

    #@335
    .line 331
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@337
    move-object/from16 v0, p2

    #@339
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33c
    move-result-object v37

    #@33d
    check-cast v37, Landroid/os/Bundle;

    #@33f
    .line 336
    :goto_10
    move-object/from16 v0, p0

    #@341
    move-object/from16 v1, v37

    #@343
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    #@346
    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@349
    .line 338
    const/4 v5, 0x1

    #@34a
    return v5

    #@34b
    .line 334
    :cond_10
    const/16 v37, 0x0

    #@34d
    .local v37, "_arg1":Landroid/os/Bundle;
    goto :goto_10

    #@34e
    .line 342
    .end local v6    # "_arg0":I
    .end local v37    # "_arg1":Landroid/os/Bundle;
    :sswitch_14
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@351
    move-object/from16 v0, p2

    #@353
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@356
    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@359
    move-result v6

    #@35a
    .line 345
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@35c
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOtaspChanged(I)V

    #@35f
    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@362
    .line 347
    const/4 v5, 0x1

    #@363
    return v5

    #@364
    .line 351
    .end local v6    # "_arg0":I
    :sswitch_15
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@367
    move-object/from16 v0, p2

    #@369
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36c
    .line 353
    sget-object v5, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36e
    move-object/from16 v0, p2

    #@370
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@373
    move-result-object v35

    #@374
    .line 354
    .local v35, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    #@376
    move-object/from16 v1, v35

    #@378
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfo(Ljava/util/List;)V

    #@37b
    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37e
    .line 356
    const/4 v5, 0x1

    #@37f
    return v5

    #@380
    .line 360
    .end local v35    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_16
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@383
    move-object/from16 v0, p2

    #@385
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@388
    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38b
    move-result v6

    #@38c
    .line 364
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38f
    move-result v23

    #@390
    .line 366
    .restart local v23    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@393
    move-result v42

    #@394
    .line 367
    .restart local v42    # "_arg2":I
    move-object/from16 v0, p0

    #@396
    move/from16 v1, v23

    #@398
    move/from16 v2, v42

    #@39a
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseCallState(III)V

    #@39d
    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a0
    .line 369
    const/4 v5, 0x1

    #@3a1
    return v5

    #@3a2
    .line 373
    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    .end local v42    # "_arg2":I
    :sswitch_17
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@3a5
    move-object/from16 v0, p2

    #@3a7
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3aa
    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ad
    move-result v6

    #@3ae
    .line 377
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b1
    move-result v23

    #@3b2
    .line 378
    .restart local v23    # "_arg1":I
    move-object/from16 v0, p0

    #@3b4
    move/from16 v1, v23

    #@3b6
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisconnectCause(II)V

    #@3b9
    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3bc
    .line 380
    const/4 v5, 0x1

    #@3bd
    return v5

    #@3be
    .line 384
    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    :sswitch_18
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@3c1
    move-object/from16 v0, p2

    #@3c3
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c6
    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c9
    move-result-object v34

    #@3ca
    .line 388
    .restart local v34    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3cd
    move-result-object v7

    #@3ce
    .line 390
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d1
    move-result-object v14

    #@3d2
    .line 392
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d5
    move-result-object v15

    #@3d6
    .line 393
    .restart local v15    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3d8
    move-object/from16 v1, v34

    #@3da
    invoke-virtual {v0, v1, v7, v14, v15}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3dd
    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e0
    .line 395
    const/4 v5, 0x1

    #@3e1
    return v5

    #@3e2
    .line 399
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v34    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@3e5
    move-object/from16 v0, p2

    #@3e7
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ea
    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ed
    move-result v6

    #@3ee
    .line 403
    .restart local v6    # "_arg0":I
    sget-object v5, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3f0
    move-object/from16 v0, p2

    #@3f2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@3f5
    move-result-object v40

    #@3f6
    .line 404
    .local v40, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    #@3f8
    move-object/from16 v1, v40

    #@3fa
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    #@3fd
    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@400
    .line 406
    const/4 v5, 0x1

    #@401
    return v5

    #@402
    .line 410
    .end local v6    # "_arg0":I
    .end local v40    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_1a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@405
    move-object/from16 v0, p2

    #@407
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40a
    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40d
    move-result v5

    #@40e
    if-eqz v5, :cond_11

    #@410
    .line 413
    sget-object v5, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@412
    move-object/from16 v0, p2

    #@414
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@417
    move-result-object v33

    #@418
    check-cast v33, Landroid/telephony/VoLteServiceState;

    #@41a
    .line 418
    :goto_11
    move-object/from16 v0, p0

    #@41c
    move-object/from16 v1, v33

    #@41e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    #@421
    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@424
    .line 420
    const/4 v5, 0x1

    #@425
    return v5

    #@426
    .line 416
    :cond_11
    const/16 v33, 0x0

    #@428
    .local v33, "_arg0":Landroid/telephony/VoLteServiceState;
    goto :goto_11

    #@429
    .line 424
    .end local v33    # "_arg0":Landroid/telephony/VoLteServiceState;
    :sswitch_1b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@42c
    move-object/from16 v0, p2

    #@42e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@431
    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@434
    move-result v6

    #@435
    .line 428
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@438
    move-result-object v41

    #@439
    .line 429
    .local v41, "_arg1":[B
    move-object/from16 v0, p0

    #@43b
    move-object/from16 v1, v41

    #@43d
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOemHookRawEventForSubscriber(I[B)V

    #@440
    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@443
    .line 431
    const/4 v5, 0x1

    #@444
    return v5

    #@445
    .line 435
    .end local v6    # "_arg0":I
    .end local v41    # "_arg1":[B
    :sswitch_1c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@448
    move-object/from16 v0, p2

    #@44a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44d
    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySubscriptionInfoChanged()V

    #@450
    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@453
    .line 438
    const/4 v5, 0x1

    #@454
    return v5

    #@455
    .line 442
    :sswitch_1d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@458
    move-object/from16 v0, p2

    #@45a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45d
    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@460
    move-result v5

    #@461
    if-eqz v5, :cond_12

    #@463
    const/16 v36, 0x1

    #@465
    .line 445
    .restart local v36    # "_arg0":Z
    :goto_12
    move-object/from16 v0, p0

    #@467
    move/from16 v1, v36

    #@469
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierNetworkChange(Z)V

    #@46c
    .line 446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@46f
    .line 447
    const/4 v5, 0x1

    #@470
    return v5

    #@471
    .line 444
    .end local v36    # "_arg0":Z
    :cond_12
    const/16 v36, 0x0

    #@473
    goto :goto_12

    #@474
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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
