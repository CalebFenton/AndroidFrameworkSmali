.class public abstract Lcom/android/internal/telecom/ITelecomService$Stub;
.super Landroid/os/Binder;
.source "ITelecomService.java"

# interfaces
.implements Lcom/android/internal/telecom/ITelecomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ITelecomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ITelecomService"

.field static final TRANSACTION_acceptRingingCall:I = 0x1d

.field static final TRANSACTION_acceptRingingCallWithVideoState:I = 0x1e

.field static final TRANSACTION_addNewIncomingCall:I = 0x25

.field static final TRANSACTION_addNewUnknownCall:I = 0x26

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0x1f

.field static final TRANSACTION_clearAccounts:I = 0x10

.field static final TRANSACTION_createManageBlockedNumbersIntent:I = 0x2a

.field static final TRANSACTION_dumpCallAnalytics:I = 0x17

.field static final TRANSACTION_enablePhoneAccount:I = 0x28

.field static final TRANSACTION_endCall:I = 0x1c

.field static final TRANSACTION_getAdnUriForPhoneAccount:I = 0x22

.field static final TRANSACTION_getAllPhoneAccountHandles:I = 0xb

.field static final TRANSACTION_getAllPhoneAccounts:I = 0xa

.field static final TRANSACTION_getAllPhoneAccountsCount:I = 0x9

.field static final TRANSACTION_getCallCapablePhoneAccounts:I = 0x5

.field static final TRANSACTION_getCallState:I = 0x1b

.field static final TRANSACTION_getCurrentTtyMode:I = 0x24

.field static final TRANSACTION_getDefaultDialerPackage:I = 0x15

.field static final TRANSACTION_getDefaultOutgoingPhoneAccount:I = 0x2

.field static final TRANSACTION_getDefaultPhoneApp:I = 0x14

.field static final TRANSACTION_getLine1Number:I = 0x13

.field static final TRANSACTION_getPhoneAccount:I = 0x8

.field static final TRANSACTION_getPhoneAccountsForPackage:I = 0x7

.field static final TRANSACTION_getPhoneAccountsSupportingScheme:I = 0x6

.field static final TRANSACTION_getSimCallManager:I = 0xc

.field static final TRANSACTION_getSimCallManagerForUser:I = 0xd

.field static final TRANSACTION_getSystemDialerPackage:I = 0x16

.field static final TRANSACTION_getUserSelectedOutgoingPhoneAccount:I = 0x3

.field static final TRANSACTION_getVoiceMailNumber:I = 0x12

.field static final TRANSACTION_handlePinMmi:I = 0x20

.field static final TRANSACTION_handlePinMmiForPhoneAccount:I = 0x21

.field static final TRANSACTION_isInCall:I = 0x19

.field static final TRANSACTION_isRinging:I = 0x1a

.field static final TRANSACTION_isTtySupported:I = 0x23

.field static final TRANSACTION_isVoiceMailNumber:I = 0x11

.field static final TRANSACTION_placeCall:I = 0x27

.field static final TRANSACTION_registerPhoneAccount:I = 0xe

.field static final TRANSACTION_setDefaultDialer:I = 0x29

.field static final TRANSACTION_setUserSelectedOutgoingPhoneAccount:I = 0x4

.field static final TRANSACTION_showInCallScreen:I = 0x1

.field static final TRANSACTION_silenceRinger:I = 0x18

.field static final TRANSACTION_unregisterPhoneAccount:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "com.android.internal.telecom.ITelecomService"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;
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
    const-string/jumbo v1, "com.android.internal.telecom.ITelecomService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telecom/ITelecomService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Lcom/android/internal/telecom/ITelecomService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 25
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
    .line 595
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v24

    #@7
    return v24

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v24

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 48
    const/16 v24, 0x1

    #@14
    return v24

    #@15
    .line 52
    :sswitch_1
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v24

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v24

    #@23
    if-eqz v24, :cond_0

    #@25
    const/4 v8, 0x1

    #@26
    .line 56
    .local v8, "_arg0":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29
    move-result-object v10

    #@2a
    .line 57
    .local v10, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2c
    invoke-virtual {v0, v8, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->showInCallScreen(ZLjava/lang/String;)V

    #@2f
    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@32
    .line 59
    const/16 v24, 0x1

    #@34
    return v24

    #@35
    .line 54
    .end local v8    # "_arg0":Z
    .end local v10    # "_arg1":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    #@36
    .restart local v8    # "_arg0":Z
    goto :goto_0

    #@37
    .line 63
    .end local v8    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@3a
    move-object/from16 v0, p2

    #@3c
    move-object/from16 v1, v24

    #@3e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    .line 67
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@48
    move-result-object v10

    #@49
    .line 68
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4b
    invoke-virtual {v0, v7, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    #@4e
    move-result-object v18

    #@4f
    .line 69
    .local v18, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@52
    .line 70
    if-eqz v18, :cond_1

    #@54
    .line 71
    const/16 v24, 0x1

    #@56
    move-object/from16 v0, p3

    #@58
    move/from16 v1, v24

    #@5a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    .line 72
    const/16 v24, 0x1

    #@5f
    move-object/from16 v0, v18

    #@61
    move-object/from16 v1, p3

    #@63
    move/from16 v2, v24

    #@65
    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@68
    .line 77
    :goto_1
    const/16 v24, 0x1

    #@6a
    return v24

    #@6b
    .line 75
    :cond_1
    const/16 v24, 0x0

    #@6d
    move-object/from16 v0, p3

    #@6f
    move/from16 v1, v24

    #@71
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@74
    goto :goto_1

    #@75
    .line 81
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v18    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_3
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@78
    move-object/from16 v0, p2

    #@7a
    move-object/from16 v1, v24

    #@7c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f
    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    #@82
    move-result-object v18

    #@83
    .line 83
    .restart local v18    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@86
    .line 84
    if-eqz v18, :cond_2

    #@88
    .line 85
    const/16 v24, 0x1

    #@8a
    move-object/from16 v0, p3

    #@8c
    move/from16 v1, v24

    #@8e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@91
    .line 86
    const/16 v24, 0x1

    #@93
    move-object/from16 v0, v18

    #@95
    move-object/from16 v1, p3

    #@97
    move/from16 v2, v24

    #@99
    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@9c
    .line 91
    :goto_2
    const/16 v24, 0x1

    #@9e
    return v24

    #@9f
    .line 89
    :cond_2
    const/16 v24, 0x0

    #@a1
    move-object/from16 v0, p3

    #@a3
    move/from16 v1, v24

    #@a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a8
    goto :goto_2

    #@a9
    .line 95
    .end local v18    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_4
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@ac
    move-object/from16 v0, p2

    #@ae
    move-object/from16 v1, v24

    #@b0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b3
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b6
    move-result v24

    #@b7
    if-eqz v24, :cond_3

    #@b9
    .line 98
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bb
    move-object/from16 v0, v24

    #@bd
    move-object/from16 v1, p2

    #@bf
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c2
    move-result-object v6

    #@c3
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@c5
    .line 103
    :goto_3
    move-object/from16 v0, p0

    #@c7
    invoke-virtual {v0, v6}, Lcom/android/internal/telecom/ITelecomService$Stub;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    #@ca
    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cd
    .line 105
    const/16 v24, 0x1

    #@cf
    return v24

    #@d0
    .line 101
    :cond_3
    const/4 v6, 0x0

    #@d1
    .local v6, "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_3

    #@d2
    .line 109
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_5
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@d5
    move-object/from16 v0, p2

    #@d7
    move-object/from16 v1, v24

    #@d9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dc
    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@df
    move-result v24

    #@e0
    if-eqz v24, :cond_4

    #@e2
    const/4 v8, 0x1

    #@e3
    .line 113
    .restart local v8    # "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e6
    move-result-object v10

    #@e7
    .line 114
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e9
    invoke-virtual {v0, v8, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallCapablePhoneAccounts(ZLjava/lang/String;)Ljava/util/List;

    #@ec
    move-result-object v22

    #@ed
    .line 115
    .local v22, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f0
    .line 116
    move-object/from16 v0, p3

    #@f2
    move-object/from16 v1, v22

    #@f4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@f7
    .line 117
    const/16 v24, 0x1

    #@f9
    return v24

    #@fa
    .line 111
    .end local v8    # "_arg0":Z
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_4
    const/4 v8, 0x0

    #@fb
    .restart local v8    # "_arg0":Z
    goto :goto_4

    #@fc
    .line 121
    .end local v8    # "_arg0":Z
    :sswitch_6
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@ff
    move-object/from16 v0, p2

    #@101
    move-object/from16 v1, v24

    #@103
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@106
    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@109
    move-result-object v7

    #@10a
    .line 125
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10d
    move-result-object v10

    #@10e
    .line 126
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@110
    invoke-virtual {v0, v7, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@113
    move-result-object v22

    #@114
    .line 127
    .restart local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@117
    .line 128
    move-object/from16 v0, p3

    #@119
    move-object/from16 v1, v22

    #@11b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@11e
    .line 129
    const/16 v24, 0x1

    #@120
    return v24

    #@121
    .line 133
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_7
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@124
    move-object/from16 v0, p2

    #@126
    move-object/from16 v1, v24

    #@128
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12b
    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12e
    move-result-object v7

    #@12f
    .line 136
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@131
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;

    #@134
    move-result-object v22

    #@135
    .line 137
    .restart local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@138
    .line 138
    move-object/from16 v0, p3

    #@13a
    move-object/from16 v1, v22

    #@13c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@13f
    .line 139
    const/16 v24, 0x1

    #@141
    return v24

    #@142
    .line 143
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_8
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@145
    move-object/from16 v0, p2

    #@147
    move-object/from16 v1, v24

    #@149
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14c
    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14f
    move-result v24

    #@150
    if-eqz v24, :cond_5

    #@152
    .line 146
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@154
    move-object/from16 v0, v24

    #@156
    move-object/from16 v1, p2

    #@158
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15b
    move-result-object v6

    #@15c
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@15e
    .line 151
    :goto_5
    move-object/from16 v0, p0

    #@160
    invoke-virtual {v0, v6}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    #@163
    move-result-object v17

    #@164
    .line 152
    .local v17, "_result":Landroid/telecom/PhoneAccount;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@167
    .line 153
    if-eqz v17, :cond_6

    #@169
    .line 154
    const/16 v24, 0x1

    #@16b
    move-object/from16 v0, p3

    #@16d
    move/from16 v1, v24

    #@16f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@172
    .line 155
    const/16 v24, 0x1

    #@174
    move-object/from16 v0, v17

    #@176
    move-object/from16 v1, p3

    #@178
    move/from16 v2, v24

    #@17a
    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccount;->writeToParcel(Landroid/os/Parcel;I)V

    #@17d
    .line 160
    :goto_6
    const/16 v24, 0x1

    #@17f
    return v24

    #@180
    .line 149
    .end local v17    # "_result":Landroid/telecom/PhoneAccount;
    :cond_5
    const/4 v6, 0x0

    #@181
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_5

    #@182
    .line 158
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v17    # "_result":Landroid/telecom/PhoneAccount;
    :cond_6
    const/16 v24, 0x0

    #@184
    move-object/from16 v0, p3

    #@186
    move/from16 v1, v24

    #@188
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@18b
    goto :goto_6

    #@18c
    .line 164
    .end local v17    # "_result":Landroid/telecom/PhoneAccount;
    :sswitch_9
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@18f
    move-object/from16 v0, p2

    #@191
    move-object/from16 v1, v24

    #@193
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@196
    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountsCount()I

    #@199
    move-result v13

    #@19a
    .line 166
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19d
    .line 167
    move-object/from16 v0, p3

    #@19f
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@1a2
    .line 168
    const/16 v24, 0x1

    #@1a4
    return v24

    #@1a5
    .line 172
    .end local v13    # "_result":I
    :sswitch_a
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@1a8
    move-object/from16 v0, p2

    #@1aa
    move-object/from16 v1, v24

    #@1ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1af
    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccounts()Ljava/util/List;

    #@1b2
    move-result-object v21

    #@1b3
    .line 174
    .local v21, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b6
    .line 175
    move-object/from16 v0, p3

    #@1b8
    move-object/from16 v1, v21

    #@1ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1bd
    .line 176
    const/16 v24, 0x1

    #@1bf
    return v24

    #@1c0
    .line 180
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    :sswitch_b
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@1c3
    move-object/from16 v0, p2

    #@1c5
    move-object/from16 v1, v24

    #@1c7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ca
    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountHandles()Ljava/util/List;

    #@1cd
    move-result-object v22

    #@1ce
    .line 182
    .restart local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d1
    .line 183
    move-object/from16 v0, p3

    #@1d3
    move-object/from16 v1, v22

    #@1d5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1d8
    .line 184
    const/16 v24, 0x1

    #@1da
    return v24

    #@1db
    .line 188
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_c
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@1de
    move-object/from16 v0, p2

    #@1e0
    move-object/from16 v1, v24

    #@1e2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e5
    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    #@1e8
    move-result-object v18

    #@1e9
    .line 190
    .restart local v18    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ec
    .line 191
    if-eqz v18, :cond_7

    #@1ee
    .line 192
    const/16 v24, 0x1

    #@1f0
    move-object/from16 v0, p3

    #@1f2
    move/from16 v1, v24

    #@1f4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f7
    .line 193
    const/16 v24, 0x1

    #@1f9
    move-object/from16 v0, v18

    #@1fb
    move-object/from16 v1, p3

    #@1fd
    move/from16 v2, v24

    #@1ff
    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@202
    .line 198
    :goto_7
    const/16 v24, 0x1

    #@204
    return v24

    #@205
    .line 196
    :cond_7
    const/16 v24, 0x0

    #@207
    move-object/from16 v0, p3

    #@209
    move/from16 v1, v24

    #@20b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@20e
    goto :goto_7

    #@20f
    .line 202
    .end local v18    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_d
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@212
    move-object/from16 v0, p2

    #@214
    move-object/from16 v1, v24

    #@216
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@219
    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21c
    move-result v3

    #@21d
    .line 205
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    #@21f
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManagerForUser(I)Landroid/telecom/PhoneAccountHandle;

    #@222
    move-result-object v18

    #@223
    .line 206
    .restart local v18    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@226
    .line 207
    if-eqz v18, :cond_8

    #@228
    .line 208
    const/16 v24, 0x1

    #@22a
    move-object/from16 v0, p3

    #@22c
    move/from16 v1, v24

    #@22e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@231
    .line 209
    const/16 v24, 0x1

    #@233
    move-object/from16 v0, v18

    #@235
    move-object/from16 v1, p3

    #@237
    move/from16 v2, v24

    #@239
    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@23c
    .line 214
    :goto_8
    const/16 v24, 0x1

    #@23e
    return v24

    #@23f
    .line 212
    :cond_8
    const/16 v24, 0x0

    #@241
    move-object/from16 v0, p3

    #@243
    move/from16 v1, v24

    #@245
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@248
    goto :goto_8

    #@249
    .line 218
    .end local v3    # "_arg0":I
    .end local v18    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_e
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@24c
    move-object/from16 v0, p2

    #@24e
    move-object/from16 v1, v24

    #@250
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@253
    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@256
    move-result v24

    #@257
    if-eqz v24, :cond_9

    #@259
    .line 221
    sget-object v24, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    #@25b
    move-object/from16 v0, v24

    #@25d
    move-object/from16 v1, p2

    #@25f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@262
    move-result-object v5

    #@263
    check-cast v5, Landroid/telecom/PhoneAccount;

    #@265
    .line 226
    :goto_9
    move-object/from16 v0, p0

    #@267
    invoke-virtual {v0, v5}, Lcom/android/internal/telecom/ITelecomService$Stub;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    #@26a
    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26d
    .line 228
    const/16 v24, 0x1

    #@26f
    return v24

    #@270
    .line 224
    :cond_9
    const/4 v5, 0x0

    #@271
    .local v5, "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_9

    #@272
    .line 232
    .end local v5    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_f
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@275
    move-object/from16 v0, p2

    #@277
    move-object/from16 v1, v24

    #@279
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27c
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27f
    move-result v24

    #@280
    if-eqz v24, :cond_a

    #@282
    .line 235
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@284
    move-object/from16 v0, v24

    #@286
    move-object/from16 v1, p2

    #@288
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28b
    move-result-object v6

    #@28c
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@28e
    .line 240
    :goto_a
    move-object/from16 v0, p0

    #@290
    invoke-virtual {v0, v6}, Lcom/android/internal/telecom/ITelecomService$Stub;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    #@293
    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@296
    .line 242
    const/16 v24, 0x1

    #@298
    return v24

    #@299
    .line 238
    :cond_a
    const/4 v6, 0x0

    #@29a
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_a

    #@29b
    .line 246
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_10
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@29e
    move-object/from16 v0, p2

    #@2a0
    move-object/from16 v1, v24

    #@2a2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a5
    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a8
    move-result-object v7

    #@2a9
    .line 249
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2ab
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->clearAccounts(Ljava/lang/String;)V

    #@2ae
    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b1
    .line 251
    const/16 v24, 0x1

    #@2b3
    return v24

    #@2b4
    .line 255
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@2b7
    move-object/from16 v0, p2

    #@2b9
    move-object/from16 v1, v24

    #@2bb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2be
    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c1
    move-result v24

    #@2c2
    if-eqz v24, :cond_b

    #@2c4
    .line 258
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c6
    move-object/from16 v0, v24

    #@2c8
    move-object/from16 v1, p2

    #@2ca
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2cd
    move-result-object v6

    #@2ce
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@2d0
    .line 264
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d3
    move-result-object v10

    #@2d4
    .line 266
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d7
    move-result-object v12

    #@2d8
    .line 267
    .local v12, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2da
    invoke-virtual {v0, v6, v10, v12}, Lcom/android/internal/telecom/ITelecomService$Stub;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    #@2dd
    move-result v23

    #@2de
    .line 268
    .local v23, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e1
    .line 269
    if-eqz v23, :cond_c

    #@2e3
    const/16 v24, 0x1

    #@2e5
    :goto_c
    move-object/from16 v0, p3

    #@2e7
    move/from16 v1, v24

    #@2e9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2ec
    .line 270
    const/16 v24, 0x1

    #@2ee
    return v24

    #@2ef
    .line 261
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v23    # "_result":Z
    :cond_b
    const/4 v6, 0x0

    #@2f0
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_b

    #@2f1
    .line 269
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v10    # "_arg1":Ljava/lang/String;
    .restart local v12    # "_arg2":Ljava/lang/String;
    .restart local v23    # "_result":Z
    :cond_c
    const/16 v24, 0x0

    #@2f3
    goto :goto_c

    #@2f4
    .line 274
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v23    # "_result":Z
    :sswitch_12
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@2f7
    move-object/from16 v0, p2

    #@2f9
    move-object/from16 v1, v24

    #@2fb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fe
    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@301
    move-result v24

    #@302
    if-eqz v24, :cond_d

    #@304
    .line 277
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@306
    move-object/from16 v0, v24

    #@308
    move-object/from16 v1, p2

    #@30a
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30d
    move-result-object v6

    #@30e
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@310
    .line 283
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@313
    move-result-object v10

    #@314
    .line 284
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@316
    invoke-virtual {v0, v6, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;

    #@319
    move-result-object v19

    #@31a
    .line 285
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31d
    .line 286
    move-object/from16 v0, p3

    #@31f
    move-object/from16 v1, v19

    #@321
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@324
    .line 287
    const/16 v24, 0x1

    #@326
    return v24

    #@327
    .line 280
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    #@328
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_d

    #@329
    .line 291
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_13
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@32c
    move-object/from16 v0, p2

    #@32e
    move-object/from16 v1, v24

    #@330
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@333
    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@336
    move-result v24

    #@337
    if-eqz v24, :cond_e

    #@339
    .line 294
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33b
    move-object/from16 v0, v24

    #@33d
    move-object/from16 v1, p2

    #@33f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@342
    move-result-object v6

    #@343
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@345
    .line 300
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@348
    move-result-object v10

    #@349
    .line 301
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@34b
    invoke-virtual {v0, v6, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;

    #@34e
    move-result-object v19

    #@34f
    .line 302
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@352
    .line 303
    move-object/from16 v0, p3

    #@354
    move-object/from16 v1, v19

    #@356
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@359
    .line 304
    const/16 v24, 0x1

    #@35b
    return v24

    #@35c
    .line 297
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :cond_e
    const/4 v6, 0x0

    #@35d
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_e

    #@35e
    .line 308
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_14
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@361
    move-object/from16 v0, p2

    #@363
    move-object/from16 v1, v24

    #@365
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@368
    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultPhoneApp()Landroid/content/ComponentName;

    #@36b
    move-result-object v14

    #@36c
    .line 310
    .local v14, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@36f
    .line 311
    if-eqz v14, :cond_f

    #@371
    .line 312
    const/16 v24, 0x1

    #@373
    move-object/from16 v0, p3

    #@375
    move/from16 v1, v24

    #@377
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37a
    .line 313
    const/16 v24, 0x1

    #@37c
    move-object/from16 v0, p3

    #@37e
    move/from16 v1, v24

    #@380
    invoke-virtual {v14, v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@383
    .line 318
    :goto_f
    const/16 v24, 0x1

    #@385
    return v24

    #@386
    .line 316
    :cond_f
    const/16 v24, 0x0

    #@388
    move-object/from16 v0, p3

    #@38a
    move/from16 v1, v24

    #@38c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@38f
    goto :goto_f

    #@390
    .line 322
    .end local v14    # "_result":Landroid/content/ComponentName;
    :sswitch_15
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@393
    move-object/from16 v0, p2

    #@395
    move-object/from16 v1, v24

    #@397
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39a
    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultDialerPackage()Ljava/lang/String;

    #@39d
    move-result-object v19

    #@39e
    .line 324
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a1
    .line 325
    move-object/from16 v0, p3

    #@3a3
    move-object/from16 v1, v19

    #@3a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a8
    .line 326
    const/16 v24, 0x1

    #@3aa
    return v24

    #@3ab
    .line 330
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@3ae
    move-object/from16 v0, p2

    #@3b0
    move-object/from16 v1, v24

    #@3b2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b5
    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSystemDialerPackage()Ljava/lang/String;

    #@3b8
    move-result-object v19

    #@3b9
    .line 332
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3bc
    .line 333
    move-object/from16 v0, p3

    #@3be
    move-object/from16 v1, v19

    #@3c0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c3
    .line 334
    const/16 v24, 0x1

    #@3c5
    return v24

    #@3c6
    .line 338
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@3c9
    move-object/from16 v0, p2

    #@3cb
    move-object/from16 v1, v24

    #@3cd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d0
    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->dumpCallAnalytics()Ljava/util/List;

    #@3d3
    move-result-object v20

    #@3d4
    .line 340
    .local v20, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d7
    .line 341
    move-object/from16 v0, p3

    #@3d9
    move-object/from16 v1, v20

    #@3db
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@3de
    .line 342
    const/16 v24, 0x1

    #@3e0
    return v24

    #@3e1
    .line 346
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics;>;"
    :sswitch_18
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@3e4
    move-object/from16 v0, p2

    #@3e6
    move-object/from16 v1, v24

    #@3e8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3eb
    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3ee
    move-result-object v7

    #@3ef
    .line 349
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3f1
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->silenceRinger(Ljava/lang/String;)V

    #@3f4
    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f7
    .line 351
    const/16 v24, 0x1

    #@3f9
    return v24

    #@3fa
    .line 355
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@3fd
    move-object/from16 v0, p2

    #@3ff
    move-object/from16 v1, v24

    #@401
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@404
    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@407
    move-result-object v7

    #@408
    .line 358
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@40a
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInCall(Ljava/lang/String;)Z

    #@40d
    move-result v23

    #@40e
    .line 359
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@411
    .line 360
    if-eqz v23, :cond_10

    #@413
    const/16 v24, 0x1

    #@415
    :goto_10
    move-object/from16 v0, p3

    #@417
    move/from16 v1, v24

    #@419
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@41c
    .line 361
    const/16 v24, 0x1

    #@41e
    return v24

    #@41f
    .line 360
    :cond_10
    const/16 v24, 0x0

    #@421
    goto :goto_10

    #@422
    .line 365
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Z
    :sswitch_1a
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@425
    move-object/from16 v0, p2

    #@427
    move-object/from16 v1, v24

    #@429
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42c
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@42f
    move-result-object v7

    #@430
    .line 368
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@432
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isRinging(Ljava/lang/String;)Z

    #@435
    move-result v23

    #@436
    .line 369
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@439
    .line 370
    if-eqz v23, :cond_11

    #@43b
    const/16 v24, 0x1

    #@43d
    :goto_11
    move-object/from16 v0, p3

    #@43f
    move/from16 v1, v24

    #@441
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@444
    .line 371
    const/16 v24, 0x1

    #@446
    return v24

    #@447
    .line 370
    :cond_11
    const/16 v24, 0x0

    #@449
    goto :goto_11

    #@44a
    .line 375
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Z
    :sswitch_1b
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@44d
    move-object/from16 v0, p2

    #@44f
    move-object/from16 v1, v24

    #@451
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@454
    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallState()I

    #@457
    move-result v13

    #@458
    .line 377
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@45b
    .line 378
    move-object/from16 v0, p3

    #@45d
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@460
    .line 379
    const/16 v24, 0x1

    #@462
    return v24

    #@463
    .line 383
    .end local v13    # "_result":I
    :sswitch_1c
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@466
    move-object/from16 v0, p2

    #@468
    move-object/from16 v1, v24

    #@46a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46d
    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->endCall()Z

    #@470
    move-result v23

    #@471
    .line 385
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@474
    .line 386
    if-eqz v23, :cond_12

    #@476
    const/16 v24, 0x1

    #@478
    :goto_12
    move-object/from16 v0, p3

    #@47a
    move/from16 v1, v24

    #@47c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@47f
    .line 387
    const/16 v24, 0x1

    #@481
    return v24

    #@482
    .line 386
    :cond_12
    const/16 v24, 0x0

    #@484
    goto :goto_12

    #@485
    .line 391
    .end local v23    # "_result":Z
    :sswitch_1d
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@488
    move-object/from16 v0, p2

    #@48a
    move-object/from16 v1, v24

    #@48c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48f
    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCall()V

    #@492
    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@495
    .line 394
    const/16 v24, 0x1

    #@497
    return v24

    #@498
    .line 398
    :sswitch_1e
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@49b
    move-object/from16 v0, p2

    #@49d
    move-object/from16 v1, v24

    #@49f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a2
    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a5
    move-result v3

    #@4a6
    .line 401
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@4a8
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCallWithVideoState(I)V

    #@4ab
    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ae
    .line 403
    const/16 v24, 0x1

    #@4b0
    return v24

    #@4b1
    .line 407
    .end local v3    # "_arg0":I
    :sswitch_1f
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@4b4
    move-object/from16 v0, p2

    #@4b6
    move-object/from16 v1, v24

    #@4b8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4bb
    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4be
    move-result-object v7

    #@4bf
    .line 410
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4c1
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->cancelMissedCallsNotification(Ljava/lang/String;)V

    #@4c4
    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c7
    .line 412
    const/16 v24, 0x1

    #@4c9
    return v24

    #@4ca
    .line 416
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@4cd
    move-object/from16 v0, p2

    #@4cf
    move-object/from16 v1, v24

    #@4d1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d4
    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d7
    move-result-object v7

    #@4d8
    .line 420
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4db
    move-result-object v10

    #@4dc
    .line 421
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4de
    invoke-virtual {v0, v7, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z

    #@4e1
    move-result v23

    #@4e2
    .line 422
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e5
    .line 423
    if-eqz v23, :cond_13

    #@4e7
    const/16 v24, 0x1

    #@4e9
    :goto_13
    move-object/from16 v0, p3

    #@4eb
    move/from16 v1, v24

    #@4ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4f0
    .line 424
    const/16 v24, 0x1

    #@4f2
    return v24

    #@4f3
    .line 423
    :cond_13
    const/16 v24, 0x0

    #@4f5
    goto :goto_13

    #@4f6
    .line 428
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v23    # "_result":Z
    :sswitch_21
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@4f9
    move-object/from16 v0, p2

    #@4fb
    move-object/from16 v1, v24

    #@4fd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@500
    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@503
    move-result v24

    #@504
    if-eqz v24, :cond_14

    #@506
    .line 431
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@508
    move-object/from16 v0, v24

    #@50a
    move-object/from16 v1, p2

    #@50c
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@50f
    move-result-object v6

    #@510
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@512
    .line 437
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@515
    move-result-object v10

    #@516
    .line 439
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@519
    move-result-object v12

    #@51a
    .line 440
    .restart local v12    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@51c
    invoke-virtual {v0, v6, v10, v12}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    #@51f
    move-result v23

    #@520
    .line 441
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@523
    .line 442
    if-eqz v23, :cond_15

    #@525
    const/16 v24, 0x1

    #@527
    :goto_15
    move-object/from16 v0, p3

    #@529
    move/from16 v1, v24

    #@52b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@52e
    .line 443
    const/16 v24, 0x1

    #@530
    return v24

    #@531
    .line 434
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v23    # "_result":Z
    :cond_14
    const/4 v6, 0x0

    #@532
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_14

    #@533
    .line 442
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v10    # "_arg1":Ljava/lang/String;
    .restart local v12    # "_arg2":Ljava/lang/String;
    .restart local v23    # "_result":Z
    :cond_15
    const/16 v24, 0x0

    #@535
    goto :goto_15

    #@536
    .line 447
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v23    # "_result":Z
    :sswitch_22
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@539
    move-object/from16 v0, p2

    #@53b
    move-object/from16 v1, v24

    #@53d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@540
    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@543
    move-result v24

    #@544
    if-eqz v24, :cond_16

    #@546
    .line 450
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@548
    move-object/from16 v0, v24

    #@54a
    move-object/from16 v1, p2

    #@54c
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@54f
    move-result-object v6

    #@550
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@552
    .line 456
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@555
    move-result-object v10

    #@556
    .line 457
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@558
    invoke-virtual {v0, v6, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;

    #@55b
    move-result-object v16

    #@55c
    .line 458
    .local v16, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@55f
    .line 459
    if-eqz v16, :cond_17

    #@561
    .line 460
    const/16 v24, 0x1

    #@563
    move-object/from16 v0, p3

    #@565
    move/from16 v1, v24

    #@567
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@56a
    .line 461
    const/16 v24, 0x1

    #@56c
    move-object/from16 v0, v16

    #@56e
    move-object/from16 v1, p3

    #@570
    move/from16 v2, v24

    #@572
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@575
    .line 466
    :goto_17
    const/16 v24, 0x1

    #@577
    return v24

    #@578
    .line 453
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Landroid/net/Uri;
    :cond_16
    const/4 v6, 0x0

    #@579
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_16

    #@57a
    .line 464
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v10    # "_arg1":Ljava/lang/String;
    .restart local v16    # "_result":Landroid/net/Uri;
    :cond_17
    const/16 v24, 0x0

    #@57c
    move-object/from16 v0, p3

    #@57e
    move/from16 v1, v24

    #@580
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@583
    goto :goto_17

    #@584
    .line 470
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Landroid/net/Uri;
    :sswitch_23
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@587
    move-object/from16 v0, p2

    #@589
    move-object/from16 v1, v24

    #@58b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58e
    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@591
    move-result-object v7

    #@592
    .line 473
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@594
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isTtySupported(Ljava/lang/String;)Z

    #@597
    move-result v23

    #@598
    .line 474
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@59b
    .line 475
    if-eqz v23, :cond_18

    #@59d
    const/16 v24, 0x1

    #@59f
    :goto_18
    move-object/from16 v0, p3

    #@5a1
    move/from16 v1, v24

    #@5a3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5a6
    .line 476
    const/16 v24, 0x1

    #@5a8
    return v24

    #@5a9
    .line 475
    :cond_18
    const/16 v24, 0x0

    #@5ab
    goto :goto_18

    #@5ac
    .line 480
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Z
    :sswitch_24
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@5af
    move-object/from16 v0, p2

    #@5b1
    move-object/from16 v1, v24

    #@5b3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b6
    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5b9
    move-result-object v7

    #@5ba
    .line 483
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5bc
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCurrentTtyMode(Ljava/lang/String;)I

    #@5bf
    move-result v13

    #@5c0
    .line 484
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5c3
    .line 485
    move-object/from16 v0, p3

    #@5c5
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@5c8
    .line 486
    const/16 v24, 0x1

    #@5ca
    return v24

    #@5cb
    .line 490
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_25
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@5ce
    move-object/from16 v0, p2

    #@5d0
    move-object/from16 v1, v24

    #@5d2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d5
    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d8
    move-result v24

    #@5d9
    if-eqz v24, :cond_19

    #@5db
    .line 493
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5dd
    move-object/from16 v0, v24

    #@5df
    move-object/from16 v1, p2

    #@5e1
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5e4
    move-result-object v6

    #@5e5
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@5e7
    .line 499
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ea
    move-result v24

    #@5eb
    if-eqz v24, :cond_1a

    #@5ed
    .line 500
    sget-object v24, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5ef
    move-object/from16 v0, v24

    #@5f1
    move-object/from16 v1, p2

    #@5f3
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5f6
    move-result-object v9

    #@5f7
    check-cast v9, Landroid/os/Bundle;

    #@5f9
    .line 505
    :goto_1a
    move-object/from16 v0, p0

    #@5fb
    invoke-virtual {v0, v6, v9}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    #@5fe
    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@601
    .line 507
    const/16 v24, 0x1

    #@603
    return v24

    #@604
    .line 496
    :cond_19
    const/4 v6, 0x0

    #@605
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_19

    #@606
    .line 503
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_1a
    const/4 v9, 0x0

    #@607
    .local v9, "_arg1":Landroid/os/Bundle;
    goto :goto_1a

    #@608
    .line 511
    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_26
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@60b
    move-object/from16 v0, p2

    #@60d
    move-object/from16 v1, v24

    #@60f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@612
    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@615
    move-result v24

    #@616
    if-eqz v24, :cond_1b

    #@618
    .line 514
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@61a
    move-object/from16 v0, v24

    #@61c
    move-object/from16 v1, p2

    #@61e
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@621
    move-result-object v6

    #@622
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@624
    .line 520
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@627
    move-result v24

    #@628
    if-eqz v24, :cond_1c

    #@62a
    .line 521
    sget-object v24, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@62c
    move-object/from16 v0, v24

    #@62e
    move-object/from16 v1, p2

    #@630
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@633
    move-result-object v9

    #@634
    check-cast v9, Landroid/os/Bundle;

    #@636
    .line 526
    :goto_1c
    move-object/from16 v0, p0

    #@638
    invoke-virtual {v0, v6, v9}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    #@63b
    .line 527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@63e
    .line 528
    const/16 v24, 0x1

    #@640
    return v24

    #@641
    .line 517
    :cond_1b
    const/4 v6, 0x0

    #@642
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1b

    #@643
    .line 524
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_1c
    const/4 v9, 0x0

    #@644
    .restart local v9    # "_arg1":Landroid/os/Bundle;
    goto :goto_1c

    #@645
    .line 532
    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_27
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@648
    move-object/from16 v0, p2

    #@64a
    move-object/from16 v1, v24

    #@64c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64f
    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@652
    move-result v24

    #@653
    if-eqz v24, :cond_1d

    #@655
    .line 535
    sget-object v24, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@657
    move-object/from16 v0, v24

    #@659
    move-object/from16 v1, p2

    #@65b
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@65e
    move-result-object v4

    #@65f
    check-cast v4, Landroid/net/Uri;

    #@661
    .line 541
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@664
    move-result v24

    #@665
    if-eqz v24, :cond_1e

    #@667
    .line 542
    sget-object v24, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@669
    move-object/from16 v0, v24

    #@66b
    move-object/from16 v1, p2

    #@66d
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@670
    move-result-object v9

    #@671
    check-cast v9, Landroid/os/Bundle;

    #@673
    .line 548
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@676
    move-result-object v12

    #@677
    .line 549
    .restart local v12    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@679
    invoke-virtual {v0, v4, v9, v12}, Lcom/android/internal/telecom/ITelecomService$Stub;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;)V

    #@67c
    .line 550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@67f
    .line 551
    const/16 v24, 0x1

    #@681
    return v24

    #@682
    .line 538
    .end local v12    # "_arg2":Ljava/lang/String;
    :cond_1d
    const/4 v4, 0x0

    #@683
    .local v4, "_arg0":Landroid/net/Uri;
    goto :goto_1d

    #@684
    .line 545
    .end local v4    # "_arg0":Landroid/net/Uri;
    :cond_1e
    const/4 v9, 0x0

    #@685
    .restart local v9    # "_arg1":Landroid/os/Bundle;
    goto :goto_1e

    #@686
    .line 555
    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_28
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@689
    move-object/from16 v0, p2

    #@68b
    move-object/from16 v1, v24

    #@68d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@690
    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@693
    move-result v24

    #@694
    if-eqz v24, :cond_1f

    #@696
    .line 558
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@698
    move-object/from16 v0, v24

    #@69a
    move-object/from16 v1, p2

    #@69c
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@69f
    move-result-object v6

    #@6a0
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@6a2
    .line 564
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a5
    move-result v24

    #@6a6
    if-eqz v24, :cond_20

    #@6a8
    const/4 v11, 0x1

    #@6a9
    .line 565
    .local v11, "_arg1":Z
    :goto_20
    move-object/from16 v0, p0

    #@6ab
    invoke-virtual {v0, v6, v11}, Lcom/android/internal/telecom/ITelecomService$Stub;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z

    #@6ae
    move-result v23

    #@6af
    .line 566
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b2
    .line 567
    if-eqz v23, :cond_21

    #@6b4
    const/16 v24, 0x1

    #@6b6
    :goto_21
    move-object/from16 v0, p3

    #@6b8
    move/from16 v1, v24

    #@6ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6bd
    .line 568
    const/16 v24, 0x1

    #@6bf
    return v24

    #@6c0
    .line 561
    .end local v11    # "_arg1":Z
    .end local v23    # "_result":Z
    :cond_1f
    const/4 v6, 0x0

    #@6c1
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1f

    #@6c2
    .line 564
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_20
    const/4 v11, 0x0

    #@6c3
    goto :goto_20

    #@6c4
    .line 567
    .restart local v11    # "_arg1":Z
    .restart local v23    # "_result":Z
    :cond_21
    const/16 v24, 0x0

    #@6c6
    goto :goto_21

    #@6c7
    .line 572
    .end local v11    # "_arg1":Z
    .end local v23    # "_result":Z
    :sswitch_29
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@6ca
    move-object/from16 v0, p2

    #@6cc
    move-object/from16 v1, v24

    #@6ce
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6d1
    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6d4
    move-result-object v7

    #@6d5
    .line 575
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6d7
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->setDefaultDialer(Ljava/lang/String;)Z

    #@6da
    move-result v23

    #@6db
    .line 576
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6de
    .line 577
    if-eqz v23, :cond_22

    #@6e0
    const/16 v24, 0x1

    #@6e2
    :goto_22
    move-object/from16 v0, p3

    #@6e4
    move/from16 v1, v24

    #@6e6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6e9
    .line 578
    const/16 v24, 0x1

    #@6eb
    return v24

    #@6ec
    .line 577
    :cond_22
    const/16 v24, 0x0

    #@6ee
    goto :goto_22

    #@6ef
    .line 582
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Z
    :sswitch_2a
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@6f2
    move-object/from16 v0, p2

    #@6f4
    move-object/from16 v1, v24

    #@6f6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f9
    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->createManageBlockedNumbersIntent()Landroid/content/Intent;

    #@6fc
    move-result-object v15

    #@6fd
    .line 584
    .local v15, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@700
    .line 585
    if-eqz v15, :cond_23

    #@702
    .line 586
    const/16 v24, 0x1

    #@704
    move-object/from16 v0, p3

    #@706
    move/from16 v1, v24

    #@708
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@70b
    .line 587
    const/16 v24, 0x1

    #@70d
    move-object/from16 v0, p3

    #@70f
    move/from16 v1, v24

    #@711
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@714
    .line 592
    :goto_23
    const/16 v24, 0x1

    #@716
    return v24

    #@717
    .line 590
    :cond_23
    const/16 v24, 0x0

    #@719
    move-object/from16 v0, p3

    #@71b
    move/from16 v1, v24

    #@71d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@720
    goto :goto_23

    #@721
    .line 43
    nop

    #@722
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
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
