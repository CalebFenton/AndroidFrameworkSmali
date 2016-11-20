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
    .line 601
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
    move-result-object v20

    #@31a
    .line 285
    .local v20, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31d
    .line 286
    move-object/from16 v0, p3

    #@31f
    move-object/from16 v1, v20

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
    .end local v20    # "_result":Ljava/lang/String;
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
    move-result-object v20

    #@34f
    .line 302
    .restart local v20    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@352
    .line 303
    move-object/from16 v0, p3

    #@354
    move-object/from16 v1, v20

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
    .end local v20    # "_result":Ljava/lang/String;
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
    move-result-object v20

    #@39e
    .line 324
    .restart local v20    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a1
    .line 325
    move-object/from16 v0, p3

    #@3a3
    move-object/from16 v1, v20

    #@3a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a8
    .line 326
    const/16 v24, 0x1

    #@3aa
    return v24

    #@3ab
    .line 330
    .end local v20    # "_result":Ljava/lang/String;
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
    move-result-object v20

    #@3b9
    .line 332
    .restart local v20    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3bc
    .line 333
    move-object/from16 v0, p3

    #@3be
    move-object/from16 v1, v20

    #@3c0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c3
    .line 334
    const/16 v24, 0x1

    #@3c5
    return v24

    #@3c6
    .line 338
    .end local v20    # "_result":Ljava/lang/String;
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
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->dumpCallAnalytics()Landroid/telecom/TelecomAnalytics;

    #@3d3
    move-result-object v19

    #@3d4
    .line 340
    .local v19, "_result":Landroid/telecom/TelecomAnalytics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d7
    .line 341
    if-eqz v19, :cond_10

    #@3d9
    .line 342
    const/16 v24, 0x1

    #@3db
    move-object/from16 v0, p3

    #@3dd
    move/from16 v1, v24

    #@3df
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3e2
    .line 343
    const/16 v24, 0x1

    #@3e4
    move-object/from16 v0, v19

    #@3e6
    move-object/from16 v1, p3

    #@3e8
    move/from16 v2, v24

    #@3ea
    invoke-virtual {v0, v1, v2}, Landroid/telecom/TelecomAnalytics;->writeToParcel(Landroid/os/Parcel;I)V

    #@3ed
    .line 348
    :goto_10
    const/16 v24, 0x1

    #@3ef
    return v24

    #@3f0
    .line 346
    :cond_10
    const/16 v24, 0x0

    #@3f2
    move-object/from16 v0, p3

    #@3f4
    move/from16 v1, v24

    #@3f6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3f9
    goto :goto_10

    #@3fa
    .line 352
    .end local v19    # "_result":Landroid/telecom/TelecomAnalytics;
    :sswitch_18
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@3fd
    move-object/from16 v0, p2

    #@3ff
    move-object/from16 v1, v24

    #@401
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@404
    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@407
    move-result-object v7

    #@408
    .line 355
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@40a
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->silenceRinger(Ljava/lang/String;)V

    #@40d
    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@410
    .line 357
    const/16 v24, 0x1

    #@412
    return v24

    #@413
    .line 361
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@416
    move-object/from16 v0, p2

    #@418
    move-object/from16 v1, v24

    #@41a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41d
    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@420
    move-result-object v7

    #@421
    .line 364
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@423
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInCall(Ljava/lang/String;)Z

    #@426
    move-result v23

    #@427
    .line 365
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@42a
    .line 366
    if-eqz v23, :cond_11

    #@42c
    const/16 v24, 0x1

    #@42e
    :goto_11
    move-object/from16 v0, p3

    #@430
    move/from16 v1, v24

    #@432
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@435
    .line 367
    const/16 v24, 0x1

    #@437
    return v24

    #@438
    .line 366
    :cond_11
    const/16 v24, 0x0

    #@43a
    goto :goto_11

    #@43b
    .line 371
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Z
    :sswitch_1a
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@43e
    move-object/from16 v0, p2

    #@440
    move-object/from16 v1, v24

    #@442
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@445
    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@448
    move-result-object v7

    #@449
    .line 374
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@44b
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isRinging(Ljava/lang/String;)Z

    #@44e
    move-result v23

    #@44f
    .line 375
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@452
    .line 376
    if-eqz v23, :cond_12

    #@454
    const/16 v24, 0x1

    #@456
    :goto_12
    move-object/from16 v0, p3

    #@458
    move/from16 v1, v24

    #@45a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@45d
    .line 377
    const/16 v24, 0x1

    #@45f
    return v24

    #@460
    .line 376
    :cond_12
    const/16 v24, 0x0

    #@462
    goto :goto_12

    #@463
    .line 381
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Z
    :sswitch_1b
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@466
    move-object/from16 v0, p2

    #@468
    move-object/from16 v1, v24

    #@46a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46d
    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallState()I

    #@470
    move-result v13

    #@471
    .line 383
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@474
    .line 384
    move-object/from16 v0, p3

    #@476
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@479
    .line 385
    const/16 v24, 0x1

    #@47b
    return v24

    #@47c
    .line 389
    .end local v13    # "_result":I
    :sswitch_1c
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@47f
    move-object/from16 v0, p2

    #@481
    move-object/from16 v1, v24

    #@483
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@486
    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->endCall()Z

    #@489
    move-result v23

    #@48a
    .line 391
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@48d
    .line 392
    if-eqz v23, :cond_13

    #@48f
    const/16 v24, 0x1

    #@491
    :goto_13
    move-object/from16 v0, p3

    #@493
    move/from16 v1, v24

    #@495
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@498
    .line 393
    const/16 v24, 0x1

    #@49a
    return v24

    #@49b
    .line 392
    :cond_13
    const/16 v24, 0x0

    #@49d
    goto :goto_13

    #@49e
    .line 397
    .end local v23    # "_result":Z
    :sswitch_1d
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@4a1
    move-object/from16 v0, p2

    #@4a3
    move-object/from16 v1, v24

    #@4a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a8
    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCall()V

    #@4ab
    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ae
    .line 400
    const/16 v24, 0x1

    #@4b0
    return v24

    #@4b1
    .line 404
    :sswitch_1e
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@4b4
    move-object/from16 v0, p2

    #@4b6
    move-object/from16 v1, v24

    #@4b8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4bb
    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4be
    move-result v3

    #@4bf
    .line 407
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@4c1
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCallWithVideoState(I)V

    #@4c4
    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c7
    .line 409
    const/16 v24, 0x1

    #@4c9
    return v24

    #@4ca
    .line 413
    .end local v3    # "_arg0":I
    :sswitch_1f
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@4cd
    move-object/from16 v0, p2

    #@4cf
    move-object/from16 v1, v24

    #@4d1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d4
    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d7
    move-result-object v7

    #@4d8
    .line 416
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4da
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->cancelMissedCallsNotification(Ljava/lang/String;)V

    #@4dd
    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e0
    .line 418
    const/16 v24, 0x1

    #@4e2
    return v24

    #@4e3
    .line 422
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@4e6
    move-object/from16 v0, p2

    #@4e8
    move-object/from16 v1, v24

    #@4ea
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ed
    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f0
    move-result-object v7

    #@4f1
    .line 426
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f4
    move-result-object v10

    #@4f5
    .line 427
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4f7
    invoke-virtual {v0, v7, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z

    #@4fa
    move-result v23

    #@4fb
    .line 428
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4fe
    .line 429
    if-eqz v23, :cond_14

    #@500
    const/16 v24, 0x1

    #@502
    :goto_14
    move-object/from16 v0, p3

    #@504
    move/from16 v1, v24

    #@506
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@509
    .line 430
    const/16 v24, 0x1

    #@50b
    return v24

    #@50c
    .line 429
    :cond_14
    const/16 v24, 0x0

    #@50e
    goto :goto_14

    #@50f
    .line 434
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v23    # "_result":Z
    :sswitch_21
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@512
    move-object/from16 v0, p2

    #@514
    move-object/from16 v1, v24

    #@516
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@519
    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51c
    move-result v24

    #@51d
    if-eqz v24, :cond_15

    #@51f
    .line 437
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@521
    move-object/from16 v0, v24

    #@523
    move-object/from16 v1, p2

    #@525
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@528
    move-result-object v6

    #@529
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@52b
    .line 443
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@52e
    move-result-object v10

    #@52f
    .line 445
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@532
    move-result-object v12

    #@533
    .line 446
    .restart local v12    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@535
    invoke-virtual {v0, v6, v10, v12}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    #@538
    move-result v23

    #@539
    .line 447
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@53c
    .line 448
    if-eqz v23, :cond_16

    #@53e
    const/16 v24, 0x1

    #@540
    :goto_16
    move-object/from16 v0, p3

    #@542
    move/from16 v1, v24

    #@544
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@547
    .line 449
    const/16 v24, 0x1

    #@549
    return v24

    #@54a
    .line 440
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v23    # "_result":Z
    :cond_15
    const/4 v6, 0x0

    #@54b
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_15

    #@54c
    .line 448
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v10    # "_arg1":Ljava/lang/String;
    .restart local v12    # "_arg2":Ljava/lang/String;
    .restart local v23    # "_result":Z
    :cond_16
    const/16 v24, 0x0

    #@54e
    goto :goto_16

    #@54f
    .line 453
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v23    # "_result":Z
    :sswitch_22
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@552
    move-object/from16 v0, p2

    #@554
    move-object/from16 v1, v24

    #@556
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@559
    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@55c
    move-result v24

    #@55d
    if-eqz v24, :cond_17

    #@55f
    .line 456
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@561
    move-object/from16 v0, v24

    #@563
    move-object/from16 v1, p2

    #@565
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@568
    move-result-object v6

    #@569
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@56b
    .line 462
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@56e
    move-result-object v10

    #@56f
    .line 463
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@571
    invoke-virtual {v0, v6, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;

    #@574
    move-result-object v16

    #@575
    .line 464
    .local v16, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@578
    .line 465
    if-eqz v16, :cond_18

    #@57a
    .line 466
    const/16 v24, 0x1

    #@57c
    move-object/from16 v0, p3

    #@57e
    move/from16 v1, v24

    #@580
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@583
    .line 467
    const/16 v24, 0x1

    #@585
    move-object/from16 v0, v16

    #@587
    move-object/from16 v1, p3

    #@589
    move/from16 v2, v24

    #@58b
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@58e
    .line 472
    :goto_18
    const/16 v24, 0x1

    #@590
    return v24

    #@591
    .line 459
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Landroid/net/Uri;
    :cond_17
    const/4 v6, 0x0

    #@592
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_17

    #@593
    .line 470
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v10    # "_arg1":Ljava/lang/String;
    .restart local v16    # "_result":Landroid/net/Uri;
    :cond_18
    const/16 v24, 0x0

    #@595
    move-object/from16 v0, p3

    #@597
    move/from16 v1, v24

    #@599
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@59c
    goto :goto_18

    #@59d
    .line 476
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Landroid/net/Uri;
    :sswitch_23
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@5a0
    move-object/from16 v0, p2

    #@5a2
    move-object/from16 v1, v24

    #@5a4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a7
    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5aa
    move-result-object v7

    #@5ab
    .line 479
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5ad
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isTtySupported(Ljava/lang/String;)Z

    #@5b0
    move-result v23

    #@5b1
    .line 480
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b4
    .line 481
    if-eqz v23, :cond_19

    #@5b6
    const/16 v24, 0x1

    #@5b8
    :goto_19
    move-object/from16 v0, p3

    #@5ba
    move/from16 v1, v24

    #@5bc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5bf
    .line 482
    const/16 v24, 0x1

    #@5c1
    return v24

    #@5c2
    .line 481
    :cond_19
    const/16 v24, 0x0

    #@5c4
    goto :goto_19

    #@5c5
    .line 486
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Z
    :sswitch_24
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@5c8
    move-object/from16 v0, p2

    #@5ca
    move-object/from16 v1, v24

    #@5cc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5cf
    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d2
    move-result-object v7

    #@5d3
    .line 489
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5d5
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCurrentTtyMode(Ljava/lang/String;)I

    #@5d8
    move-result v13

    #@5d9
    .line 490
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5dc
    .line 491
    move-object/from16 v0, p3

    #@5de
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@5e1
    .line 492
    const/16 v24, 0x1

    #@5e3
    return v24

    #@5e4
    .line 496
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_25
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@5e7
    move-object/from16 v0, p2

    #@5e9
    move-object/from16 v1, v24

    #@5eb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5ee
    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f1
    move-result v24

    #@5f2
    if-eqz v24, :cond_1a

    #@5f4
    .line 499
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5f6
    move-object/from16 v0, v24

    #@5f8
    move-object/from16 v1, p2

    #@5fa
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5fd
    move-result-object v6

    #@5fe
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@600
    .line 505
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@603
    move-result v24

    #@604
    if-eqz v24, :cond_1b

    #@606
    .line 506
    sget-object v24, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@608
    move-object/from16 v0, v24

    #@60a
    move-object/from16 v1, p2

    #@60c
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@60f
    move-result-object v9

    #@610
    check-cast v9, Landroid/os/Bundle;

    #@612
    .line 511
    :goto_1b
    move-object/from16 v0, p0

    #@614
    invoke-virtual {v0, v6, v9}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    #@617
    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@61a
    .line 513
    const/16 v24, 0x1

    #@61c
    return v24

    #@61d
    .line 502
    :cond_1a
    const/4 v6, 0x0

    #@61e
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1a

    #@61f
    .line 509
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_1b
    const/4 v9, 0x0

    #@620
    .local v9, "_arg1":Landroid/os/Bundle;
    goto :goto_1b

    #@621
    .line 517
    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_26
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@624
    move-object/from16 v0, p2

    #@626
    move-object/from16 v1, v24

    #@628
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62b
    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62e
    move-result v24

    #@62f
    if-eqz v24, :cond_1c

    #@631
    .line 520
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@633
    move-object/from16 v0, v24

    #@635
    move-object/from16 v1, p2

    #@637
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@63a
    move-result-object v6

    #@63b
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@63d
    .line 526
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@640
    move-result v24

    #@641
    if-eqz v24, :cond_1d

    #@643
    .line 527
    sget-object v24, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@645
    move-object/from16 v0, v24

    #@647
    move-object/from16 v1, p2

    #@649
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@64c
    move-result-object v9

    #@64d
    check-cast v9, Landroid/os/Bundle;

    #@64f
    .line 532
    :goto_1d
    move-object/from16 v0, p0

    #@651
    invoke-virtual {v0, v6, v9}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    #@654
    .line 533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@657
    .line 534
    const/16 v24, 0x1

    #@659
    return v24

    #@65a
    .line 523
    :cond_1c
    const/4 v6, 0x0

    #@65b
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1c

    #@65c
    .line 530
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_1d
    const/4 v9, 0x0

    #@65d
    .restart local v9    # "_arg1":Landroid/os/Bundle;
    goto :goto_1d

    #@65e
    .line 538
    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_27
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@661
    move-object/from16 v0, p2

    #@663
    move-object/from16 v1, v24

    #@665
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@668
    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66b
    move-result v24

    #@66c
    if-eqz v24, :cond_1e

    #@66e
    .line 541
    sget-object v24, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@670
    move-object/from16 v0, v24

    #@672
    move-object/from16 v1, p2

    #@674
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@677
    move-result-object v4

    #@678
    check-cast v4, Landroid/net/Uri;

    #@67a
    .line 547
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@67d
    move-result v24

    #@67e
    if-eqz v24, :cond_1f

    #@680
    .line 548
    sget-object v24, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@682
    move-object/from16 v0, v24

    #@684
    move-object/from16 v1, p2

    #@686
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@689
    move-result-object v9

    #@68a
    check-cast v9, Landroid/os/Bundle;

    #@68c
    .line 554
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@68f
    move-result-object v12

    #@690
    .line 555
    .restart local v12    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@692
    invoke-virtual {v0, v4, v9, v12}, Lcom/android/internal/telecom/ITelecomService$Stub;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;)V

    #@695
    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@698
    .line 557
    const/16 v24, 0x1

    #@69a
    return v24

    #@69b
    .line 544
    .end local v12    # "_arg2":Ljava/lang/String;
    :cond_1e
    const/4 v4, 0x0

    #@69c
    .local v4, "_arg0":Landroid/net/Uri;
    goto :goto_1e

    #@69d
    .line 551
    .end local v4    # "_arg0":Landroid/net/Uri;
    :cond_1f
    const/4 v9, 0x0

    #@69e
    .restart local v9    # "_arg1":Landroid/os/Bundle;
    goto :goto_1f

    #@69f
    .line 561
    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_28
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@6a2
    move-object/from16 v0, p2

    #@6a4
    move-object/from16 v1, v24

    #@6a6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a9
    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ac
    move-result v24

    #@6ad
    if-eqz v24, :cond_20

    #@6af
    .line 564
    sget-object v24, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6b1
    move-object/from16 v0, v24

    #@6b3
    move-object/from16 v1, p2

    #@6b5
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6b8
    move-result-object v6

    #@6b9
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@6bb
    .line 570
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6be
    move-result v24

    #@6bf
    if-eqz v24, :cond_21

    #@6c1
    const/4 v11, 0x1

    #@6c2
    .line 571
    .local v11, "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    #@6c4
    invoke-virtual {v0, v6, v11}, Lcom/android/internal/telecom/ITelecomService$Stub;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z

    #@6c7
    move-result v23

    #@6c8
    .line 572
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6cb
    .line 573
    if-eqz v23, :cond_22

    #@6cd
    const/16 v24, 0x1

    #@6cf
    :goto_22
    move-object/from16 v0, p3

    #@6d1
    move/from16 v1, v24

    #@6d3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6d6
    .line 574
    const/16 v24, 0x1

    #@6d8
    return v24

    #@6d9
    .line 567
    .end local v11    # "_arg1":Z
    .end local v23    # "_result":Z
    :cond_20
    const/4 v6, 0x0

    #@6da
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_20

    #@6db
    .line 570
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_21
    const/4 v11, 0x0

    #@6dc
    goto :goto_21

    #@6dd
    .line 573
    .restart local v11    # "_arg1":Z
    .restart local v23    # "_result":Z
    :cond_22
    const/16 v24, 0x0

    #@6df
    goto :goto_22

    #@6e0
    .line 578
    .end local v11    # "_arg1":Z
    .end local v23    # "_result":Z
    :sswitch_29
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@6e3
    move-object/from16 v0, p2

    #@6e5
    move-object/from16 v1, v24

    #@6e7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ea
    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6ed
    move-result-object v7

    #@6ee
    .line 581
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6f0
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->setDefaultDialer(Ljava/lang/String;)Z

    #@6f3
    move-result v23

    #@6f4
    .line 582
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f7
    .line 583
    if-eqz v23, :cond_23

    #@6f9
    const/16 v24, 0x1

    #@6fb
    :goto_23
    move-object/from16 v0, p3

    #@6fd
    move/from16 v1, v24

    #@6ff
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@702
    .line 584
    const/16 v24, 0x1

    #@704
    return v24

    #@705
    .line 583
    :cond_23
    const/16 v24, 0x0

    #@707
    goto :goto_23

    #@708
    .line 588
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Z
    :sswitch_2a
    const-string/jumbo v24, "com.android.internal.telecom.ITelecomService"

    #@70b
    move-object/from16 v0, p2

    #@70d
    move-object/from16 v1, v24

    #@70f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@712
    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->createManageBlockedNumbersIntent()Landroid/content/Intent;

    #@715
    move-result-object v15

    #@716
    .line 590
    .local v15, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@719
    .line 591
    if-eqz v15, :cond_24

    #@71b
    .line 592
    const/16 v24, 0x1

    #@71d
    move-object/from16 v0, p3

    #@71f
    move/from16 v1, v24

    #@721
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@724
    .line 593
    const/16 v24, 0x1

    #@726
    move-object/from16 v0, p3

    #@728
    move/from16 v1, v24

    #@72a
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@72d
    .line 598
    :goto_24
    const/16 v24, 0x1

    #@72f
    return v24

    #@730
    .line 596
    :cond_24
    const/16 v24, 0x0

    #@732
    move-object/from16 v0, p3

    #@734
    move/from16 v1, v24

    #@736
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@739
    goto :goto_24

    #@73a
    .line 43
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
