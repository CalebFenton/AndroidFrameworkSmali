.class public abstract Lcom/android/ims/internal/IImsCallSession$Stub;
.super Landroid/os/Binder;
.source "IImsCallSession.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSession"

.field static final TRANSACTION_accept:I = 0xd

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_extendToConference:I = 0x14

.field static final TRANSACTION_getCallId:I = 0x2

.field static final TRANSACTION_getCallProfile:I = 0x3

.field static final TRANSACTION_getLocalCallProfile:I = 0x4

.field static final TRANSACTION_getProperty:I = 0x6

.field static final TRANSACTION_getRemoteCallProfile:I = 0x5

.field static final TRANSACTION_getState:I = 0x7

.field static final TRANSACTION_getVideoCallProvider:I = 0x1b

.field static final TRANSACTION_hold:I = 0x10

.field static final TRANSACTION_inviteParticipants:I = 0x15

.field static final TRANSACTION_isInCall:I = 0x8

.field static final TRANSACTION_isMultiparty:I = 0x1c

.field static final TRANSACTION_merge:I = 0x12

.field static final TRANSACTION_reject:I = 0xe

.field static final TRANSACTION_removeParticipants:I = 0x16

.field static final TRANSACTION_resume:I = 0x11

.field static final TRANSACTION_sendDtmf:I = 0x17

.field static final TRANSACTION_sendUssd:I = 0x1a

.field static final TRANSACTION_setListener:I = 0x9

.field static final TRANSACTION_setMute:I = 0xa

.field static final TRANSACTION_start:I = 0xb

.field static final TRANSACTION_startConference:I = 0xc

.field static final TRANSACTION_startDtmf:I = 0x18

.field static final TRANSACTION_stopDtmf:I = 0x19

.field static final TRANSACTION_terminate:I = 0xf

.field static final TRANSACTION_update:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "com.android.ims.internal.IImsCallSession"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;
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
    const-string/jumbo v1, "com.android.ims.internal.IImsCallSession"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSession;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Lcom/android/ims/internal/IImsCallSession;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 18
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
    .line 353
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v17

    #@7
    return v17

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v17

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 48
    const/16 v17, 0x1

    #@14
    return v17

    #@15
    .line 52
    :sswitch_1
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v17

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->close()V

    #@22
    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 55
    const/16 v17, 0x1

    #@27
    return v17

    #@28
    .line 59
    :sswitch_2
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@2b
    move-object/from16 v0, p2

    #@2d
    move-object/from16 v1, v17

    #@2f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getCallId()Ljava/lang/String;

    #@35
    move-result-object v15

    #@36
    .line 61
    .local v15, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39
    .line 62
    move-object/from16 v0, p3

    #@3b
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3e
    .line 63
    const/16 v17, 0x1

    #@40
    return v17

    #@41
    .line 67
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@44
    move-object/from16 v0, p2

    #@46
    move-object/from16 v1, v17

    #@48
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b
    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@4e
    move-result-object v13

    #@4f
    .line 69
    .local v13, "_result":Lcom/android/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@52
    .line 70
    if-eqz v13, :cond_0

    #@54
    .line 71
    const/16 v17, 0x1

    #@56
    move-object/from16 v0, p3

    #@58
    move/from16 v1, v17

    #@5a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    .line 72
    const/16 v17, 0x1

    #@5f
    move-object/from16 v0, p3

    #@61
    move/from16 v1, v17

    #@63
    invoke-virtual {v13, v0, v1}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@66
    .line 77
    :goto_0
    const/16 v17, 0x1

    #@68
    return v17

    #@69
    .line 75
    :cond_0
    const/16 v17, 0x0

    #@6b
    move-object/from16 v0, p3

    #@6d
    move/from16 v1, v17

    #@6f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@72
    goto :goto_0

    #@73
    .line 81
    .end local v13    # "_result":Lcom/android/ims/ImsCallProfile;
    :sswitch_4
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@76
    move-object/from16 v0, p2

    #@78
    move-object/from16 v1, v17

    #@7a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7d
    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;

    #@80
    move-result-object v13

    #@81
    .line 83
    .restart local v13    # "_result":Lcom/android/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@84
    .line 84
    if-eqz v13, :cond_1

    #@86
    .line 85
    const/16 v17, 0x1

    #@88
    move-object/from16 v0, p3

    #@8a
    move/from16 v1, v17

    #@8c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8f
    .line 86
    const/16 v17, 0x1

    #@91
    move-object/from16 v0, p3

    #@93
    move/from16 v1, v17

    #@95
    invoke-virtual {v13, v0, v1}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@98
    .line 91
    :goto_1
    const/16 v17, 0x1

    #@9a
    return v17

    #@9b
    .line 89
    :cond_1
    const/16 v17, 0x0

    #@9d
    move-object/from16 v0, p3

    #@9f
    move/from16 v1, v17

    #@a1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a4
    goto :goto_1

    #@a5
    .line 95
    .end local v13    # "_result":Lcom/android/ims/ImsCallProfile;
    :sswitch_5
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@a8
    move-object/from16 v0, p2

    #@aa
    move-object/from16 v1, v17

    #@ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af
    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;

    #@b2
    move-result-object v13

    #@b3
    .line 97
    .restart local v13    # "_result":Lcom/android/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6
    .line 98
    if-eqz v13, :cond_2

    #@b8
    .line 99
    const/16 v17, 0x1

    #@ba
    move-object/from16 v0, p3

    #@bc
    move/from16 v1, v17

    #@be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c1
    .line 100
    const/16 v17, 0x1

    #@c3
    move-object/from16 v0, p3

    #@c5
    move/from16 v1, v17

    #@c7
    invoke-virtual {v13, v0, v1}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@ca
    .line 105
    :goto_2
    const/16 v17, 0x1

    #@cc
    return v17

    #@cd
    .line 103
    :cond_2
    const/16 v17, 0x0

    #@cf
    move-object/from16 v0, p3

    #@d1
    move/from16 v1, v17

    #@d3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d6
    goto :goto_2

    #@d7
    .line 109
    .end local v13    # "_result":Lcom/android/ims/ImsCallProfile;
    :sswitch_6
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@da
    move-object/from16 v0, p2

    #@dc
    move-object/from16 v1, v17

    #@de
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e1
    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e4
    move-result-object v6

    #@e5
    .line 112
    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e7
    invoke-virtual {v0, v6}, Lcom/android/ims/internal/IImsCallSession$Stub;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@ea
    move-result-object v15

    #@eb
    .line 113
    .restart local v15    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ee
    .line 114
    move-object/from16 v0, p3

    #@f0
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f3
    .line 115
    const/16 v17, 0x1

    #@f5
    return v17

    #@f6
    .line 119
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@f9
    move-object/from16 v0, p2

    #@fb
    move-object/from16 v1, v17

    #@fd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@100
    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getState()I

    #@103
    move-result v12

    #@104
    .line 121
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@107
    .line 122
    move-object/from16 v0, p3

    #@109
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    #@10c
    .line 123
    const/16 v17, 0x1

    #@10e
    return v17

    #@10f
    .line 127
    .end local v12    # "_result":I
    :sswitch_8
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@112
    move-object/from16 v0, p2

    #@114
    move-object/from16 v1, v17

    #@116
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@119
    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->isInCall()Z

    #@11c
    move-result v16

    #@11d
    .line 129
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@120
    .line 130
    if-eqz v16, :cond_3

    #@122
    const/16 v17, 0x1

    #@124
    :goto_3
    move-object/from16 v0, p3

    #@126
    move/from16 v1, v17

    #@128
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@12b
    .line 131
    const/16 v17, 0x1

    #@12d
    return v17

    #@12e
    .line 130
    :cond_3
    const/16 v17, 0x0

    #@130
    goto :goto_3

    #@131
    .line 135
    .end local v16    # "_result":Z
    :sswitch_9
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@134
    move-object/from16 v0, p2

    #@136
    move-object/from16 v1, v17

    #@138
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13b
    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@13e
    move-result-object v17

    #@13f
    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;

    #@142
    move-result-object v5

    #@143
    .line 138
    .local v5, "_arg0":Lcom/android/ims/internal/IImsCallSessionListener;
    move-object/from16 v0, p0

    #@145
    invoke-virtual {v0, v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V

    #@148
    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14b
    .line 140
    const/16 v17, 0x1

    #@14d
    return v17

    #@14e
    .line 144
    .end local v5    # "_arg0":Lcom/android/ims/internal/IImsCallSessionListener;
    :sswitch_a
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@151
    move-object/from16 v0, p2

    #@153
    move-object/from16 v1, v17

    #@155
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@158
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15b
    move-result v17

    #@15c
    if-eqz v17, :cond_4

    #@15e
    const/4 v7, 0x1

    #@15f
    .line 147
    .local v7, "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    #@161
    invoke-virtual {v0, v7}, Lcom/android/ims/internal/IImsCallSession$Stub;->setMute(Z)V

    #@164
    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@167
    .line 149
    const/16 v17, 0x1

    #@169
    return v17

    #@16a
    .line 146
    .end local v7    # "_arg0":Z
    :cond_4
    const/4 v7, 0x0

    #@16b
    .restart local v7    # "_arg0":Z
    goto :goto_4

    #@16c
    .line 153
    .end local v7    # "_arg0":Z
    :sswitch_b
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@16f
    move-object/from16 v0, p2

    #@171
    move-object/from16 v1, v17

    #@173
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@176
    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@179
    move-result-object v6

    #@17a
    .line 157
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17d
    move-result v17

    #@17e
    if-eqz v17, :cond_5

    #@180
    .line 158
    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@182
    move-object/from16 v0, v17

    #@184
    move-object/from16 v1, p2

    #@186
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@189
    move-result-object v10

    #@18a
    check-cast v10, Lcom/android/ims/ImsCallProfile;

    #@18c
    .line 163
    :goto_5
    move-object/from16 v0, p0

    #@18e
    invoke-virtual {v0, v6, v10}, Lcom/android/ims/internal/IImsCallSession$Stub;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V

    #@191
    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@194
    .line 165
    const/16 v17, 0x1

    #@196
    return v17

    #@197
    .line 161
    :cond_5
    const/4 v10, 0x0

    #@198
    .local v10, "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_5

    #@199
    .line 169
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_c
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@19c
    move-object/from16 v0, p2

    #@19e
    move-object/from16 v1, v17

    #@1a0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a3
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1a6
    move-result-object v8

    #@1a7
    .line 173
    .local v8, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1aa
    move-result v17

    #@1ab
    if-eqz v17, :cond_6

    #@1ad
    .line 174
    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1af
    move-object/from16 v0, v17

    #@1b1
    move-object/from16 v1, p2

    #@1b3
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b6
    move-result-object v10

    #@1b7
    check-cast v10, Lcom/android/ims/ImsCallProfile;

    #@1b9
    .line 179
    :goto_6
    move-object/from16 v0, p0

    #@1bb
    invoke-virtual {v0, v8, v10}, Lcom/android/ims/internal/IImsCallSession$Stub;->startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V

    #@1be
    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c1
    .line 181
    const/16 v17, 0x1

    #@1c3
    return v17

    #@1c4
    .line 177
    :cond_6
    const/4 v10, 0x0

    #@1c5
    .restart local v10    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_6

    #@1c6
    .line 185
    .end local v8    # "_arg0":[Ljava/lang/String;
    .end local v10    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_d
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@1c9
    move-object/from16 v0, p2

    #@1cb
    move-object/from16 v1, v17

    #@1cd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d0
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d3
    move-result v3

    #@1d4
    .line 189
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d7
    move-result v17

    #@1d8
    if-eqz v17, :cond_7

    #@1da
    .line 190
    sget-object v17, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1dc
    move-object/from16 v0, v17

    #@1de
    move-object/from16 v1, p2

    #@1e0
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e3
    move-result-object v11

    #@1e4
    check-cast v11, Lcom/android/ims/ImsStreamMediaProfile;

    #@1e6
    .line 195
    :goto_7
    move-object/from16 v0, p0

    #@1e8
    invoke-virtual {v0, v3, v11}, Lcom/android/ims/internal/IImsCallSession$Stub;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V

    #@1eb
    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ee
    .line 197
    const/16 v17, 0x1

    #@1f0
    return v17

    #@1f1
    .line 193
    :cond_7
    const/4 v11, 0x0

    #@1f2
    .local v11, "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_7

    #@1f3
    .line 201
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_e
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@1f6
    move-object/from16 v0, p2

    #@1f8
    move-object/from16 v1, v17

    #@1fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fd
    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@200
    move-result v3

    #@201
    .line 204
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@203
    invoke-virtual {v0, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->reject(I)V

    #@206
    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@209
    .line 206
    const/16 v17, 0x1

    #@20b
    return v17

    #@20c
    .line 210
    .end local v3    # "_arg0":I
    :sswitch_f
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@20f
    move-object/from16 v0, p2

    #@211
    move-object/from16 v1, v17

    #@213
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@216
    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@219
    move-result v3

    #@21a
    .line 213
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@21c
    invoke-virtual {v0, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->terminate(I)V

    #@21f
    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@222
    .line 215
    const/16 v17, 0x1

    #@224
    return v17

    #@225
    .line 219
    .end local v3    # "_arg0":I
    :sswitch_10
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@228
    move-object/from16 v0, p2

    #@22a
    move-object/from16 v1, v17

    #@22c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22f
    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@232
    move-result v17

    #@233
    if-eqz v17, :cond_8

    #@235
    .line 222
    sget-object v17, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@237
    move-object/from16 v0, v17

    #@239
    move-object/from16 v1, p2

    #@23b
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23e
    move-result-object v4

    #@23f
    check-cast v4, Lcom/android/ims/ImsStreamMediaProfile;

    #@241
    .line 227
    :goto_8
    move-object/from16 v0, p0

    #@243
    invoke-virtual {v0, v4}, Lcom/android/ims/internal/IImsCallSession$Stub;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V

    #@246
    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@249
    .line 229
    const/16 v17, 0x1

    #@24b
    return v17

    #@24c
    .line 225
    :cond_8
    const/4 v4, 0x0

    #@24d
    .local v4, "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_8

    #@24e
    .line 233
    .end local v4    # "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_11
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@251
    move-object/from16 v0, p2

    #@253
    move-object/from16 v1, v17

    #@255
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@258
    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25b
    move-result v17

    #@25c
    if-eqz v17, :cond_9

    #@25e
    .line 236
    sget-object v17, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@260
    move-object/from16 v0, v17

    #@262
    move-object/from16 v1, p2

    #@264
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@267
    move-result-object v4

    #@268
    check-cast v4, Lcom/android/ims/ImsStreamMediaProfile;

    #@26a
    .line 241
    :goto_9
    move-object/from16 v0, p0

    #@26c
    invoke-virtual {v0, v4}, Lcom/android/ims/internal/IImsCallSession$Stub;->resume(Lcom/android/ims/ImsStreamMediaProfile;)V

    #@26f
    .line 242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@272
    .line 243
    const/16 v17, 0x1

    #@274
    return v17

    #@275
    .line 239
    :cond_9
    const/4 v4, 0x0

    #@276
    .restart local v4    # "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_9

    #@277
    .line 247
    .end local v4    # "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_12
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@27a
    move-object/from16 v0, p2

    #@27c
    move-object/from16 v1, v17

    #@27e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@281
    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->merge()V

    #@284
    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@287
    .line 250
    const/16 v17, 0x1

    #@289
    return v17

    #@28a
    .line 254
    :sswitch_13
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@28d
    move-object/from16 v0, p2

    #@28f
    move-object/from16 v1, v17

    #@291
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@294
    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@297
    move-result v3

    #@298
    .line 258
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29b
    move-result v17

    #@29c
    if-eqz v17, :cond_a

    #@29e
    .line 259
    sget-object v17, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a0
    move-object/from16 v0, v17

    #@2a2
    move-object/from16 v1, p2

    #@2a4
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a7
    move-result-object v11

    #@2a8
    check-cast v11, Lcom/android/ims/ImsStreamMediaProfile;

    #@2aa
    .line 264
    :goto_a
    move-object/from16 v0, p0

    #@2ac
    invoke-virtual {v0, v3, v11}, Lcom/android/ims/internal/IImsCallSession$Stub;->update(ILcom/android/ims/ImsStreamMediaProfile;)V

    #@2af
    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b2
    .line 266
    const/16 v17, 0x1

    #@2b4
    return v17

    #@2b5
    .line 262
    :cond_a
    const/4 v11, 0x0

    #@2b6
    .restart local v11    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_a

    #@2b7
    .line 270
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_14
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@2ba
    move-object/from16 v0, p2

    #@2bc
    move-object/from16 v1, v17

    #@2be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c1
    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2c4
    move-result-object v8

    #@2c5
    .line 273
    .restart local v8    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@2c7
    invoke-virtual {v0, v8}, Lcom/android/ims/internal/IImsCallSession$Stub;->extendToConference([Ljava/lang/String;)V

    #@2ca
    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cd
    .line 275
    const/16 v17, 0x1

    #@2cf
    return v17

    #@2d0
    .line 279
    .end local v8    # "_arg0":[Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@2d3
    move-object/from16 v0, p2

    #@2d5
    move-object/from16 v1, v17

    #@2d7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2da
    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2dd
    move-result-object v8

    #@2de
    .line 282
    .restart local v8    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@2e0
    invoke-virtual {v0, v8}, Lcom/android/ims/internal/IImsCallSession$Stub;->inviteParticipants([Ljava/lang/String;)V

    #@2e3
    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e6
    .line 284
    const/16 v17, 0x1

    #@2e8
    return v17

    #@2e9
    .line 288
    .end local v8    # "_arg0":[Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@2ec
    move-object/from16 v0, p2

    #@2ee
    move-object/from16 v1, v17

    #@2f0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f3
    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2f6
    move-result-object v8

    #@2f7
    .line 291
    .restart local v8    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@2f9
    invoke-virtual {v0, v8}, Lcom/android/ims/internal/IImsCallSession$Stub;->removeParticipants([Ljava/lang/String;)V

    #@2fc
    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ff
    .line 293
    const/16 v17, 0x1

    #@301
    return v17

    #@302
    .line 297
    .end local v8    # "_arg0":[Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@305
    move-object/from16 v0, p2

    #@307
    move-object/from16 v1, v17

    #@309
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30c
    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30f
    move-result v17

    #@310
    move/from16 v0, v17

    #@312
    int-to-char v2, v0

    #@313
    .line 301
    .local v2, "_arg0":C
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@316
    move-result v17

    #@317
    if-eqz v17, :cond_b

    #@319
    .line 302
    sget-object v17, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31b
    move-object/from16 v0, v17

    #@31d
    move-object/from16 v1, p2

    #@31f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@322
    move-result-object v9

    #@323
    check-cast v9, Landroid/os/Message;

    #@325
    .line 307
    :goto_b
    move-object/from16 v0, p0

    #@327
    invoke-virtual {v0, v2, v9}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendDtmf(CLandroid/os/Message;)V

    #@32a
    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@32d
    .line 309
    const/16 v17, 0x1

    #@32f
    return v17

    #@330
    .line 305
    :cond_b
    const/4 v9, 0x0

    #@331
    .local v9, "_arg1":Landroid/os/Message;
    goto :goto_b

    #@332
    .line 313
    .end local v2    # "_arg0":C
    .end local v9    # "_arg1":Landroid/os/Message;
    :sswitch_18
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@335
    move-object/from16 v0, p2

    #@337
    move-object/from16 v1, v17

    #@339
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33c
    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@33f
    move-result v17

    #@340
    move/from16 v0, v17

    #@342
    int-to-char v2, v0

    #@343
    .line 316
    .restart local v2    # "_arg0":C
    move-object/from16 v0, p0

    #@345
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->startDtmf(C)V

    #@348
    .line 317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34b
    .line 318
    const/16 v17, 0x1

    #@34d
    return v17

    #@34e
    .line 322
    .end local v2    # "_arg0":C
    :sswitch_19
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@351
    move-object/from16 v0, p2

    #@353
    move-object/from16 v1, v17

    #@355
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@358
    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->stopDtmf()V

    #@35b
    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35e
    .line 325
    const/16 v17, 0x1

    #@360
    return v17

    #@361
    .line 329
    :sswitch_1a
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@364
    move-object/from16 v0, p2

    #@366
    move-object/from16 v1, v17

    #@368
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36b
    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36e
    move-result-object v6

    #@36f
    .line 332
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@371
    invoke-virtual {v0, v6}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendUssd(Ljava/lang/String;)V

    #@374
    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@377
    .line 334
    const/16 v17, 0x1

    #@379
    return v17

    #@37a
    .line 338
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@37d
    move-object/from16 v0, p2

    #@37f
    move-object/from16 v1, v17

    #@381
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@384
    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    #@387
    move-result-object v14

    #@388
    .line 340
    .local v14, "_result":Lcom/android/ims/internal/IImsVideoCallProvider;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38b
    .line 341
    if-eqz v14, :cond_c

    #@38d
    invoke-interface {v14}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    #@390
    move-result-object v17

    #@391
    :goto_c
    move-object/from16 v0, p3

    #@393
    move-object/from16 v1, v17

    #@395
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@398
    .line 342
    const/16 v17, 0x1

    #@39a
    return v17

    #@39b
    .line 341
    :cond_c
    const/16 v17, 0x0

    #@39d
    goto :goto_c

    #@39e
    .line 346
    .end local v14    # "_result":Lcom/android/ims/internal/IImsVideoCallProvider;
    :sswitch_1c
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSession"

    #@3a1
    move-object/from16 v0, p2

    #@3a3
    move-object/from16 v1, v17

    #@3a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a8
    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->isMultiparty()Z

    #@3ab
    move-result v16

    #@3ac
    .line 348
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3af
    .line 349
    if-eqz v16, :cond_d

    #@3b1
    const/16 v17, 0x1

    #@3b3
    :goto_d
    move-object/from16 v0, p3

    #@3b5
    move/from16 v1, v17

    #@3b7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3ba
    .line 350
    const/16 v17, 0x1

    #@3bc
    return v17

    #@3bd
    .line 349
    :cond_d
    const/16 v17, 0x0

    #@3bf
    goto :goto_d

    #@3c0
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
