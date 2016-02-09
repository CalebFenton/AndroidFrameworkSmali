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

.field static final TRANSACTION_notifyCallForwardingChanged:I = 0xb

.field static final TRANSACTION_notifyCallForwardingChangedForSubscriber:I = 0xc

.field static final TRANSACTION_notifyCallState:I = 0x5

.field static final TRANSACTION_notifyCallStateForSubscriber:I = 0x6

.field static final TRANSACTION_notifyCarrierNetworkChange:I = 0x1f

.field static final TRANSACTION_notifyCellInfo:I = 0x16

.field static final TRANSACTION_notifyCellInfoForSubscriber:I = 0x1a

.field static final TRANSACTION_notifyCellLocation:I = 0x13

.field static final TRANSACTION_notifyCellLocationForSubscriber:I = 0x14

.field static final TRANSACTION_notifyDataActivity:I = 0xd

.field static final TRANSACTION_notifyDataActivityForSubscriber:I = 0xe

.field static final TRANSACTION_notifyDataConnection:I = 0xf

.field static final TRANSACTION_notifyDataConnectionFailed:I = 0x11

.field static final TRANSACTION_notifyDataConnectionFailedForSubscriber:I = 0x12

.field static final TRANSACTION_notifyDataConnectionForSubscriber:I = 0x10

.field static final TRANSACTION_notifyDataConnectionRealTimeInfo:I = 0x1b

.field static final TRANSACTION_notifyDisconnectCause:I = 0x18

.field static final TRANSACTION_notifyMessageWaitingChangedForPhoneId:I = 0xa

.field static final TRANSACTION_notifyOemHookRawEventForSubscriber:I = 0x1d

.field static final TRANSACTION_notifyOtaspChanged:I = 0x15

.field static final TRANSACTION_notifyPreciseCallState:I = 0x17

.field static final TRANSACTION_notifyPreciseDataConnectionFailed:I = 0x19

.field static final TRANSACTION_notifyServiceStateForPhoneId:I = 0x7

.field static final TRANSACTION_notifySignalStrength:I = 0x8

.field static final TRANSACTION_notifySignalStrengthForSubscriber:I = 0x9

.field static final TRANSACTION_notifySubscriptionInfoChanged:I = 0x1e

.field static final TRANSACTION_notifyVoLteServiceStateChanged:I = 0x1c

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
    .locals 48
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
    .line 474
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
    move-result-object v36

    #@1e
    .line 51
    .local v36, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@21
    move-result-object v5

    #@22
    invoke-static {v5}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@25
    move-result-object v41

    #@26
    .line 52
    .local v41, "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    move-object/from16 v0, p0

    #@28
    move-object/from16 v1, v36

    #@2a
    move-object/from16 v2, v41

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
    .end local v36    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
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
    move-result-object v36

    #@40
    .line 62
    .restart local v36    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@43
    move-result-object v5

    #@44
    invoke-static {v5}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@47
    move-result-object v41

    #@48
    .line 63
    .restart local v41    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    move-object/from16 v0, p0

    #@4a
    move-object/from16 v1, v36

    #@4c
    move-object/from16 v2, v41

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
    .end local v36    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
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
    move-result-object v36

    #@62
    .line 73
    .restart local v36    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@65
    move-result-object v5

    #@66
    invoke-static {v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    #@69
    move-result-object v42

    #@6a
    .line 75
    .local v42, "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v45

    #@6e
    .line 77
    .local v45, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v5

    #@72
    if-eqz v5, :cond_0

    #@74
    const/16 v47, 0x1

    #@76
    .line 78
    .local v47, "_arg3":Z
    :goto_0
    move-object/from16 v0, p0

    #@78
    move-object/from16 v1, v36

    #@7a
    move-object/from16 v2, v42

    #@7c
    move/from16 v3, v45

    #@7e
    move/from16 v4, v47

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
    .end local v47    # "_arg3":Z
    :cond_0
    const/16 v47, 0x0

    #@8a
    .restart local v47    # "_arg3":Z
    goto :goto_0

    #@8b
    .line 84
    .end local v36    # "_arg0":Ljava/lang/String;
    .end local v42    # "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v45    # "_arg2":I
    .end local v47    # "_arg3":Z
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
    .restart local v10    # "_arg4":Z
    goto :goto_1

    #@ba
    .line 101
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Z
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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e7
    move-result-object v14

    #@e8
    .line 119
    .local v14, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ea
    move/from16 v1, v23

    #@ec
    invoke-virtual {v0, v6, v1, v14}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallStateForSubscriber(IILjava/lang/String;)V

    #@ef
    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f2
    .line 121
    const/4 v5, 0x1

    #@f3
    return v5

    #@f4
    .line 125
    .end local v6    # "_arg0":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v23    # "_arg1":I
    :sswitch_7
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@f7
    move-object/from16 v0, p2

    #@f9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fc
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ff
    move-result v6

    #@100
    .line 129
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@103
    move-result v23

    #@104
    .line 131
    .restart local v23    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@107
    move-result v5

    #@108
    if-eqz v5, :cond_2

    #@10a
    .line 132
    sget-object v5, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10c
    move-object/from16 v0, p2

    #@10e
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@111
    move-result-object v46

    #@112
    check-cast v46, Landroid/telephony/ServiceState;

    #@114
    .line 137
    :goto_2
    move-object/from16 v0, p0

    #@116
    move/from16 v1, v23

    #@118
    move-object/from16 v2, v46

    #@11a
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V

    #@11d
    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@120
    .line 139
    const/4 v5, 0x1

    #@121
    return v5

    #@122
    .line 135
    :cond_2
    const/16 v46, 0x0

    #@124
    .local v46, "_arg2":Landroid/telephony/ServiceState;
    goto :goto_2

    #@125
    .line 143
    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    .end local v46    # "_arg2":Landroid/telephony/ServiceState;
    :sswitch_8
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@128
    move-object/from16 v0, p2

    #@12a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12d
    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@130
    move-result v5

    #@131
    if-eqz v5, :cond_3

    #@133
    .line 146
    sget-object v5, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    #@135
    move-object/from16 v0, p2

    #@137
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13a
    move-result-object v34

    #@13b
    check-cast v34, Landroid/telephony/SignalStrength;

    #@13d
    .line 151
    :goto_3
    move-object/from16 v0, p0

    #@13f
    move-object/from16 v1, v34

    #@141
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrength(Landroid/telephony/SignalStrength;)V

    #@144
    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@147
    .line 153
    const/4 v5, 0x1

    #@148
    return v5

    #@149
    .line 149
    :cond_3
    const/16 v34, 0x0

    #@14b
    .local v34, "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_3

    #@14c
    .line 157
    .end local v34    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_9
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@14f
    move-object/from16 v0, p2

    #@151
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@154
    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@157
    move-result v6

    #@158
    .line 161
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15b
    move-result v5

    #@15c
    if-eqz v5, :cond_4

    #@15e
    .line 162
    sget-object v5, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    #@160
    move-object/from16 v0, p2

    #@162
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@165
    move-result-object v40

    #@166
    check-cast v40, Landroid/telephony/SignalStrength;

    #@168
    .line 167
    :goto_4
    move-object/from16 v0, p0

    #@16a
    move-object/from16 v1, v40

    #@16c
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V

    #@16f
    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@172
    .line 169
    const/4 v5, 0x1

    #@173
    return v5

    #@174
    .line 165
    :cond_4
    const/16 v40, 0x0

    #@176
    .local v40, "_arg1":Landroid/telephony/SignalStrength;
    goto :goto_4

    #@177
    .line 173
    .end local v6    # "_arg0":I
    .end local v40    # "_arg1":Landroid/telephony/SignalStrength;
    :sswitch_a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@17a
    move-object/from16 v0, p2

    #@17c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17f
    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@182
    move-result v6

    #@183
    .line 177
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@186
    move-result v23

    #@187
    .line 179
    .restart local v23    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18a
    move-result v5

    #@18b
    if-eqz v5, :cond_5

    #@18d
    const/16 v24, 0x1

    #@18f
    .line 180
    .local v24, "_arg2":Z
    :goto_5
    move-object/from16 v0, p0

    #@191
    move/from16 v1, v23

    #@193
    move/from16 v2, v24

    #@195
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChangedForPhoneId(IIZ)V

    #@198
    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19b
    .line 182
    const/4 v5, 0x1

    #@19c
    return v5

    #@19d
    .line 179
    .end local v24    # "_arg2":Z
    :cond_5
    const/16 v24, 0x0

    #@19f
    .restart local v24    # "_arg2":Z
    goto :goto_5

    #@1a0
    .line 186
    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    .end local v24    # "_arg2":Z
    :sswitch_b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@1a3
    move-object/from16 v0, p2

    #@1a5
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a8
    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ab
    move-result v5

    #@1ac
    if-eqz v5, :cond_6

    #@1ae
    const/16 v38, 0x1

    #@1b0
    .line 189
    .local v38, "_arg0":Z
    :goto_6
    move-object/from16 v0, p0

    #@1b2
    move/from16 v1, v38

    #@1b4
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChanged(Z)V

    #@1b7
    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ba
    .line 191
    const/4 v5, 0x1

    #@1bb
    return v5

    #@1bc
    .line 188
    .end local v38    # "_arg0":Z
    :cond_6
    const/16 v38, 0x0

    #@1be
    .restart local v38    # "_arg0":Z
    goto :goto_6

    #@1bf
    .line 195
    .end local v38    # "_arg0":Z
    :sswitch_c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@1c2
    move-object/from16 v0, p2

    #@1c4
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c7
    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ca
    move-result v6

    #@1cb
    .line 199
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ce
    move-result v5

    #@1cf
    if-eqz v5, :cond_7

    #@1d1
    const/4 v13, 0x1

    #@1d2
    .line 200
    .local v13, "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    #@1d4
    invoke-virtual {v0, v6, v13}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChangedForSubscriber(IZ)V

    #@1d7
    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1da
    .line 202
    const/4 v5, 0x1

    #@1db
    return v5

    #@1dc
    .line 199
    .end local v13    # "_arg1":Z
    :cond_7
    const/4 v13, 0x0

    #@1dd
    .restart local v13    # "_arg1":Z
    goto :goto_7

    #@1de
    .line 206
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Z
    :sswitch_d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@1e1
    move-object/from16 v0, p2

    #@1e3
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e6
    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e9
    move-result v6

    #@1ea
    .line 209
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@1ec
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivity(I)V

    #@1ef
    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f2
    .line 211
    const/4 v5, 0x1

    #@1f3
    return v5

    #@1f4
    .line 215
    .end local v6    # "_arg0":I
    :sswitch_e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@1f7
    move-object/from16 v0, p2

    #@1f9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fc
    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ff
    move-result v6

    #@200
    .line 219
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@203
    move-result v23

    #@204
    .line 220
    .restart local v23    # "_arg1":I
    move-object/from16 v0, p0

    #@206
    move/from16 v1, v23

    #@208
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivityForSubscriber(II)V

    #@20b
    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20e
    .line 222
    const/4 v5, 0x1

    #@20f
    return v5

    #@210
    .line 226
    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    :sswitch_f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@213
    move-object/from16 v0, p2

    #@215
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@218
    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21b
    move-result v6

    #@21c
    .line 230
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21f
    move-result v5

    #@220
    if-eqz v5, :cond_8

    #@222
    const/4 v13, 0x1

    #@223
    .line 232
    .restart local v13    # "_arg1":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@226
    move-result-object v14

    #@227
    .line 234
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22a
    move-result-object v15

    #@22b
    .line 236
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22e
    move-result-object v16

    #@22f
    .line 238
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@232
    move-result v5

    #@233
    if-eqz v5, :cond_9

    #@235
    .line 239
    sget-object v5, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@237
    move-object/from16 v0, p2

    #@239
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23c
    move-result-object v17

    #@23d
    check-cast v17, Landroid/net/LinkProperties;

    #@23f
    .line 245
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@242
    move-result v5

    #@243
    if-eqz v5, :cond_a

    #@245
    .line 246
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@247
    move-object/from16 v0, p2

    #@249
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24c
    move-result-object v18

    #@24d
    check-cast v18, Landroid/net/NetworkCapabilities;

    #@24f
    .line 252
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@252
    move-result v19

    #@253
    .line 254
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@256
    move-result v5

    #@257
    if-eqz v5, :cond_b

    #@259
    const/16 v20, 0x1

    #@25b
    .local v20, "_arg8":Z
    :goto_b
    move-object/from16 v11, p0

    #@25d
    move v12, v6

    #@25e
    .line 255
    invoke-virtual/range {v11 .. v20}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    #@261
    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@264
    .line 257
    const/4 v5, 0x1

    #@265
    return v5

    #@266
    .line 230
    .end local v13    # "_arg1":Z
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg7":I
    .end local v20    # "_arg8":Z
    :cond_8
    const/4 v13, 0x0

    #@267
    .restart local v13    # "_arg1":Z
    goto :goto_8

    #@268
    .line 242
    .restart local v14    # "_arg2":Ljava/lang/String;
    .restart local v15    # "_arg3":Ljava/lang/String;
    .restart local v16    # "_arg4":Ljava/lang/String;
    :cond_9
    const/16 v17, 0x0

    #@26a
    .local v17, "_arg5":Landroid/net/LinkProperties;
    goto :goto_9

    #@26b
    .line 249
    .end local v17    # "_arg5":Landroid/net/LinkProperties;
    :cond_a
    const/16 v18, 0x0

    #@26d
    .local v18, "_arg6":Landroid/net/NetworkCapabilities;
    goto :goto_a

    #@26e
    .line 254
    .end local v18    # "_arg6":Landroid/net/NetworkCapabilities;
    .restart local v19    # "_arg7":I
    :cond_b
    const/16 v20, 0x0

    #@270
    .restart local v20    # "_arg8":Z
    goto :goto_b

    #@271
    .line 261
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Z
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg7":I
    .end local v20    # "_arg8":Z
    :sswitch_10
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@274
    move-object/from16 v0, p2

    #@276
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@279
    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27c
    move-result v6

    #@27d
    .line 265
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@280
    move-result v23

    #@281
    .line 267
    .restart local v23    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@284
    move-result v5

    #@285
    if-eqz v5, :cond_c

    #@287
    const/16 v24, 0x1

    #@289
    .line 269
    .restart local v24    # "_arg2":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28c
    move-result-object v15

    #@28d
    .line 271
    .restart local v15    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@290
    move-result-object v16

    #@291
    .line 273
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@294
    move-result-object v27

    #@295
    .line 275
    .local v27, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@298
    move-result v5

    #@299
    if-eqz v5, :cond_d

    #@29b
    .line 276
    sget-object v5, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@29d
    move-object/from16 v0, p2

    #@29f
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a2
    move-result-object v28

    #@2a3
    check-cast v28, Landroid/net/LinkProperties;

    #@2a5
    .line 282
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a8
    move-result v5

    #@2a9
    if-eqz v5, :cond_e

    #@2ab
    .line 283
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2ad
    move-object/from16 v0, p2

    #@2af
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b2
    move-result-object v29

    #@2b3
    check-cast v29, Landroid/net/NetworkCapabilities;

    #@2b5
    .line 289
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b8
    move-result v30

    #@2b9
    .line 291
    .local v30, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2bc
    move-result v5

    #@2bd
    if-eqz v5, :cond_f

    #@2bf
    const/16 v31, 0x1

    #@2c1
    .local v31, "_arg9":Z
    :goto_f
    move-object/from16 v21, p0

    #@2c3
    move/from16 v22, v6

    #@2c5
    move-object/from16 v25, v15

    #@2c7
    move-object/from16 v26, v16

    #@2c9
    .line 292
    invoke-virtual/range {v21 .. v31}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    #@2cc
    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cf
    .line 294
    const/4 v5, 0x1

    #@2d0
    return v5

    #@2d1
    .line 267
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v24    # "_arg2":Z
    .end local v27    # "_arg5":Ljava/lang/String;
    .end local v30    # "_arg8":I
    .end local v31    # "_arg9":Z
    :cond_c
    const/16 v24, 0x0

    #@2d3
    .restart local v24    # "_arg2":Z
    goto :goto_c

    #@2d4
    .line 279
    .restart local v15    # "_arg3":Ljava/lang/String;
    .restart local v16    # "_arg4":Ljava/lang/String;
    .restart local v27    # "_arg5":Ljava/lang/String;
    :cond_d
    const/16 v28, 0x0

    #@2d6
    .local v28, "_arg6":Landroid/net/LinkProperties;
    goto :goto_d

    #@2d7
    .line 286
    .end local v28    # "_arg6":Landroid/net/LinkProperties;
    :cond_e
    const/16 v29, 0x0

    #@2d9
    .local v29, "_arg7":Landroid/net/NetworkCapabilities;
    goto :goto_e

    #@2da
    .line 291
    .end local v29    # "_arg7":Landroid/net/NetworkCapabilities;
    .restart local v30    # "_arg8":I
    :cond_f
    const/16 v31, 0x0

    #@2dc
    .restart local v31    # "_arg9":Z
    goto :goto_f

    #@2dd
    .line 298
    .end local v6    # "_arg0":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v23    # "_arg1":I
    .end local v24    # "_arg2":Z
    .end local v27    # "_arg5":Ljava/lang/String;
    .end local v30    # "_arg8":I
    .end local v31    # "_arg9":Z
    :sswitch_11
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@2e0
    move-object/from16 v0, p2

    #@2e2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e5
    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e8
    move-result-object v36

    #@2e9
    .line 302
    .restart local v36    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ec
    move-result-object v7

    #@2ed
    .line 303
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2ef
    move-object/from16 v1, v36

    #@2f1
    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    #@2f4
    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f7
    .line 305
    const/4 v5, 0x1

    #@2f8
    return v5

    #@2f9
    .line 309
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v36    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@2fc
    move-object/from16 v0, p2

    #@2fe
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@301
    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@304
    move-result v6

    #@305
    .line 313
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@308
    move-result-object v7

    #@309
    .line 315
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30c
    move-result-object v14

    #@30d
    .line 316
    .restart local v14    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@30f
    invoke-virtual {v0, v6, v7, v14}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    #@312
    .line 317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@315
    .line 318
    const/4 v5, 0x1

    #@316
    return v5

    #@317
    .line 322
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@31a
    move-object/from16 v0, p2

    #@31c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31f
    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@322
    move-result v5

    #@323
    if-eqz v5, :cond_10

    #@325
    .line 325
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@327
    move-object/from16 v0, p2

    #@329
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32c
    move-result-object v32

    #@32d
    check-cast v32, Landroid/os/Bundle;

    #@32f
    .line 330
    :goto_10
    move-object/from16 v0, p0

    #@331
    move-object/from16 v1, v32

    #@333
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocation(Landroid/os/Bundle;)V

    #@336
    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@339
    .line 332
    const/4 v5, 0x1

    #@33a
    return v5

    #@33b
    .line 328
    :cond_10
    const/16 v32, 0x0

    #@33d
    .local v32, "_arg0":Landroid/os/Bundle;
    goto :goto_10

    #@33e
    .line 336
    .end local v32    # "_arg0":Landroid/os/Bundle;
    :sswitch_14
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@341
    move-object/from16 v0, p2

    #@343
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@346
    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@349
    move-result v6

    #@34a
    .line 340
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@34d
    move-result v5

    #@34e
    if-eqz v5, :cond_11

    #@350
    .line 341
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@352
    move-object/from16 v0, p2

    #@354
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@357
    move-result-object v39

    #@358
    check-cast v39, Landroid/os/Bundle;

    #@35a
    .line 346
    :goto_11
    move-object/from16 v0, p0

    #@35c
    move-object/from16 v1, v39

    #@35e
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    #@361
    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@364
    .line 348
    const/4 v5, 0x1

    #@365
    return v5

    #@366
    .line 344
    :cond_11
    const/16 v39, 0x0

    #@368
    .local v39, "_arg1":Landroid/os/Bundle;
    goto :goto_11

    #@369
    .line 352
    .end local v6    # "_arg0":I
    .end local v39    # "_arg1":Landroid/os/Bundle;
    :sswitch_15
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@36c
    move-object/from16 v0, p2

    #@36e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@371
    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@374
    move-result v6

    #@375
    .line 355
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    #@377
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOtaspChanged(I)V

    #@37a
    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37d
    .line 357
    const/4 v5, 0x1

    #@37e
    return v5

    #@37f
    .line 361
    .end local v6    # "_arg0":I
    :sswitch_16
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@382
    move-object/from16 v0, p2

    #@384
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@387
    .line 363
    sget-object v5, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@389
    move-object/from16 v0, p2

    #@38b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@38e
    move-result-object v37

    #@38f
    .line 364
    .local v37, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    #@391
    move-object/from16 v1, v37

    #@393
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfo(Ljava/util/List;)V

    #@396
    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@399
    .line 366
    const/4 v5, 0x1

    #@39a
    return v5

    #@39b
    .line 370
    .end local v37    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_17
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@39e
    move-object/from16 v0, p2

    #@3a0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a3
    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a6
    move-result v6

    #@3a7
    .line 374
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3aa
    move-result v23

    #@3ab
    .line 376
    .restart local v23    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ae
    move-result v45

    #@3af
    .line 377
    .restart local v45    # "_arg2":I
    move-object/from16 v0, p0

    #@3b1
    move/from16 v1, v23

    #@3b3
    move/from16 v2, v45

    #@3b5
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseCallState(III)V

    #@3b8
    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3bb
    .line 379
    const/4 v5, 0x1

    #@3bc
    return v5

    #@3bd
    .line 383
    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    .end local v45    # "_arg2":I
    :sswitch_18
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@3c0
    move-object/from16 v0, p2

    #@3c2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c5
    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c8
    move-result v6

    #@3c9
    .line 387
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3cc
    move-result v23

    #@3cd
    .line 388
    .restart local v23    # "_arg1":I
    move-object/from16 v0, p0

    #@3cf
    move/from16 v1, v23

    #@3d1
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisconnectCause(II)V

    #@3d4
    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d7
    .line 390
    const/4 v5, 0x1

    #@3d8
    return v5

    #@3d9
    .line 394
    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    :sswitch_19
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@3dc
    move-object/from16 v0, p2

    #@3de
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e1
    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3e4
    move-result-object v36

    #@3e5
    .line 398
    .restart local v36    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3e8
    move-result-object v7

    #@3e9
    .line 400
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3ec
    move-result-object v14

    #@3ed
    .line 402
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3f0
    move-result-object v15

    #@3f1
    .line 403
    .restart local v15    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3f3
    move-object/from16 v1, v36

    #@3f5
    invoke-virtual {v0, v1, v7, v14, v15}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3f8
    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3fb
    .line 405
    const/4 v5, 0x1

    #@3fc
    return v5

    #@3fd
    .line 409
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v36    # "_arg0":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@400
    move-object/from16 v0, p2

    #@402
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@405
    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@408
    move-result v6

    #@409
    .line 413
    .restart local v6    # "_arg0":I
    sget-object v5, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40b
    move-object/from16 v0, p2

    #@40d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@410
    move-result-object v43

    #@411
    .line 414
    .local v43, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    #@413
    move-object/from16 v1, v43

    #@415
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    #@418
    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41b
    .line 416
    const/4 v5, 0x1

    #@41c
    return v5

    #@41d
    .line 420
    .end local v6    # "_arg0":I
    .end local v43    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_1b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@420
    move-object/from16 v0, p2

    #@422
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@425
    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@428
    move-result v5

    #@429
    if-eqz v5, :cond_12

    #@42b
    .line 423
    sget-object v5, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@42d
    move-object/from16 v0, p2

    #@42f
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@432
    move-result-object v33

    #@433
    check-cast v33, Landroid/telephony/DataConnectionRealTimeInfo;

    #@435
    .line 428
    :goto_12
    move-object/from16 v0, p0

    #@437
    move-object/from16 v1, v33

    #@439
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V

    #@43c
    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43f
    .line 430
    const/4 v5, 0x1

    #@440
    return v5

    #@441
    .line 426
    :cond_12
    const/16 v33, 0x0

    #@443
    .local v33, "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    goto :goto_12

    #@444
    .line 434
    .end local v33    # "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    :sswitch_1c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@447
    move-object/from16 v0, p2

    #@449
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44c
    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44f
    move-result v5

    #@450
    if-eqz v5, :cond_13

    #@452
    .line 437
    sget-object v5, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@454
    move-object/from16 v0, p2

    #@456
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@459
    move-result-object v35

    #@45a
    check-cast v35, Landroid/telephony/VoLteServiceState;

    #@45c
    .line 442
    :goto_13
    move-object/from16 v0, p0

    #@45e
    move-object/from16 v1, v35

    #@460
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    #@463
    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@466
    .line 444
    const/4 v5, 0x1

    #@467
    return v5

    #@468
    .line 440
    :cond_13
    const/16 v35, 0x0

    #@46a
    .local v35, "_arg0":Landroid/telephony/VoLteServiceState;
    goto :goto_13

    #@46b
    .line 448
    .end local v35    # "_arg0":Landroid/telephony/VoLteServiceState;
    :sswitch_1d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@46e
    move-object/from16 v0, p2

    #@470
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@473
    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@476
    move-result v6

    #@477
    .line 452
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@47a
    move-result-object v44

    #@47b
    .line 453
    .local v44, "_arg1":[B
    move-object/from16 v0, p0

    #@47d
    move-object/from16 v1, v44

    #@47f
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOemHookRawEventForSubscriber(I[B)V

    #@482
    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@485
    .line 455
    const/4 v5, 0x1

    #@486
    return v5

    #@487
    .line 459
    .end local v6    # "_arg0":I
    .end local v44    # "_arg1":[B
    :sswitch_1e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@48a
    move-object/from16 v0, p2

    #@48c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48f
    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySubscriptionInfoChanged()V

    #@492
    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@495
    .line 462
    const/4 v5, 0x1

    #@496
    return v5

    #@497
    .line 466
    :sswitch_1f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephonyRegistry"

    #@49a
    move-object/from16 v0, p2

    #@49c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49f
    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a2
    move-result v5

    #@4a3
    if-eqz v5, :cond_14

    #@4a5
    const/16 v38, 0x1

    #@4a7
    .line 469
    .restart local v38    # "_arg0":Z
    :goto_14
    move-object/from16 v0, p0

    #@4a9
    move/from16 v1, v38

    #@4ab
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierNetworkChange(Z)V

    #@4ae
    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b1
    .line 471
    const/4 v5, 0x1

    #@4b2
    return v5

    #@4b3
    .line 468
    .end local v38    # "_arg0":Z
    :cond_14
    const/16 v38, 0x0

    #@4b5
    .restart local v38    # "_arg0":Z
    goto :goto_14

    #@4b6
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
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
