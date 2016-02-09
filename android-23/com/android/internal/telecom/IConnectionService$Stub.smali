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

.field static final TRANSACTION_conference:I = 0xe

.field static final TRANSACTION_createConnection:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x8

.field static final TRANSACTION_hold:I = 0x9

.field static final TRANSACTION_mergeConference:I = 0x10

.field static final TRANSACTION_onCallAudioStateChanged:I = 0xb

.field static final TRANSACTION_onPostDialContinue:I = 0x12

.field static final TRANSACTION_playDtmfTone:I = 0xc

.field static final TRANSACTION_reject:I = 0x7

.field static final TRANSACTION_removeConnectionServiceAdapter:I = 0x2

.field static final TRANSACTION_splitFromConference:I = 0xf

.field static final TRANSACTION_stopDtmfTone:I = 0xd

.field static final TRANSACTION_swapConference:I = 0x11

.field static final TRANSACTION_unhold:I = 0xa


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
    .locals 12
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
    .line 230
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 50
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 54
    :sswitch_1
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@1d
    move-result-object v6

    #@1e
    .line 57
    .local v6, "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual {p0, v6}, Lcom/android/internal/telecom/IConnectionService$Stub;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    #@21
    .line 58
    const/4 v0, 0x1

    #@22
    return v0

    #@23
    .line 62
    .end local v6    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :sswitch_2
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29
    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@30
    move-result-object v6

    #@31
    .line 65
    .restart local v6    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual {p0, v6}, Lcom/android/internal/telecom/IConnectionService$Stub;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    #@34
    .line 66
    const/4 v0, 0x1

    #@35
    return v0

    #@36
    .line 70
    .end local v6    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :sswitch_3
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c
    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_0

    #@42
    .line 73
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@44
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    #@4a
    .line 79
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .line 81
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_1

    #@54
    .line 82
    sget-object v0, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@56
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@59
    move-result-object v3

    #@5a
    check-cast v3, Landroid/telecom/ConnectionRequest;

    #@5c
    .line 88
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v0

    #@60
    if-eqz v0, :cond_2

    #@62
    const/4 v4, 0x1

    #@63
    .line 90
    .local v4, "_arg3":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v0

    #@67
    if-eqz v0, :cond_3

    #@69
    const/4 v5, 0x1

    #@6a
    .local v5, "_arg4":Z
    :goto_3
    move-object v0, p0

    #@6b
    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    #@6e
    .line 92
    const/4 v0, 0x1

    #@6f
    return v0

    #@70
    .line 76
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    :cond_0
    const/4 v1, 0x0

    #@71
    .local v1, "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_0

    #@72
    .line 85
    .end local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v2    # "_arg1":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    #@73
    .local v3, "_arg2":Landroid/telecom/ConnectionRequest;
    goto :goto_1

    #@74
    .line 88
    .end local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    :cond_2
    const/4 v4, 0x0

    #@75
    .restart local v4    # "_arg3":Z
    goto :goto_2

    #@76
    .line 90
    :cond_3
    const/4 v5, 0x0

    #@77
    .restart local v5    # "_arg4":Z
    goto :goto_3

    #@78
    .line 96
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    :sswitch_4
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@7b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e
    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@81
    move-result-object v7

    #@82
    .line 99
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->abort(Ljava/lang/String;)V

    #@85
    .line 100
    const/4 v0, 0x1

    #@86
    return v0

    #@87
    .line 104
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@8a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d
    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@90
    move-result-object v7

    #@91
    .line 108
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@94
    move-result v9

    #@95
    .line 109
    .local v9, "_arg1":I
    invoke-virtual {p0, v7, v9}, Lcom/android/internal/telecom/IConnectionService$Stub;->answerVideo(Ljava/lang/String;I)V

    #@98
    .line 110
    const/4 v0, 0x1

    #@99
    return v0

    #@9a
    .line 114
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    :sswitch_6
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@9d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a0
    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a3
    move-result-object v7

    #@a4
    .line 117
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->answer(Ljava/lang/String;)V

    #@a7
    .line 118
    const/4 v0, 0x1

    #@a8
    return v0

    #@a9
    .line 122
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@ac
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af
    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b2
    move-result-object v7

    #@b3
    .line 125
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->reject(Ljava/lang/String;)V

    #@b6
    .line 126
    const/4 v0, 0x1

    #@b7
    return v0

    #@b8
    .line 130
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@bb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@be
    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c1
    move-result-object v7

    #@c2
    .line 133
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->disconnect(Ljava/lang/String;)V

    #@c5
    .line 134
    const/4 v0, 0x1

    #@c6
    return v0

    #@c7
    .line 138
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@ca
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cd
    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d0
    move-result-object v7

    #@d1
    .line 141
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->hold(Ljava/lang/String;)V

    #@d4
    .line 142
    const/4 v0, 0x1

    #@d5
    return v0

    #@d6
    .line 146
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@d9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dc
    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@df
    move-result-object v7

    #@e0
    .line 149
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->unhold(Ljava/lang/String;)V

    #@e3
    .line 150
    const/4 v0, 0x1

    #@e4
    return v0

    #@e5
    .line 154
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@e8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@eb
    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ee
    move-result-object v7

    #@ef
    .line 158
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f2
    move-result v0

    #@f3
    if-eqz v0, :cond_4

    #@f5
    .line 159
    sget-object v0, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f7
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fa
    move-result-object v10

    #@fb
    check-cast v10, Landroid/telecom/CallAudioState;

    #@fd
    .line 164
    :goto_4
    invoke-virtual {p0, v7, v10}, Lcom/android/internal/telecom/IConnectionService$Stub;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    #@100
    .line 165
    const/4 v0, 0x1

    #@101
    return v0

    #@102
    .line 162
    :cond_4
    const/4 v10, 0x0

    #@103
    .local v10, "_arg1":Landroid/telecom/CallAudioState;
    goto :goto_4

    #@104
    .line 169
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Landroid/telecom/CallAudioState;
    :sswitch_c
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10a
    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10d
    move-result-object v7

    #@10e
    .line 173
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@111
    move-result v0

    #@112
    int-to-char v8, v0

    #@113
    .line 174
    .local v8, "_arg1":C
    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telecom/IConnectionService$Stub;->playDtmfTone(Ljava/lang/String;C)V

    #@116
    .line 175
    const/4 v0, 0x1

    #@117
    return v0

    #@118
    .line 179
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":C
    :sswitch_d
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@11b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11e
    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@121
    move-result-object v7

    #@122
    .line 182
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopDtmfTone(Ljava/lang/String;)V

    #@125
    .line 183
    const/4 v0, 0x1

    #@126
    return v0

    #@127
    .line 187
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@12a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12d
    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@130
    move-result-object v7

    #@131
    .line 191
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@134
    move-result-object v2

    #@135
    .line 192
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    #@138
    .line 193
    const/4 v0, 0x1

    #@139
    return v0

    #@13a
    .line 197
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@13d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@140
    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@143
    move-result-object v7

    #@144
    .line 200
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->splitFromConference(Ljava/lang/String;)V

    #@147
    .line 201
    const/4 v0, 0x1

    #@148
    return v0

    #@149
    .line 205
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@14c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14f
    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@152
    move-result-object v7

    #@153
    .line 208
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->mergeConference(Ljava/lang/String;)V

    #@156
    .line 209
    const/4 v0, 0x1

    #@157
    return v0

    #@158
    .line 213
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@15b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15e
    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@161
    move-result-object v7

    #@162
    .line 216
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->swapConference(Ljava/lang/String;)V

    #@165
    .line 217
    const/4 v0, 0x1

    #@166
    return v0

    #@167
    .line 221
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@16a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16d
    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@170
    move-result-object v7

    #@171
    .line 225
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@174
    move-result v0

    #@175
    if-eqz v0, :cond_5

    #@177
    const/4 v11, 0x1

    #@178
    .line 226
    .local v11, "_arg1":Z
    :goto_5
    invoke-virtual {p0, v7, v11}, Lcom/android/internal/telecom/IConnectionService$Stub;->onPostDialContinue(Ljava/lang/String;Z)V

    #@17b
    .line 227
    const/4 v0, 0x1

    #@17c
    return v0

    #@17d
    .line 225
    .end local v11    # "_arg1":Z
    :cond_5
    const/4 v11, 0x0

    #@17e
    .restart local v11    # "_arg1":Z
    goto :goto_5

    #@17f
    .line 45
    nop

    #@180
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
