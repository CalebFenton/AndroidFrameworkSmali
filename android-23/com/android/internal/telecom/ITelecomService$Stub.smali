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

.field static final TRANSACTION_acceptRingingCall:I = 0x1c

.field static final TRANSACTION_addNewIncomingCall:I = 0x23

.field static final TRANSACTION_addNewUnknownCall:I = 0x24

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0x1d

.field static final TRANSACTION_clearAccounts:I = 0x10

.field static final TRANSACTION_enablePhoneAccount:I = 0x26

.field static final TRANSACTION_endCall:I = 0x1b

.field static final TRANSACTION_getAdnUriForPhoneAccount:I = 0x20

.field static final TRANSACTION_getAllPhoneAccountHandles:I = 0xb

.field static final TRANSACTION_getAllPhoneAccounts:I = 0xa

.field static final TRANSACTION_getAllPhoneAccountsCount:I = 0x9

.field static final TRANSACTION_getCallCapablePhoneAccounts:I = 0x5

.field static final TRANSACTION_getCallState:I = 0x1a

.field static final TRANSACTION_getCurrentTtyMode:I = 0x22

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

.field static final TRANSACTION_handlePinMmi:I = 0x1e

.field static final TRANSACTION_handlePinMmiForPhoneAccount:I = 0x1f

.field static final TRANSACTION_isInCall:I = 0x18

.field static final TRANSACTION_isRinging:I = 0x19

.field static final TRANSACTION_isTtySupported:I = 0x21

.field static final TRANSACTION_isVoiceMailNumber:I = 0x11

.field static final TRANSACTION_placeCall:I = 0x25

.field static final TRANSACTION_registerPhoneAccount:I = 0xe

.field static final TRANSACTION_setDefaultDialer:I = 0x27

.field static final TRANSACTION_setUserSelectedOutgoingPhoneAccount:I = 0x4

.field static final TRANSACTION_showInCallScreen:I = 0x1

.field static final TRANSACTION_silenceRinger:I = 0x17

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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 564
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v22

    #@7
    return v22

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v22

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 48
    const/16 v22, 0x1

    #@14
    return v22

    #@15
    .line 52
    :sswitch_1
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v22

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v22

    #@23
    if-eqz v22, :cond_0

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
    const/16 v22, 0x1

    #@34
    return v22

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
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@3a
    move-object/from16 v0, p2

    #@3c
    move-object/from16 v1, v22

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
    move-result-object v17

    #@4f
    .line 69
    .local v17, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@52
    .line 70
    if-eqz v17, :cond_1

    #@54
    .line 71
    const/16 v22, 0x1

    #@56
    move-object/from16 v0, p3

    #@58
    move/from16 v1, v22

    #@5a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    .line 72
    const/16 v22, 0x1

    #@5f
    move-object/from16 v0, v17

    #@61
    move-object/from16 v1, p3

    #@63
    move/from16 v2, v22

    #@65
    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@68
    .line 77
    :goto_1
    const/16 v22, 0x1

    #@6a
    return v22

    #@6b
    .line 75
    :cond_1
    const/16 v22, 0x0

    #@6d
    move-object/from16 v0, p3

    #@6f
    move/from16 v1, v22

    #@71
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@74
    goto :goto_1

    #@75
    .line 81
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_3
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@78
    move-object/from16 v0, p2

    #@7a
    move-object/from16 v1, v22

    #@7c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f
    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    #@82
    move-result-object v17

    #@83
    .line 83
    .restart local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@86
    .line 84
    if-eqz v17, :cond_2

    #@88
    .line 85
    const/16 v22, 0x1

    #@8a
    move-object/from16 v0, p3

    #@8c
    move/from16 v1, v22

    #@8e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@91
    .line 86
    const/16 v22, 0x1

    #@93
    move-object/from16 v0, v17

    #@95
    move-object/from16 v1, p3

    #@97
    move/from16 v2, v22

    #@99
    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@9c
    .line 91
    :goto_2
    const/16 v22, 0x1

    #@9e
    return v22

    #@9f
    .line 89
    :cond_2
    const/16 v22, 0x0

    #@a1
    move-object/from16 v0, p3

    #@a3
    move/from16 v1, v22

    #@a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a8
    goto :goto_2

    #@a9
    .line 95
    .end local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_4
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@ac
    move-object/from16 v0, p2

    #@ae
    move-object/from16 v1, v22

    #@b0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b3
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b6
    move-result v22

    #@b7
    if-eqz v22, :cond_3

    #@b9
    .line 98
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bb
    move-object/from16 v0, v22

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
    const/16 v22, 0x1

    #@cf
    return v22

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
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@d5
    move-object/from16 v0, p2

    #@d7
    move-object/from16 v1, v22

    #@d9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dc
    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@df
    move-result v22

    #@e0
    if-eqz v22, :cond_4

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
    move-result-object v20

    #@ed
    .line 115
    .local v20, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f0
    .line 116
    move-object/from16 v0, p3

    #@f2
    move-object/from16 v1, v20

    #@f4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@f7
    .line 117
    const/16 v22, 0x1

    #@f9
    return v22

    #@fa
    .line 111
    .end local v8    # "_arg0":Z
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_4
    const/4 v8, 0x0

    #@fb
    .restart local v8    # "_arg0":Z
    goto :goto_4

    #@fc
    .line 121
    .end local v8    # "_arg0":Z
    :sswitch_6
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@ff
    move-object/from16 v0, p2

    #@101
    move-object/from16 v1, v22

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
    move-result-object v20

    #@114
    .line 127
    .restart local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@117
    .line 128
    move-object/from16 v0, p3

    #@119
    move-object/from16 v1, v20

    #@11b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@11e
    .line 129
    const/16 v22, 0x1

    #@120
    return v22

    #@121
    .line 133
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_7
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@124
    move-object/from16 v0, p2

    #@126
    move-object/from16 v1, v22

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
    move-result-object v20

    #@135
    .line 137
    .restart local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@138
    .line 138
    move-object/from16 v0, p3

    #@13a
    move-object/from16 v1, v20

    #@13c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@13f
    .line 139
    const/16 v22, 0x1

    #@141
    return v22

    #@142
    .line 143
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_8
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@145
    move-object/from16 v0, p2

    #@147
    move-object/from16 v1, v22

    #@149
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14c
    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14f
    move-result v22

    #@150
    if-eqz v22, :cond_5

    #@152
    .line 146
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@154
    move-object/from16 v0, v22

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
    move-result-object v16

    #@164
    .line 152
    .local v16, "_result":Landroid/telecom/PhoneAccount;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@167
    .line 153
    if-eqz v16, :cond_6

    #@169
    .line 154
    const/16 v22, 0x1

    #@16b
    move-object/from16 v0, p3

    #@16d
    move/from16 v1, v22

    #@16f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@172
    .line 155
    const/16 v22, 0x1

    #@174
    move-object/from16 v0, v16

    #@176
    move-object/from16 v1, p3

    #@178
    move/from16 v2, v22

    #@17a
    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccount;->writeToParcel(Landroid/os/Parcel;I)V

    #@17d
    .line 160
    :goto_6
    const/16 v22, 0x1

    #@17f
    return v22

    #@180
    .line 149
    .end local v16    # "_result":Landroid/telecom/PhoneAccount;
    :cond_5
    const/4 v6, 0x0

    #@181
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_5

    #@182
    .line 158
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v16    # "_result":Landroid/telecom/PhoneAccount;
    :cond_6
    const/16 v22, 0x0

    #@184
    move-object/from16 v0, p3

    #@186
    move/from16 v1, v22

    #@188
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@18b
    goto :goto_6

    #@18c
    .line 164
    .end local v16    # "_result":Landroid/telecom/PhoneAccount;
    :sswitch_9
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@18f
    move-object/from16 v0, p2

    #@191
    move-object/from16 v1, v22

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
    const/16 v22, 0x1

    #@1a4
    return v22

    #@1a5
    .line 172
    .end local v13    # "_result":I
    :sswitch_a
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@1a8
    move-object/from16 v0, p2

    #@1aa
    move-object/from16 v1, v22

    #@1ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1af
    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccounts()Ljava/util/List;

    #@1b2
    move-result-object v19

    #@1b3
    .line 174
    .local v19, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b6
    .line 175
    move-object/from16 v0, p3

    #@1b8
    move-object/from16 v1, v19

    #@1ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1bd
    .line 176
    const/16 v22, 0x1

    #@1bf
    return v22

    #@1c0
    .line 180
    .end local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    :sswitch_b
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@1c3
    move-object/from16 v0, p2

    #@1c5
    move-object/from16 v1, v22

    #@1c7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ca
    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountHandles()Ljava/util/List;

    #@1cd
    move-result-object v20

    #@1ce
    .line 182
    .restart local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d1
    .line 183
    move-object/from16 v0, p3

    #@1d3
    move-object/from16 v1, v20

    #@1d5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1d8
    .line 184
    const/16 v22, 0x1

    #@1da
    return v22

    #@1db
    .line 188
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_c
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@1de
    move-object/from16 v0, p2

    #@1e0
    move-object/from16 v1, v22

    #@1e2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e5
    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    #@1e8
    move-result-object v17

    #@1e9
    .line 190
    .restart local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ec
    .line 191
    if-eqz v17, :cond_7

    #@1ee
    .line 192
    const/16 v22, 0x1

    #@1f0
    move-object/from16 v0, p3

    #@1f2
    move/from16 v1, v22

    #@1f4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f7
    .line 193
    const/16 v22, 0x1

    #@1f9
    move-object/from16 v0, v17

    #@1fb
    move-object/from16 v1, p3

    #@1fd
    move/from16 v2, v22

    #@1ff
    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@202
    .line 198
    :goto_7
    const/16 v22, 0x1

    #@204
    return v22

    #@205
    .line 196
    :cond_7
    const/16 v22, 0x0

    #@207
    move-object/from16 v0, p3

    #@209
    move/from16 v1, v22

    #@20b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@20e
    goto :goto_7

    #@20f
    .line 202
    .end local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_d
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@212
    move-object/from16 v0, p2

    #@214
    move-object/from16 v1, v22

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
    move-result-object v17

    #@223
    .line 206
    .restart local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@226
    .line 207
    if-eqz v17, :cond_8

    #@228
    .line 208
    const/16 v22, 0x1

    #@22a
    move-object/from16 v0, p3

    #@22c
    move/from16 v1, v22

    #@22e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@231
    .line 209
    const/16 v22, 0x1

    #@233
    move-object/from16 v0, v17

    #@235
    move-object/from16 v1, p3

    #@237
    move/from16 v2, v22

    #@239
    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@23c
    .line 214
    :goto_8
    const/16 v22, 0x1

    #@23e
    return v22

    #@23f
    .line 212
    :cond_8
    const/16 v22, 0x0

    #@241
    move-object/from16 v0, p3

    #@243
    move/from16 v1, v22

    #@245
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@248
    goto :goto_8

    #@249
    .line 218
    .end local v3    # "_arg0":I
    .end local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_e
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@24c
    move-object/from16 v0, p2

    #@24e
    move-object/from16 v1, v22

    #@250
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@253
    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@256
    move-result v22

    #@257
    if-eqz v22, :cond_9

    #@259
    .line 221
    sget-object v22, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    #@25b
    move-object/from16 v0, v22

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
    const/16 v22, 0x1

    #@26f
    return v22

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
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@275
    move-object/from16 v0, p2

    #@277
    move-object/from16 v1, v22

    #@279
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27c
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27f
    move-result v22

    #@280
    if-eqz v22, :cond_a

    #@282
    .line 235
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@284
    move-object/from16 v0, v22

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
    const/16 v22, 0x1

    #@298
    return v22

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
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@29e
    move-object/from16 v0, p2

    #@2a0
    move-object/from16 v1, v22

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
    const/16 v22, 0x1

    #@2b3
    return v22

    #@2b4
    .line 255
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@2b7
    move-object/from16 v0, p2

    #@2b9
    move-object/from16 v1, v22

    #@2bb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2be
    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c1
    move-result v22

    #@2c2
    if-eqz v22, :cond_b

    #@2c4
    .line 258
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c6
    move-object/from16 v0, v22

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
    move-result v21

    #@2de
    .line 268
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e1
    .line 269
    if-eqz v21, :cond_c

    #@2e3
    const/16 v22, 0x1

    #@2e5
    :goto_c
    move-object/from16 v0, p3

    #@2e7
    move/from16 v1, v22

    #@2e9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2ec
    .line 270
    const/16 v22, 0x1

    #@2ee
    return v22

    #@2ef
    .line 261
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v21    # "_result":Z
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
    .restart local v21    # "_result":Z
    :cond_c
    const/16 v22, 0x0

    #@2f3
    goto :goto_c

    #@2f4
    .line 274
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_12
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@2f7
    move-object/from16 v0, p2

    #@2f9
    move-object/from16 v1, v22

    #@2fb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fe
    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@301
    move-result v22

    #@302
    if-eqz v22, :cond_d

    #@304
    .line 277
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@306
    move-object/from16 v0, v22

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
    move-result-object v18

    #@31a
    .line 285
    .local v18, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31d
    .line 286
    move-object/from16 v0, p3

    #@31f
    move-object/from16 v1, v18

    #@321
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@324
    .line 287
    const/16 v22, 0x1

    #@326
    return v22

    #@327
    .line 280
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v18    # "_result":Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    #@328
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_d

    #@329
    .line 291
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_13
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@32c
    move-object/from16 v0, p2

    #@32e
    move-object/from16 v1, v22

    #@330
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@333
    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@336
    move-result v22

    #@337
    if-eqz v22, :cond_e

    #@339
    .line 294
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33b
    move-object/from16 v0, v22

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
    move-result-object v18

    #@34f
    .line 302
    .restart local v18    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@352
    .line 303
    move-object/from16 v0, p3

    #@354
    move-object/from16 v1, v18

    #@356
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@359
    .line 304
    const/16 v22, 0x1

    #@35b
    return v22

    #@35c
    .line 297
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v18    # "_result":Ljava/lang/String;
    :cond_e
    const/4 v6, 0x0

    #@35d
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_e

    #@35e
    .line 308
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_14
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@361
    move-object/from16 v0, p2

    #@363
    move-object/from16 v1, v22

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
    const/16 v22, 0x1

    #@373
    move-object/from16 v0, p3

    #@375
    move/from16 v1, v22

    #@377
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37a
    .line 313
    const/16 v22, 0x1

    #@37c
    move-object/from16 v0, p3

    #@37e
    move/from16 v1, v22

    #@380
    invoke-virtual {v14, v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@383
    .line 318
    :goto_f
    const/16 v22, 0x1

    #@385
    return v22

    #@386
    .line 316
    :cond_f
    const/16 v22, 0x0

    #@388
    move-object/from16 v0, p3

    #@38a
    move/from16 v1, v22

    #@38c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@38f
    goto :goto_f

    #@390
    .line 322
    .end local v14    # "_result":Landroid/content/ComponentName;
    :sswitch_15
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@393
    move-object/from16 v0, p2

    #@395
    move-object/from16 v1, v22

    #@397
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39a
    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultDialerPackage()Ljava/lang/String;

    #@39d
    move-result-object v18

    #@39e
    .line 324
    .restart local v18    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a1
    .line 325
    move-object/from16 v0, p3

    #@3a3
    move-object/from16 v1, v18

    #@3a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a8
    .line 326
    const/16 v22, 0x1

    #@3aa
    return v22

    #@3ab
    .line 330
    .end local v18    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@3ae
    move-object/from16 v0, p2

    #@3b0
    move-object/from16 v1, v22

    #@3b2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b5
    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSystemDialerPackage()Ljava/lang/String;

    #@3b8
    move-result-object v18

    #@3b9
    .line 332
    .restart local v18    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3bc
    .line 333
    move-object/from16 v0, p3

    #@3be
    move-object/from16 v1, v18

    #@3c0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c3
    .line 334
    const/16 v22, 0x1

    #@3c5
    return v22

    #@3c6
    .line 338
    .end local v18    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@3c9
    move-object/from16 v0, p2

    #@3cb
    move-object/from16 v1, v22

    #@3cd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d0
    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d3
    move-result-object v7

    #@3d4
    .line 341
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3d6
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->silenceRinger(Ljava/lang/String;)V

    #@3d9
    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3dc
    .line 343
    const/16 v22, 0x1

    #@3de
    return v22

    #@3df
    .line 347
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@3e2
    move-object/from16 v0, p2

    #@3e4
    move-object/from16 v1, v22

    #@3e6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e9
    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3ec
    move-result-object v7

    #@3ed
    .line 350
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3ef
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInCall(Ljava/lang/String;)Z

    #@3f2
    move-result v21

    #@3f3
    .line 351
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f6
    .line 352
    if-eqz v21, :cond_10

    #@3f8
    const/16 v22, 0x1

    #@3fa
    :goto_10
    move-object/from16 v0, p3

    #@3fc
    move/from16 v1, v22

    #@3fe
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@401
    .line 353
    const/16 v22, 0x1

    #@403
    return v22

    #@404
    .line 352
    :cond_10
    const/16 v22, 0x0

    #@406
    goto :goto_10

    #@407
    .line 357
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_19
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@40a
    move-object/from16 v0, p2

    #@40c
    move-object/from16 v1, v22

    #@40e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@411
    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@414
    move-result-object v7

    #@415
    .line 360
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@417
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isRinging(Ljava/lang/String;)Z

    #@41a
    move-result v21

    #@41b
    .line 361
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41e
    .line 362
    if-eqz v21, :cond_11

    #@420
    const/16 v22, 0x1

    #@422
    :goto_11
    move-object/from16 v0, p3

    #@424
    move/from16 v1, v22

    #@426
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@429
    .line 363
    const/16 v22, 0x1

    #@42b
    return v22

    #@42c
    .line 362
    :cond_11
    const/16 v22, 0x0

    #@42e
    goto :goto_11

    #@42f
    .line 367
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_1a
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@432
    move-object/from16 v0, p2

    #@434
    move-object/from16 v1, v22

    #@436
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@439
    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallState()I

    #@43c
    move-result v13

    #@43d
    .line 369
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@440
    .line 370
    move-object/from16 v0, p3

    #@442
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@445
    .line 371
    const/16 v22, 0x1

    #@447
    return v22

    #@448
    .line 375
    .end local v13    # "_result":I
    :sswitch_1b
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@44b
    move-object/from16 v0, p2

    #@44d
    move-object/from16 v1, v22

    #@44f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@452
    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->endCall()Z

    #@455
    move-result v21

    #@456
    .line 377
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@459
    .line 378
    if-eqz v21, :cond_12

    #@45b
    const/16 v22, 0x1

    #@45d
    :goto_12
    move-object/from16 v0, p3

    #@45f
    move/from16 v1, v22

    #@461
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@464
    .line 379
    const/16 v22, 0x1

    #@466
    return v22

    #@467
    .line 378
    :cond_12
    const/16 v22, 0x0

    #@469
    goto :goto_12

    #@46a
    .line 383
    .end local v21    # "_result":Z
    :sswitch_1c
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@46d
    move-object/from16 v0, p2

    #@46f
    move-object/from16 v1, v22

    #@471
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@474
    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCall()V

    #@477
    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@47a
    .line 386
    const/16 v22, 0x1

    #@47c
    return v22

    #@47d
    .line 390
    :sswitch_1d
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@480
    move-object/from16 v0, p2

    #@482
    move-object/from16 v1, v22

    #@484
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@487
    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@48a
    move-result-object v7

    #@48b
    .line 393
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@48d
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->cancelMissedCallsNotification(Ljava/lang/String;)V

    #@490
    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@493
    .line 395
    const/16 v22, 0x1

    #@495
    return v22

    #@496
    .line 399
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@499
    move-object/from16 v0, p2

    #@49b
    move-object/from16 v1, v22

    #@49d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a0
    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4a3
    move-result-object v7

    #@4a4
    .line 403
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4a7
    move-result-object v10

    #@4a8
    .line 404
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4aa
    invoke-virtual {v0, v7, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z

    #@4ad
    move-result v21

    #@4ae
    .line 405
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b1
    .line 406
    if-eqz v21, :cond_13

    #@4b3
    const/16 v22, 0x1

    #@4b5
    :goto_13
    move-object/from16 v0, p3

    #@4b7
    move/from16 v1, v22

    #@4b9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4bc
    .line 407
    const/16 v22, 0x1

    #@4be
    return v22

    #@4bf
    .line 406
    :cond_13
    const/16 v22, 0x0

    #@4c1
    goto :goto_13

    #@4c2
    .line 411
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_1f
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@4c5
    move-object/from16 v0, p2

    #@4c7
    move-object/from16 v1, v22

    #@4c9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4cc
    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4cf
    move-result v22

    #@4d0
    if-eqz v22, :cond_14

    #@4d2
    .line 414
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d4
    move-object/from16 v0, v22

    #@4d6
    move-object/from16 v1, p2

    #@4d8
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4db
    move-result-object v6

    #@4dc
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@4de
    .line 420
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4e1
    move-result-object v10

    #@4e2
    .line 422
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4e5
    move-result-object v12

    #@4e6
    .line 423
    .restart local v12    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4e8
    invoke-virtual {v0, v6, v10, v12}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    #@4eb
    move-result v21

    #@4ec
    .line 424
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ef
    .line 425
    if-eqz v21, :cond_15

    #@4f1
    const/16 v22, 0x1

    #@4f3
    :goto_15
    move-object/from16 v0, p3

    #@4f5
    move/from16 v1, v22

    #@4f7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4fa
    .line 426
    const/16 v22, 0x1

    #@4fc
    return v22

    #@4fd
    .line 417
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v21    # "_result":Z
    :cond_14
    const/4 v6, 0x0

    #@4fe
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_14

    #@4ff
    .line 425
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v10    # "_arg1":Ljava/lang/String;
    .restart local v12    # "_arg2":Ljava/lang/String;
    .restart local v21    # "_result":Z
    :cond_15
    const/16 v22, 0x0

    #@501
    goto :goto_15

    #@502
    .line 430
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_20
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@505
    move-object/from16 v0, p2

    #@507
    move-object/from16 v1, v22

    #@509
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50c
    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@50f
    move-result v22

    #@510
    if-eqz v22, :cond_16

    #@512
    .line 433
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@514
    move-object/from16 v0, v22

    #@516
    move-object/from16 v1, p2

    #@518
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@51b
    move-result-object v6

    #@51c
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@51e
    .line 439
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@521
    move-result-object v10

    #@522
    .line 440
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@524
    invoke-virtual {v0, v6, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;

    #@527
    move-result-object v15

    #@528
    .line 441
    .local v15, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@52b
    .line 442
    if-eqz v15, :cond_17

    #@52d
    .line 443
    const/16 v22, 0x1

    #@52f
    move-object/from16 v0, p3

    #@531
    move/from16 v1, v22

    #@533
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@536
    .line 444
    const/16 v22, 0x1

    #@538
    move-object/from16 v0, p3

    #@53a
    move/from16 v1, v22

    #@53c
    invoke-virtual {v15, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@53f
    .line 449
    :goto_17
    const/16 v22, 0x1

    #@541
    return v22

    #@542
    .line 436
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Landroid/net/Uri;
    :cond_16
    const/4 v6, 0x0

    #@543
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_16

    #@544
    .line 447
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v10    # "_arg1":Ljava/lang/String;
    .restart local v15    # "_result":Landroid/net/Uri;
    :cond_17
    const/16 v22, 0x0

    #@546
    move-object/from16 v0, p3

    #@548
    move/from16 v1, v22

    #@54a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@54d
    goto :goto_17

    #@54e
    .line 453
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Landroid/net/Uri;
    :sswitch_21
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@551
    move-object/from16 v0, p2

    #@553
    move-object/from16 v1, v22

    #@555
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@558
    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@55b
    move-result-object v7

    #@55c
    .line 456
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@55e
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isTtySupported(Ljava/lang/String;)Z

    #@561
    move-result v21

    #@562
    .line 457
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@565
    .line 458
    if-eqz v21, :cond_18

    #@567
    const/16 v22, 0x1

    #@569
    :goto_18
    move-object/from16 v0, p3

    #@56b
    move/from16 v1, v22

    #@56d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@570
    .line 459
    const/16 v22, 0x1

    #@572
    return v22

    #@573
    .line 458
    :cond_18
    const/16 v22, 0x0

    #@575
    goto :goto_18

    #@576
    .line 463
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_22
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@579
    move-object/from16 v0, p2

    #@57b
    move-object/from16 v1, v22

    #@57d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@580
    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@583
    move-result-object v7

    #@584
    .line 466
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@586
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCurrentTtyMode(Ljava/lang/String;)I

    #@589
    move-result v13

    #@58a
    .line 467
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@58d
    .line 468
    move-object/from16 v0, p3

    #@58f
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@592
    .line 469
    const/16 v22, 0x1

    #@594
    return v22

    #@595
    .line 473
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_23
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@598
    move-object/from16 v0, p2

    #@59a
    move-object/from16 v1, v22

    #@59c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59f
    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a2
    move-result v22

    #@5a3
    if-eqz v22, :cond_19

    #@5a5
    .line 476
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5a7
    move-object/from16 v0, v22

    #@5a9
    move-object/from16 v1, p2

    #@5ab
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5ae
    move-result-object v6

    #@5af
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@5b1
    .line 482
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5b4
    move-result v22

    #@5b5
    if-eqz v22, :cond_1a

    #@5b7
    .line 483
    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5b9
    move-object/from16 v0, v22

    #@5bb
    move-object/from16 v1, p2

    #@5bd
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5c0
    move-result-object v9

    #@5c1
    check-cast v9, Landroid/os/Bundle;

    #@5c3
    .line 488
    :goto_1a
    move-object/from16 v0, p0

    #@5c5
    invoke-virtual {v0, v6, v9}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    #@5c8
    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5cb
    .line 490
    const/16 v22, 0x1

    #@5cd
    return v22

    #@5ce
    .line 479
    :cond_19
    const/4 v6, 0x0

    #@5cf
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_19

    #@5d0
    .line 486
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_1a
    const/4 v9, 0x0

    #@5d1
    .local v9, "_arg1":Landroid/os/Bundle;
    goto :goto_1a

    #@5d2
    .line 494
    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_24
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@5d5
    move-object/from16 v0, p2

    #@5d7
    move-object/from16 v1, v22

    #@5d9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5dc
    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5df
    move-result v22

    #@5e0
    if-eqz v22, :cond_1b

    #@5e2
    .line 497
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5e4
    move-object/from16 v0, v22

    #@5e6
    move-object/from16 v1, p2

    #@5e8
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5eb
    move-result-object v6

    #@5ec
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@5ee
    .line 503
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f1
    move-result v22

    #@5f2
    if-eqz v22, :cond_1c

    #@5f4
    .line 504
    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5f6
    move-object/from16 v0, v22

    #@5f8
    move-object/from16 v1, p2

    #@5fa
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5fd
    move-result-object v9

    #@5fe
    check-cast v9, Landroid/os/Bundle;

    #@600
    .line 509
    :goto_1c
    move-object/from16 v0, p0

    #@602
    invoke-virtual {v0, v6, v9}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    #@605
    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@608
    .line 511
    const/16 v22, 0x1

    #@60a
    return v22

    #@60b
    .line 500
    :cond_1b
    const/4 v6, 0x0

    #@60c
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1b

    #@60d
    .line 507
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_1c
    const/4 v9, 0x0

    #@60e
    .restart local v9    # "_arg1":Landroid/os/Bundle;
    goto :goto_1c

    #@60f
    .line 515
    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_25
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@612
    move-object/from16 v0, p2

    #@614
    move-object/from16 v1, v22

    #@616
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@619
    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61c
    move-result v22

    #@61d
    if-eqz v22, :cond_1d

    #@61f
    .line 518
    sget-object v22, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@621
    move-object/from16 v0, v22

    #@623
    move-object/from16 v1, p2

    #@625
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@628
    move-result-object v4

    #@629
    check-cast v4, Landroid/net/Uri;

    #@62b
    .line 524
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62e
    move-result v22

    #@62f
    if-eqz v22, :cond_1e

    #@631
    .line 525
    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@633
    move-object/from16 v0, v22

    #@635
    move-object/from16 v1, p2

    #@637
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@63a
    move-result-object v9

    #@63b
    check-cast v9, Landroid/os/Bundle;

    #@63d
    .line 531
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@640
    move-result-object v12

    #@641
    .line 532
    .restart local v12    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@643
    invoke-virtual {v0, v4, v9, v12}, Lcom/android/internal/telecom/ITelecomService$Stub;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;)V

    #@646
    .line 533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@649
    .line 534
    const/16 v22, 0x1

    #@64b
    return v22

    #@64c
    .line 521
    .end local v12    # "_arg2":Ljava/lang/String;
    :cond_1d
    const/4 v4, 0x0

    #@64d
    .local v4, "_arg0":Landroid/net/Uri;
    goto :goto_1d

    #@64e
    .line 528
    .end local v4    # "_arg0":Landroid/net/Uri;
    :cond_1e
    const/4 v9, 0x0

    #@64f
    .restart local v9    # "_arg1":Landroid/os/Bundle;
    goto :goto_1e

    #@650
    .line 538
    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_26
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@653
    move-object/from16 v0, p2

    #@655
    move-object/from16 v1, v22

    #@657
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65a
    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@65d
    move-result v22

    #@65e
    if-eqz v22, :cond_1f

    #@660
    .line 541
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@662
    move-object/from16 v0, v22

    #@664
    move-object/from16 v1, p2

    #@666
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@669
    move-result-object v6

    #@66a
    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    #@66c
    .line 547
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66f
    move-result v22

    #@670
    if-eqz v22, :cond_20

    #@672
    const/4 v11, 0x1

    #@673
    .line 548
    .local v11, "_arg1":Z
    :goto_20
    move-object/from16 v0, p0

    #@675
    invoke-virtual {v0, v6, v11}, Lcom/android/internal/telecom/ITelecomService$Stub;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z

    #@678
    move-result v21

    #@679
    .line 549
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@67c
    .line 550
    if-eqz v21, :cond_21

    #@67e
    const/16 v22, 0x1

    #@680
    :goto_21
    move-object/from16 v0, p3

    #@682
    move/from16 v1, v22

    #@684
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@687
    .line 551
    const/16 v22, 0x1

    #@689
    return v22

    #@68a
    .line 544
    .end local v11    # "_arg1":Z
    .end local v21    # "_result":Z
    :cond_1f
    const/4 v6, 0x0

    #@68b
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1f

    #@68c
    .line 547
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_20
    const/4 v11, 0x0

    #@68d
    .restart local v11    # "_arg1":Z
    goto :goto_20

    #@68e
    .line 550
    .restart local v21    # "_result":Z
    :cond_21
    const/16 v22, 0x0

    #@690
    goto :goto_21

    #@691
    .line 555
    .end local v11    # "_arg1":Z
    .end local v21    # "_result":Z
    :sswitch_27
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    #@694
    move-object/from16 v0, p2

    #@696
    move-object/from16 v1, v22

    #@698
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69b
    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@69e
    move-result-object v7

    #@69f
    .line 558
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6a1
    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->setDefaultDialer(Ljava/lang/String;)Z

    #@6a4
    move-result v21

    #@6a5
    .line 559
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a8
    .line 560
    if-eqz v21, :cond_22

    #@6aa
    const/16 v22, 0x1

    #@6ac
    :goto_22
    move-object/from16 v0, p3

    #@6ae
    move/from16 v1, v22

    #@6b0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6b3
    .line 561
    const/16 v22, 0x1

    #@6b5
    return v22

    #@6b6
    .line 560
    :cond_22
    const/16 v22, 0x0

    #@6b8
    goto :goto_22

    #@6b9
    .line 43
    nop

    #@6ba
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
