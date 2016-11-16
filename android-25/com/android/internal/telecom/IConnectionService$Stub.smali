.class public abstract Lcom/android/internal/telecom/IConnectionService$Stub;
.super Landroid/os/Binder;
.source "IConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionService"

.field static final TRANSACTION_abort:I = 0x4

.field static final TRANSACTION_addConnectionServiceAdapter:I = 0x1

.field static final TRANSACTION_answer:I = 0x6

.field static final TRANSACTION_answerVideo:I = 0x5

.field static final TRANSACTION_conference:I = 0x10

.field static final TRANSACTION_createConnection:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_hold:I = 0xb

.field static final TRANSACTION_mergeConference:I = 0x12

.field static final TRANSACTION_onCallAudioStateChanged:I = 0xd

.field static final TRANSACTION_onExtrasChanged:I = 0x17

.field static final TRANSACTION_onPostDialContinue:I = 0x14

.field static final TRANSACTION_playDtmfTone:I = 0xe

.field static final TRANSACTION_pullExternalCall:I = 0x15

.field static final TRANSACTION_reject:I = 0x7

.field static final TRANSACTION_rejectWithMessage:I = 0x8

.field static final TRANSACTION_removeConnectionServiceAdapter:I = 0x2

.field static final TRANSACTION_sendCallEvent:I = 0x16

.field static final TRANSACTION_silence:I = 0xa

.field static final TRANSACTION_splitFromConference:I = 0x11

.field static final TRANSACTION_stopDtmfTone:I = 0xf

.field static final TRANSACTION_swapConference:I = 0x13

.field static final TRANSACTION_unhold:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 22
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    if-nez p0, :cond_0

    #@3
    .line 31
    return-object v1

    #@4
    .line 33
    :cond_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 35
    check-cast v0, Lcom/android/internal/telecom/IConnectionService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 41
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 288
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v1

    #@7
    return v1

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 50
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 54
    :sswitch_1
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@21
    move-result-object v7

    #@22
    .line 57
    .local v7, "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    #@25
    .line 58
    const/4 v1, 0x1

    #@26
    return v1

    #@27
    .line 62
    .end local v7    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :sswitch_2
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@2a
    move-object/from16 v0, p2

    #@2c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f
    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@32
    move-result-object v1

    #@33
    invoke-static {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@36
    move-result-object v7

    #@37
    .line 65
    .restart local v7    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    #@3a
    .line 66
    const/4 v1, 0x1

    #@3b
    return v1

    #@3c
    .line 70
    .end local v7    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :sswitch_3
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@3f
    move-object/from16 v0, p2

    #@41
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_0

    #@4a
    .line 73
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4c
    move-object/from16 v0, p2

    #@4e
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@51
    move-result-object v2

    #@52
    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    #@54
    .line 79
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    .line 81
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_1

    #@5e
    .line 82
    sget-object v1, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@60
    move-object/from16 v0, p2

    #@62
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@65
    move-result-object v4

    #@66
    check-cast v4, Landroid/telecom/ConnectionRequest;

    #@68
    .line 88
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v1

    #@6c
    if-eqz v1, :cond_2

    #@6e
    const/4 v5, 0x1

    #@6f
    .line 90
    .local v5, "_arg3":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@72
    move-result v1

    #@73
    if-eqz v1, :cond_3

    #@75
    const/4 v6, 0x1

    #@76
    .local v6, "_arg4":Z
    :goto_3
    move-object v1, p0

    #@77
    .line 91
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    #@7a
    .line 92
    const/4 v1, 0x1

    #@7b
    return v1

    #@7c
    .line 76
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":Z
    :cond_0
    const/4 v2, 0x0

    #@7d
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_0

    #@7e
    .line 85
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v3    # "_arg1":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    #@7f
    .local v4, "_arg2":Landroid/telecom/ConnectionRequest;
    goto :goto_1

    #@80
    .line 88
    .end local v4    # "_arg2":Landroid/telecom/ConnectionRequest;
    :cond_2
    const/4 v5, 0x0

    #@81
    .restart local v5    # "_arg3":Z
    goto :goto_2

    #@82
    .line 90
    :cond_3
    const/4 v6, 0x0

    #@83
    goto :goto_3

    #@84
    .line 96
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg3":Z
    :sswitch_4
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@87
    move-object/from16 v0, p2

    #@89
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8f
    move-result-object v8

    #@90
    .line 99
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/internal/telecom/IConnectionService$Stub;->abort(Ljava/lang/String;)V

    #@93
    .line 100
    const/4 v1, 0x1

    #@94
    return v1

    #@95
    .line 104
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@98
    move-object/from16 v0, p2

    #@9a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a0
    move-result-object v8

    #@a1
    .line 108
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a4
    move-result v10

    #@a5
    .line 109
    .local v10, "_arg1":I
    invoke-virtual {p0, v8, v10}, Lcom/android/internal/telecom/IConnectionService$Stub;->answerVideo(Ljava/lang/String;I)V

    #@a8
    .line 110
    const/4 v1, 0x1

    #@a9
    return v1

    #@aa
    .line 114
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":I
    :sswitch_6
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@ad
    move-object/from16 v0, p2

    #@af
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2
    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b5
    move-result-object v8

    #@b6
    .line 117
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/internal/telecom/IConnectionService$Stub;->answer(Ljava/lang/String;)V

    #@b9
    .line 118
    const/4 v1, 0x1

    #@ba
    return v1

    #@bb
    .line 122
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@be
    move-object/from16 v0, p2

    #@c0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c3
    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c6
    move-result-object v8

    #@c7
    .line 125
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/internal/telecom/IConnectionService$Stub;->reject(Ljava/lang/String;)V

    #@ca
    .line 126
    const/4 v1, 0x1

    #@cb
    return v1

    #@cc
    .line 130
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@cf
    move-object/from16 v0, p2

    #@d1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d4
    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d7
    move-result-object v8

    #@d8
    .line 134
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@db
    move-result-object v3

    #@dc
    .line 135
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v8, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->rejectWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    #@df
    .line 136
    const/4 v1, 0x1

    #@e0
    return v1

    #@e1
    .line 140
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@e4
    move-object/from16 v0, p2

    #@e6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e9
    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ec
    move-result-object v8

    #@ed
    .line 143
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/internal/telecom/IConnectionService$Stub;->disconnect(Ljava/lang/String;)V

    #@f0
    .line 144
    const/4 v1, 0x1

    #@f1
    return v1

    #@f2
    .line 148
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@f5
    move-object/from16 v0, p2

    #@f7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fa
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fd
    move-result-object v8

    #@fe
    .line 151
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/internal/telecom/IConnectionService$Stub;->silence(Ljava/lang/String;)V

    #@101
    .line 152
    const/4 v1, 0x1

    #@102
    return v1

    #@103
    .line 156
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@106
    move-object/from16 v0, p2

    #@108
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10b
    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10e
    move-result-object v8

    #@10f
    .line 159
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/internal/telecom/IConnectionService$Stub;->hold(Ljava/lang/String;)V

    #@112
    .line 160
    const/4 v1, 0x1

    #@113
    return v1

    #@114
    .line 164
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@117
    move-object/from16 v0, p2

    #@119
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11c
    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11f
    move-result-object v8

    #@120
    .line 167
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/internal/telecom/IConnectionService$Stub;->unhold(Ljava/lang/String;)V

    #@123
    .line 168
    const/4 v1, 0x1

    #@124
    return v1

    #@125
    .line 172
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@128
    move-object/from16 v0, p2

    #@12a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12d
    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@130
    move-result-object v8

    #@131
    .line 176
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@134
    move-result v1

    #@135
    if-eqz v1, :cond_4

    #@137
    .line 177
    sget-object v1, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@139
    move-object/from16 v0, p2

    #@13b
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13e
    move-result-object v12

    #@13f
    check-cast v12, Landroid/telecom/CallAudioState;

    #@141
    .line 182
    :goto_4
    invoke-virtual {p0, v8, v12}, Lcom/android/internal/telecom/IConnectionService$Stub;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    #@144
    .line 183
    const/4 v1, 0x1

    #@145
    return v1

    #@146
    .line 180
    :cond_4
    const/4 v12, 0x0

    #@147
    .local v12, "_arg1":Landroid/telecom/CallAudioState;
    goto :goto_4

    #@148
    .line 187
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/CallAudioState;
    :sswitch_e
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@14b
    move-object/from16 v0, p2

    #@14d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@150
    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@153
    move-result-object v8

    #@154
    .line 191
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@157
    move-result v1

    #@158
    int-to-char v9, v1

    #@159
    .line 192
    .local v9, "_arg1":C
    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telecom/IConnectionService$Stub;->playDtmfTone(Ljava/lang/String;C)V

    #@15c
    .line 193
    const/4 v1, 0x1

    #@15d
    return v1

    #@15e
    .line 197
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":C
    :sswitch_f
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@161
    move-object/from16 v0, p2

    #@163
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@166
    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@169
    move-result-object v8

    #@16a
    .line 200
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopDtmfTone(Ljava/lang/String;)V

    #@16d
    .line 201
    const/4 v1, 0x1

    #@16e
    return v1

    #@16f
    .line 205
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@172
    move-object/from16 v0, p2

    #@174
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@177
    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17a
    move-result-object v8

    #@17b
    .line 209
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17e
    move-result-object v3

    #@17f
    .line 210
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v8, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    #@182
    .line 211
    const/4 v1, 0x1

    #@183
    return v1

    #@184
    .line 215
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@187
    move-object/from16 v0, p2

    #@189
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18c
    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18f
    move-result-object v8

    #@190
    .line 218
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/internal/telecom/IConnectionService$Stub;->splitFromConference(Ljava/lang/String;)V

    #@193
    .line 219
    const/4 v1, 0x1

    #@194
    return v1

    #@195
    .line 223
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@198
    move-object/from16 v0, p2

    #@19a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19d
    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a0
    move-result-object v8

    #@1a1
    .line 226
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/internal/telecom/IConnectionService$Stub;->mergeConference(Ljava/lang/String;)V

    #@1a4
    .line 227
    const/4 v1, 0x1

    #@1a5
    return v1

    #@1a6
    .line 231
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@1a9
    move-object/from16 v0, p2

    #@1ab
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ae
    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b1
    move-result-object v8

    #@1b2
    .line 234
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/internal/telecom/IConnectionService$Stub;->swapConference(Ljava/lang/String;)V

    #@1b5
    .line 235
    const/4 v1, 0x1

    #@1b6
    return v1

    #@1b7
    .line 239
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@1ba
    move-object/from16 v0, p2

    #@1bc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bf
    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c2
    move-result-object v8

    #@1c3
    .line 243
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c6
    move-result v1

    #@1c7
    if-eqz v1, :cond_5

    #@1c9
    const/4 v13, 0x1

    #@1ca
    .line 244
    .local v13, "_arg1":Z
    :goto_5
    invoke-virtual {p0, v8, v13}, Lcom/android/internal/telecom/IConnectionService$Stub;->onPostDialContinue(Ljava/lang/String;Z)V

    #@1cd
    .line 245
    const/4 v1, 0x1

    #@1ce
    return v1

    #@1cf
    .line 243
    .end local v13    # "_arg1":Z
    :cond_5
    const/4 v13, 0x0

    #@1d0
    goto :goto_5

    #@1d1
    .line 249
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@1d4
    move-object/from16 v0, p2

    #@1d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d9
    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1dc
    move-result-object v8

    #@1dd
    .line 252
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/internal/telecom/IConnectionService$Stub;->pullExternalCall(Ljava/lang/String;)V

    #@1e0
    .line 253
    const/4 v1, 0x1

    #@1e1
    return v1

    #@1e2
    .line 257
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@1e5
    move-object/from16 v0, p2

    #@1e7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ea
    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ed
    move-result-object v8

    #@1ee
    .line 261
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f1
    move-result-object v3

    #@1f2
    .line 263
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f5
    move-result v1

    #@1f6
    if-eqz v1, :cond_6

    #@1f8
    .line 264
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1fa
    move-object/from16 v0, p2

    #@1fc
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ff
    move-result-object v14

    #@200
    check-cast v14, Landroid/os/Bundle;

    #@202
    .line 269
    :goto_6
    invoke-virtual {p0, v8, v3, v14}, Lcom/android/internal/telecom/IConnectionService$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@205
    .line 270
    const/4 v1, 0x1

    #@206
    return v1

    #@207
    .line 267
    :cond_6
    const/4 v14, 0x0

    #@208
    .local v14, "_arg2":Landroid/os/Bundle;
    goto :goto_6

    #@209
    .line 274
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/os/Bundle;
    :sswitch_17
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@20c
    move-object/from16 v0, p2

    #@20e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@211
    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@214
    move-result-object v8

    #@215
    .line 278
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@218
    move-result v1

    #@219
    if-eqz v1, :cond_7

    #@21b
    .line 279
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21d
    move-object/from16 v0, p2

    #@21f
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@222
    move-result-object v11

    #@223
    check-cast v11, Landroid/os/Bundle;

    #@225
    .line 284
    :goto_7
    invoke-virtual {p0, v8, v11}, Lcom/android/internal/telecom/IConnectionService$Stub;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    #@228
    .line 285
    const/4 v1, 0x1

    #@229
    return v1

    #@22a
    .line 282
    :cond_7
    const/4 v11, 0x0

    #@22b
    .local v11, "_arg1":Landroid/os/Bundle;
    goto :goto_7

    #@22c
    .line 45
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
