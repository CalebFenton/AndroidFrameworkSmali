.class public abstract Lcom/android/internal/telecom/IInCallAdapter$Stub;
.super Landroid/os/Binder;
.source "IInCallAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallAdapter"

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_conference:I = 0xc

.field static final TRANSACTION_disconnectCall:I = 0x3

.field static final TRANSACTION_holdCall:I = 0x4

.field static final TRANSACTION_mergeConference:I = 0xe

.field static final TRANSACTION_mute:I = 0x6

.field static final TRANSACTION_phoneAccountSelected:I = 0xb

.field static final TRANSACTION_playDtmfTone:I = 0x8

.field static final TRANSACTION_postDialContinue:I = 0xa

.field static final TRANSACTION_pullExternalCall:I = 0x12

.field static final TRANSACTION_putExtras:I = 0x14

.field static final TRANSACTION_rejectCall:I = 0x2

.field static final TRANSACTION_removeExtras:I = 0x15

.field static final TRANSACTION_sendCallEvent:I = 0x13

.field static final TRANSACTION_setAudioRoute:I = 0x7

.field static final TRANSACTION_splitFromConference:I = 0xd

.field static final TRANSACTION_stopDtmfTone:I = 0x9

.field static final TRANSACTION_swapConference:I = 0xf

.field static final TRANSACTION_turnOffProximitySensor:I = 0x11

.field static final TRANSACTION_turnOnProximitySensor:I = 0x10

.field static final TRANSACTION_unholdCall:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 22
    const-string/jumbo v0, "com.android.internal.telecom.IInCallAdapter"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;
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
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telecom/IInCallAdapter;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 35
    check-cast v0, Lcom/android/internal/telecom/IInCallAdapter;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 258
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v14

    #@7
    return v14

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 50
    const/4 v14, 0x1

    #@11
    return v14

    #@12
    .line 54
    :sswitch_1
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 58
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v5

    #@22
    .line 59
    .local v5, "_arg1":I
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->answerCall(Ljava/lang/String;I)V

    #@25
    .line 60
    const/4 v14, 0x1

    #@26
    return v14

    #@27
    .line 64
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_2
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@2a
    move-object/from16 v0, p2

    #@2c
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f
    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 68
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v14

    #@37
    if-eqz v14, :cond_0

    #@39
    const/4 v10, 0x1

    #@3a
    .line 70
    .local v10, "_arg1":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d
    move-result-object v12

    #@3e
    .line 71
    .local v12, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v10, v12}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    #@41
    .line 72
    const/4 v14, 0x1

    #@42
    return v14

    #@43
    .line 68
    .end local v10    # "_arg1":Z
    .end local v12    # "_arg2":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    #@44
    .restart local v10    # "_arg1":Z
    goto :goto_0

    #@45
    .line 76
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@48
    move-object/from16 v0, p2

    #@4a
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d
    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    .line 79
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->disconnectCall(Ljava/lang/String;)V

    #@54
    .line 80
    const/4 v14, 0x1

    #@55
    return v14

    #@56
    .line 84
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@59
    move-object/from16 v0, p2

    #@5b
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    .line 87
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->holdCall(Ljava/lang/String;)V

    #@65
    .line 88
    const/4 v14, 0x1

    #@66
    return v14

    #@67
    .line 92
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@6a
    move-object/from16 v0, p2

    #@6c
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    .line 95
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->unholdCall(Ljava/lang/String;)V

    #@76
    .line 96
    const/4 v14, 0x1

    #@77
    return v14

    #@78
    .line 100
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@7b
    move-object/from16 v0, p2

    #@7d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v14

    #@84
    if-eqz v14, :cond_1

    #@86
    const/4 v3, 0x1

    #@87
    .line 103
    .local v3, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mute(Z)V

    #@8a
    .line 104
    const/4 v14, 0x1

    #@8b
    return v14

    #@8c
    .line 102
    .end local v3    # "_arg0":Z
    :cond_1
    const/4 v3, 0x0

    #@8d
    goto :goto_1

    #@8e
    .line 108
    :sswitch_7
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@91
    move-object/from16 v0, p2

    #@93
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96
    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@99
    move-result v1

    #@9a
    .line 111
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setAudioRoute(I)V

    #@9d
    .line 112
    const/4 v14, 0x1

    #@9e
    return v14

    #@9f
    .line 116
    .end local v1    # "_arg0":I
    :sswitch_8
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@a2
    move-object/from16 v0, p2

    #@a4
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a7
    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@aa
    move-result-object v2

    #@ab
    .line 120
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ae
    move-result v14

    #@af
    int-to-char v4, v14

    #@b0
    .line 121
    .local v4, "_arg1":C
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->playDtmfTone(Ljava/lang/String;C)V

    #@b3
    .line 122
    const/4 v14, 0x1

    #@b4
    return v14

    #@b5
    .line 126
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":C
    :sswitch_9
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@b8
    move-object/from16 v0, p2

    #@ba
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bd
    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c0
    move-result-object v2

    #@c1
    .line 129
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopDtmfTone(Ljava/lang/String;)V

    #@c4
    .line 130
    const/4 v14, 0x1

    #@c5
    return v14

    #@c6
    .line 134
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@c9
    move-object/from16 v0, p2

    #@cb
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ce
    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d1
    move-result-object v2

    #@d2
    .line 138
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d5
    move-result v14

    #@d6
    if-eqz v14, :cond_2

    #@d8
    const/4 v10, 0x1

    #@d9
    .line 139
    .local v10, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v2, v10}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->postDialContinue(Ljava/lang/String;Z)V

    #@dc
    .line 140
    const/4 v14, 0x1

    #@dd
    return v14

    #@de
    .line 138
    .end local v10    # "_arg1":Z
    :cond_2
    const/4 v10, 0x0

    #@df
    goto :goto_2

    #@e0
    .line 144
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@e3
    move-object/from16 v0, p2

    #@e5
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e8
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@eb
    move-result-object v2

    #@ec
    .line 148
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ef
    move-result v14

    #@f0
    if-eqz v14, :cond_3

    #@f2
    .line 149
    sget-object v14, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f4
    move-object/from16 v0, p2

    #@f6
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f9
    move-result-object v7

    #@fa
    check-cast v7, Landroid/telecom/PhoneAccountHandle;

    #@fc
    .line 155
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ff
    move-result v14

    #@100
    if-eqz v14, :cond_4

    #@102
    const/4 v13, 0x1

    #@103
    .line 156
    .local v13, "_arg2":Z
    :goto_4
    invoke-virtual {p0, v2, v7, v13}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    #@106
    .line 157
    const/4 v14, 0x1

    #@107
    return v14

    #@108
    .line 152
    .end local v13    # "_arg2":Z
    :cond_3
    const/4 v7, 0x0

    #@109
    .local v7, "_arg1":Landroid/telecom/PhoneAccountHandle;
    goto :goto_3

    #@10a
    .line 155
    .end local v7    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    :cond_4
    const/4 v13, 0x0

    #@10b
    goto :goto_4

    #@10c
    .line 161
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@10f
    move-object/from16 v0, p2

    #@111
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@114
    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@117
    move-result-object v2

    #@118
    .line 165
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11b
    move-result-object v8

    #@11c
    .line 166
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v8}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    #@11f
    .line 167
    const/4 v14, 0x1

    #@120
    return v14

    #@121
    .line 171
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@124
    move-object/from16 v0, p2

    #@126
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@129
    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12c
    move-result-object v2

    #@12d
    .line 174
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->splitFromConference(Ljava/lang/String;)V

    #@130
    .line 175
    const/4 v14, 0x1

    #@131
    return v14

    #@132
    .line 179
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@135
    move-object/from16 v0, p2

    #@137
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13a
    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13d
    move-result-object v2

    #@13e
    .line 182
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mergeConference(Ljava/lang/String;)V

    #@141
    .line 183
    const/4 v14, 0x1

    #@142
    return v14

    #@143
    .line 187
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@146
    move-object/from16 v0, p2

    #@148
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14b
    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14e
    move-result-object v2

    #@14f
    .line 190
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->swapConference(Ljava/lang/String;)V

    #@152
    .line 191
    const/4 v14, 0x1

    #@153
    return v14

    #@154
    .line 195
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@157
    move-object/from16 v0, p2

    #@159
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15c
    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOnProximitySensor()V

    #@15f
    .line 197
    const/4 v14, 0x1

    #@160
    return v14

    #@161
    .line 201
    :sswitch_11
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@164
    move-object/from16 v0, p2

    #@166
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@169
    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16c
    move-result v14

    #@16d
    if-eqz v14, :cond_5

    #@16f
    const/4 v3, 0x1

    #@170
    .line 204
    .restart local v3    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOffProximitySensor(Z)V

    #@173
    .line 205
    const/4 v14, 0x1

    #@174
    return v14

    #@175
    .line 203
    .end local v3    # "_arg0":Z
    :cond_5
    const/4 v3, 0x0

    #@176
    goto :goto_5

    #@177
    .line 209
    :sswitch_12
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@17a
    move-object/from16 v0, p2

    #@17c
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17f
    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@182
    move-result-object v2

    #@183
    .line 212
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->pullExternalCall(Ljava/lang/String;)V

    #@186
    .line 213
    const/4 v14, 0x1

    #@187
    return v14

    #@188
    .line 217
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@18b
    move-object/from16 v0, p2

    #@18d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@190
    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@193
    move-result-object v2

    #@194
    .line 221
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@197
    move-result-object v8

    #@198
    .line 223
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19b
    move-result v14

    #@19c
    if-eqz v14, :cond_6

    #@19e
    .line 224
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a0
    move-object/from16 v0, p2

    #@1a2
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a5
    move-result-object v11

    #@1a6
    check-cast v11, Landroid/os/Bundle;

    #@1a8
    .line 229
    :goto_6
    invoke-virtual {p0, v2, v8, v11}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@1ab
    .line 230
    const/4 v14, 0x1

    #@1ac
    return v14

    #@1ad
    .line 227
    :cond_6
    const/4 v11, 0x0

    #@1ae
    .local v11, "_arg2":Landroid/os/Bundle;
    goto :goto_6

    #@1af
    .line 234
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg2":Landroid/os/Bundle;
    :sswitch_14
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@1b2
    move-object/from16 v0, p2

    #@1b4
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b7
    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ba
    move-result-object v2

    #@1bb
    .line 238
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1be
    move-result v14

    #@1bf
    if-eqz v14, :cond_7

    #@1c1
    .line 239
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c3
    move-object/from16 v0, p2

    #@1c5
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c8
    move-result-object v6

    #@1c9
    check-cast v6, Landroid/os/Bundle;

    #@1cb
    .line 244
    :goto_7
    invoke-virtual {p0, v2, v6}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1ce
    .line 245
    const/4 v14, 0x1

    #@1cf
    return v14

    #@1d0
    .line 242
    :cond_7
    const/4 v6, 0x0

    #@1d1
    .local v6, "_arg1":Landroid/os/Bundle;
    goto :goto_7

    #@1d2
    .line 249
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/os/Bundle;
    :sswitch_15
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    #@1d5
    move-object/from16 v0, p2

    #@1d7
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1da
    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1dd
    move-result-object v2

    #@1de
    .line 253
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@1e1
    move-result-object v9

    #@1e2
    .line 254
    .local v9, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2, v9}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    #@1e5
    .line 255
    const/4 v14, 0x1

    #@1e6
    return v14

    #@1e7
    .line 45
    nop

    #@1e8
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
