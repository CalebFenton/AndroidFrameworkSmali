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

.field static final TRANSACTION_rejectCall:I = 0x2

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
    .locals 11
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
    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v10

    #@7
    return v10

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 50
    const/4 v10, 0x1

    #@f
    return v10

    #@10
    .line 54
    :sswitch_1
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@13
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 58
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    .line 59
    .local v4, "_arg1":I
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->answerCall(Ljava/lang/String;I)V

    #@21
    .line 60
    const/4 v10, 0x1

    #@22
    return v10

    #@23
    .line 64
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_2
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@26
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29
    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 68
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v10

    #@31
    if-eqz v10, :cond_0

    #@33
    const/4 v7, 0x1

    #@34
    .line 70
    .local v7, "_arg1":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@37
    move-result-object v8

    #@38
    .line 71
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v7, v8}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    #@3b
    .line 72
    const/4 v10, 0x1

    #@3c
    return v10

    #@3d
    .line 68
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    #@3e
    .restart local v7    # "_arg1":Z
    goto :goto_0

    #@3f
    .line 76
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@42
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45
    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    .line 79
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->disconnectCall(Ljava/lang/String;)V

    #@4c
    .line 80
    const/4 v10, 0x1

    #@4d
    return v10

    #@4e
    .line 84
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@51
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    .line 87
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->holdCall(Ljava/lang/String;)V

    #@5b
    .line 88
    const/4 v10, 0x1

    #@5c
    return v10

    #@5d
    .line 92
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@60
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@63
    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    .line 95
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->unholdCall(Ljava/lang/String;)V

    #@6a
    .line 96
    const/4 v10, 0x1

    #@6b
    return v10

    #@6c
    .line 100
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@6f
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v10

    #@76
    if-eqz v10, :cond_1

    #@78
    const/4 v2, 0x1

    #@79
    .line 103
    .local v2, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mute(Z)V

    #@7c
    .line 104
    const/4 v10, 0x1

    #@7d
    return v10

    #@7e
    .line 102
    .end local v2    # "_arg0":Z
    :cond_1
    const/4 v2, 0x0

    #@7f
    .restart local v2    # "_arg0":Z
    goto :goto_1

    #@80
    .line 108
    .end local v2    # "_arg0":Z
    :sswitch_7
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@83
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86
    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@89
    move-result v0

    #@8a
    .line 111
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setAudioRoute(I)V

    #@8d
    .line 112
    const/4 v10, 0x1

    #@8e
    return v10

    #@8f
    .line 116
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@92
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@95
    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    .line 120
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9c
    move-result v10

    #@9d
    int-to-char v3, v10

    #@9e
    .line 121
    .local v3, "_arg1":C
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->playDtmfTone(Ljava/lang/String;C)V

    #@a1
    .line 122
    const/4 v10, 0x1

    #@a2
    return v10

    #@a3
    .line 126
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":C
    :sswitch_9
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@a6
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a9
    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ac
    move-result-object v1

    #@ad
    .line 129
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopDtmfTone(Ljava/lang/String;)V

    #@b0
    .line 130
    const/4 v10, 0x1

    #@b1
    return v10

    #@b2
    .line 134
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@b5
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8
    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bb
    move-result-object v1

    #@bc
    .line 138
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bf
    move-result v10

    #@c0
    if-eqz v10, :cond_2

    #@c2
    const/4 v7, 0x1

    #@c3
    .line 139
    .restart local v7    # "_arg1":Z
    :goto_2
    invoke-virtual {p0, v1, v7}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->postDialContinue(Ljava/lang/String;Z)V

    #@c6
    .line 140
    const/4 v10, 0x1

    #@c7
    return v10

    #@c8
    .line 138
    .end local v7    # "_arg1":Z
    :cond_2
    const/4 v7, 0x0

    #@c9
    .restart local v7    # "_arg1":Z
    goto :goto_2

    #@ca
    .line 144
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    :sswitch_b
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@cd
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d0
    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d3
    move-result-object v1

    #@d4
    .line 148
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d7
    move-result v10

    #@d8
    if-eqz v10, :cond_3

    #@da
    .line 149
    sget-object v10, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dc
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@df
    move-result-object v5

    #@e0
    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    #@e2
    .line 155
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v10

    #@e6
    if-eqz v10, :cond_4

    #@e8
    const/4 v9, 0x1

    #@e9
    .line 156
    .local v9, "_arg2":Z
    :goto_4
    invoke-virtual {p0, v1, v5, v9}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    #@ec
    .line 157
    const/4 v10, 0x1

    #@ed
    return v10

    #@ee
    .line 152
    .end local v9    # "_arg2":Z
    :cond_3
    const/4 v5, 0x0

    #@ef
    .local v5, "_arg1":Landroid/telecom/PhoneAccountHandle;
    goto :goto_3

    #@f0
    .line 155
    .end local v5    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    :cond_4
    const/4 v9, 0x0

    #@f1
    .restart local v9    # "_arg2":Z
    goto :goto_4

    #@f2
    .line 161
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":Z
    :sswitch_c
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@f5
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f8
    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fb
    move-result-object v1

    #@fc
    .line 165
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ff
    move-result-object v6

    #@100
    .line 166
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v6}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    #@103
    .line 167
    const/4 v10, 0x1

    #@104
    return v10

    #@105
    .line 171
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@108
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10b
    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10e
    move-result-object v1

    #@10f
    .line 174
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->splitFromConference(Ljava/lang/String;)V

    #@112
    .line 175
    const/4 v10, 0x1

    #@113
    return v10

    #@114
    .line 179
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@117
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11a
    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11d
    move-result-object v1

    #@11e
    .line 182
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mergeConference(Ljava/lang/String;)V

    #@121
    .line 183
    const/4 v10, 0x1

    #@122
    return v10

    #@123
    .line 187
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@126
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@129
    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12c
    move-result-object v1

    #@12d
    .line 190
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->swapConference(Ljava/lang/String;)V

    #@130
    .line 191
    const/4 v10, 0x1

    #@131
    return v10

    #@132
    .line 195
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@135
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@138
    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOnProximitySensor()V

    #@13b
    .line 197
    const/4 v10, 0x1

    #@13c
    return v10

    #@13d
    .line 201
    :sswitch_11
    const-string/jumbo v10, "com.android.internal.telecom.IInCallAdapter"

    #@140
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@143
    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@146
    move-result v10

    #@147
    if-eqz v10, :cond_5

    #@149
    const/4 v2, 0x1

    #@14a
    .line 204
    .restart local v2    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOffProximitySensor(Z)V

    #@14d
    .line 205
    const/4 v10, 0x1

    #@14e
    return v10

    #@14f
    .line 203
    .end local v2    # "_arg0":Z
    :cond_5
    const/4 v2, 0x0

    #@150
    .restart local v2    # "_arg0":Z
    goto :goto_5

    #@151
    .line 45
    nop

    #@152
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
