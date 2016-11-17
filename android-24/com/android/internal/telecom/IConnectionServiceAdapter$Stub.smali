.class public abstract Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "IConnectionServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionServiceAdapter"

.field static final TRANSACTION_addConferenceCall:I = 0xc

.field static final TRANSACTION_addExistingConnection:I = 0x18

.field static final TRANSACTION_handleCreateConnectionComplete:I = 0x1

.field static final TRANSACTION_onConnectionEvent:I = 0x1b

.field static final TRANSACTION_onPostDialChar:I = 0xf

.field static final TRANSACTION_onPostDialWait:I = 0xe

.field static final TRANSACTION_putExtras:I = 0x19

.field static final TRANSACTION_queryRemoteConnectionServices:I = 0x10

.field static final TRANSACTION_removeCall:I = 0xd

.field static final TRANSACTION_removeExtras:I = 0x1a

.field static final TRANSACTION_setActive:I = 0x2

.field static final TRANSACTION_setAddress:I = 0x15

.field static final TRANSACTION_setCallerDisplayName:I = 0x16

.field static final TRANSACTION_setConferenceMergeFailed:I = 0xb

.field static final TRANSACTION_setConferenceableConnections:I = 0x17

.field static final TRANSACTION_setConnectionCapabilities:I = 0x8

.field static final TRANSACTION_setConnectionProperties:I = 0x9

.field static final TRANSACTION_setDialing:I = 0x4

.field static final TRANSACTION_setDisconnected:I = 0x5

.field static final TRANSACTION_setIsConferenced:I = 0xa

.field static final TRANSACTION_setIsVoipAudioMode:I = 0x13

.field static final TRANSACTION_setOnHold:I = 0x6

.field static final TRANSACTION_setRingbackRequested:I = 0x7

.field static final TRANSACTION_setRinging:I = 0x3

.field static final TRANSACTION_setStatusHints:I = 0x14

.field static final TRANSACTION_setVideoProvider:I = 0x11

.field static final TRANSACTION_setVideoState:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 22
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;
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
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 35
    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 21
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
    .line 362
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v20

    #@7
    return v20

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v20

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 50
    const/16 v20, 0x1

    #@14
    return v20

    #@15
    .line 54
    :sswitch_1
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v20

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 58
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v20

    #@27
    if-eqz v20, :cond_0

    #@29
    .line 59
    sget-object v20, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    move-object/from16 v0, v20

    #@2d
    move-object/from16 v1, p2

    #@2f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32
    move-result-object v8

    #@33
    check-cast v8, Landroid/telecom/ConnectionRequest;

    #@35
    .line 65
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v20

    #@39
    if-eqz v20, :cond_1

    #@3b
    .line 66
    sget-object v20, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d
    move-object/from16 v0, v20

    #@3f
    move-object/from16 v1, p2

    #@41
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@44
    move-result-object v19

    #@45
    check-cast v19, Landroid/telecom/ParcelableConnection;

    #@47
    .line 71
    :goto_1
    move-object/from16 v0, p0

    #@49
    move-object/from16 v1, v19

    #@4b
    invoke-virtual {v0, v3, v8, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    #@4e
    .line 72
    const/16 v20, 0x1

    #@50
    return v20

    #@51
    .line 62
    :cond_0
    const/4 v8, 0x0

    #@52
    .local v8, "_arg1":Landroid/telecom/ConnectionRequest;
    goto :goto_0

    #@53
    .line 69
    .end local v8    # "_arg1":Landroid/telecom/ConnectionRequest;
    :cond_1
    const/16 v19, 0x0

    #@55
    .local v19, "_arg2":Landroid/telecom/ParcelableConnection;
    goto :goto_1

    #@56
    .line 76
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg2":Landroid/telecom/ParcelableConnection;
    :sswitch_2
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@59
    move-object/from16 v0, p2

    #@5b
    move-object/from16 v1, v20

    #@5d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    .line 79
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@66
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setActive(Ljava/lang/String;)V

    #@69
    .line 80
    const/16 v20, 0x1

    #@6b
    return v20

    #@6c
    .line 84
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@6f
    move-object/from16 v0, p2

    #@71
    move-object/from16 v1, v20

    #@73
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    .line 87
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7c
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRinging(Ljava/lang/String;)V

    #@7f
    .line 88
    const/16 v20, 0x1

    #@81
    return v20

    #@82
    .line 92
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@85
    move-object/from16 v0, p2

    #@87
    move-object/from16 v1, v20

    #@89
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    .line 95
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@92
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDialing(Ljava/lang/String;)V

    #@95
    .line 96
    const/16 v20, 0x1

    #@97
    return v20

    #@98
    .line 100
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@9b
    move-object/from16 v0, p2

    #@9d
    move-object/from16 v1, v20

    #@9f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a5
    move-result-object v3

    #@a6
    .line 104
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v20

    #@aa
    if-eqz v20, :cond_2

    #@ac
    .line 105
    sget-object v20, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ae
    move-object/from16 v0, v20

    #@b0
    move-object/from16 v1, p2

    #@b2
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b5
    move-result-object v9

    #@b6
    check-cast v9, Landroid/telecom/DisconnectCause;

    #@b8
    .line 110
    :goto_2
    move-object/from16 v0, p0

    #@ba
    invoke-virtual {v0, v3, v9}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    #@bd
    .line 111
    const/16 v20, 0x1

    #@bf
    return v20

    #@c0
    .line 108
    :cond_2
    const/4 v9, 0x0

    #@c1
    .local v9, "_arg1":Landroid/telecom/DisconnectCause;
    goto :goto_2

    #@c2
    .line 115
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Landroid/telecom/DisconnectCause;
    :sswitch_6
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@c5
    move-object/from16 v0, p2

    #@c7
    move-object/from16 v1, v20

    #@c9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cc
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cf
    move-result-object v3

    #@d0
    .line 118
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d2
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setOnHold(Ljava/lang/String;)V

    #@d5
    .line 119
    const/16 v20, 0x1

    #@d7
    return v20

    #@d8
    .line 123
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@db
    move-object/from16 v0, p2

    #@dd
    move-object/from16 v1, v20

    #@df
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e5
    move-result-object v3

    #@e6
    .line 127
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e9
    move-result v20

    #@ea
    if-eqz v20, :cond_3

    #@ec
    const/16 v16, 0x1

    #@ee
    .line 128
    .local v16, "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    #@f0
    move/from16 v1, v16

    #@f2
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRingbackRequested(Ljava/lang/String;Z)V

    #@f5
    .line 129
    const/16 v20, 0x1

    #@f7
    return v20

    #@f8
    .line 127
    .end local v16    # "_arg1":Z
    :cond_3
    const/16 v16, 0x0

    #@fa
    goto :goto_3

    #@fb
    .line 133
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@fe
    move-object/from16 v0, p2

    #@100
    move-object/from16 v1, v20

    #@102
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@105
    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@108
    move-result-object v3

    #@109
    .line 137
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10c
    move-result v5

    #@10d
    .line 138
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    #@10f
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionCapabilities(Ljava/lang/String;I)V

    #@112
    .line 139
    const/16 v20, 0x1

    #@114
    return v20

    #@115
    .line 143
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_9
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@118
    move-object/from16 v0, p2

    #@11a
    move-object/from16 v1, v20

    #@11c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f
    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@122
    move-result-object v3

    #@123
    .line 147
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@126
    move-result v5

    #@127
    .line 148
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@129
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionProperties(Ljava/lang/String;I)V

    #@12c
    .line 149
    const/16 v20, 0x1

    #@12e
    return v20

    #@12f
    .line 153
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_a
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@132
    move-object/from16 v0, p2

    #@134
    move-object/from16 v1, v20

    #@136
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@139
    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13c
    move-result-object v3

    #@13d
    .line 157
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@140
    move-result-object v14

    #@141
    .line 158
    .local v14, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@143
    invoke-virtual {v0, v3, v14}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    #@146
    .line 159
    const/16 v20, 0x1

    #@148
    return v20

    #@149
    .line 163
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@14c
    move-object/from16 v0, p2

    #@14e
    move-object/from16 v1, v20

    #@150
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@153
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@156
    move-result-object v3

    #@157
    .line 166
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@159
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceMergeFailed(Ljava/lang/String;)V

    #@15c
    .line 167
    const/16 v20, 0x1

    #@15e
    return v20

    #@15f
    .line 171
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@162
    move-object/from16 v0, p2

    #@164
    move-object/from16 v1, v20

    #@166
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@169
    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16c
    move-result-object v3

    #@16d
    .line 175
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@170
    move-result v20

    #@171
    if-eqz v20, :cond_4

    #@173
    .line 176
    sget-object v20, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    #@175
    move-object/from16 v0, v20

    #@177
    move-object/from16 v1, p2

    #@179
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17c
    move-result-object v10

    #@17d
    check-cast v10, Landroid/telecom/ParcelableConference;

    #@17f
    .line 181
    :goto_4
    move-object/from16 v0, p0

    #@181
    invoke-virtual {v0, v3, v10}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    #@184
    .line 182
    const/16 v20, 0x1

    #@186
    return v20

    #@187
    .line 179
    :cond_4
    const/4 v10, 0x0

    #@188
    .local v10, "_arg1":Landroid/telecom/ParcelableConference;
    goto :goto_4

    #@189
    .line 186
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Landroid/telecom/ParcelableConference;
    :sswitch_d
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@18c
    move-object/from16 v0, p2

    #@18e
    move-object/from16 v1, v20

    #@190
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@193
    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@196
    move-result-object v3

    #@197
    .line 189
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@199
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeCall(Ljava/lang/String;)V

    #@19c
    .line 190
    const/16 v20, 0x1

    #@19e
    return v20

    #@19f
    .line 194
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@1a2
    move-object/from16 v0, p2

    #@1a4
    move-object/from16 v1, v20

    #@1a6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a9
    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ac
    move-result-object v3

    #@1ad
    .line 198
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b0
    move-result-object v14

    #@1b1
    .line 199
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1b3
    invoke-virtual {v0, v3, v14}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    #@1b6
    .line 200
    const/16 v20, 0x1

    #@1b8
    return v20

    #@1b9
    .line 204
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@1bc
    move-object/from16 v0, p2

    #@1be
    move-object/from16 v1, v20

    #@1c0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c3
    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c6
    move-result-object v3

    #@1c7
    .line 208
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ca
    move-result v20

    #@1cb
    move/from16 v0, v20

    #@1cd
    int-to-char v4, v0

    #@1ce
    .line 209
    .local v4, "_arg1":C
    move-object/from16 v0, p0

    #@1d0
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialChar(Ljava/lang/String;C)V

    #@1d3
    .line 210
    const/16 v20, 0x1

    #@1d5
    return v20

    #@1d6
    .line 214
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":C
    :sswitch_10
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@1d9
    move-object/from16 v0, p2

    #@1db
    move-object/from16 v1, v20

    #@1dd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e0
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1e3
    move-result-object v20

    #@1e4
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/RemoteServiceCallback;

    #@1e7
    move-result-object v2

    #@1e8
    .line 217
    .local v2, "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    move-object/from16 v0, p0

    #@1ea
    invoke-virtual {v0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    #@1ed
    .line 218
    const/16 v20, 0x1

    #@1ef
    return v20

    #@1f0
    .line 222
    .end local v2    # "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    :sswitch_11
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@1f3
    move-object/from16 v0, p2

    #@1f5
    move-object/from16 v1, v20

    #@1f7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fa
    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1fd
    move-result-object v3

    #@1fe
    .line 226
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@201
    move-result-object v20

    #@202
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    #@205
    move-result-object v13

    #@206
    .line 227
    .local v13, "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    move-object/from16 v0, p0

    #@208
    invoke-virtual {v0, v3, v13}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V

    #@20b
    .line 228
    const/16 v20, 0x1

    #@20d
    return v20

    #@20e
    .line 232
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    :sswitch_12
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@211
    move-object/from16 v0, p2

    #@213
    move-object/from16 v1, v20

    #@215
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@218
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21b
    move-result-object v3

    #@21c
    .line 236
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21f
    move-result v5

    #@220
    .line 237
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@222
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoState(Ljava/lang/String;I)V

    #@225
    .line 238
    const/16 v20, 0x1

    #@227
    return v20

    #@228
    .line 242
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_13
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@22b
    move-object/from16 v0, p2

    #@22d
    move-object/from16 v1, v20

    #@22f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@232
    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@235
    move-result-object v3

    #@236
    .line 246
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@239
    move-result v20

    #@23a
    if-eqz v20, :cond_5

    #@23c
    const/16 v16, 0x1

    #@23e
    .line 247
    .restart local v16    # "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    #@240
    move/from16 v1, v16

    #@242
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsVoipAudioMode(Ljava/lang/String;Z)V

    #@245
    .line 248
    const/16 v20, 0x1

    #@247
    return v20

    #@248
    .line 246
    .end local v16    # "_arg1":Z
    :cond_5
    const/16 v16, 0x0

    #@24a
    goto :goto_5

    #@24b
    .line 252
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@24e
    move-object/from16 v0, p2

    #@250
    move-object/from16 v1, v20

    #@252
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@255
    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@258
    move-result-object v3

    #@259
    .line 256
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25c
    move-result v20

    #@25d
    if-eqz v20, :cond_6

    #@25f
    .line 257
    sget-object v20, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    #@261
    move-object/from16 v0, v20

    #@263
    move-object/from16 v1, p2

    #@265
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@268
    move-result-object v12

    #@269
    check-cast v12, Landroid/telecom/StatusHints;

    #@26b
    .line 262
    :goto_6
    move-object/from16 v0, p0

    #@26d
    invoke-virtual {v0, v3, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V

    #@270
    .line 263
    const/16 v20, 0x1

    #@272
    return v20

    #@273
    .line 260
    :cond_6
    const/4 v12, 0x0

    #@274
    .local v12, "_arg1":Landroid/telecom/StatusHints;
    goto :goto_6

    #@275
    .line 267
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/StatusHints;
    :sswitch_15
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@278
    move-object/from16 v0, p2

    #@27a
    move-object/from16 v1, v20

    #@27c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27f
    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@282
    move-result-object v3

    #@283
    .line 271
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@286
    move-result v20

    #@287
    if-eqz v20, :cond_7

    #@289
    .line 272
    sget-object v20, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28b
    move-object/from16 v0, v20

    #@28d
    move-object/from16 v1, p2

    #@28f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@292
    move-result-object v6

    #@293
    check-cast v6, Landroid/net/Uri;

    #@295
    .line 278
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@298
    move-result v17

    #@299
    .line 279
    .local v17, "_arg2":I
    move-object/from16 v0, p0

    #@29b
    move/from16 v1, v17

    #@29d
    invoke-virtual {v0, v3, v6, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V

    #@2a0
    .line 280
    const/16 v20, 0x1

    #@2a2
    return v20

    #@2a3
    .line 275
    .end local v17    # "_arg2":I
    :cond_7
    const/4 v6, 0x0

    #@2a4
    .local v6, "_arg1":Landroid/net/Uri;
    goto :goto_7

    #@2a5
    .line 284
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/net/Uri;
    :sswitch_16
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@2a8
    move-object/from16 v0, p2

    #@2aa
    move-object/from16 v1, v20

    #@2ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2af
    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b2
    move-result-object v3

    #@2b3
    .line 288
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b6
    move-result-object v14

    #@2b7
    .line 290
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ba
    move-result v17

    #@2bb
    .line 291
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    #@2bd
    move/from16 v1, v17

    #@2bf
    invoke-virtual {v0, v3, v14, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V

    #@2c2
    .line 292
    const/16 v20, 0x1

    #@2c4
    return v20

    #@2c5
    .line 296
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    :sswitch_17
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@2c8
    move-object/from16 v0, p2

    #@2ca
    move-object/from16 v1, v20

    #@2cc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2cf
    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d2
    move-result-object v3

    #@2d3
    .line 300
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@2d6
    move-result-object v15

    #@2d7
    .line 301
    .local v15, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@2d9
    invoke-virtual {v0, v3, v15}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    #@2dc
    .line 302
    const/16 v20, 0x1

    #@2de
    return v20

    #@2df
    .line 306
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_18
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@2e2
    move-object/from16 v0, p2

    #@2e4
    move-object/from16 v1, v20

    #@2e6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e9
    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ec
    move-result-object v3

    #@2ed
    .line 310
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f0
    move-result v20

    #@2f1
    if-eqz v20, :cond_8

    #@2f3
    .line 311
    sget-object v20, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f5
    move-object/from16 v0, v20

    #@2f7
    move-object/from16 v1, p2

    #@2f9
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2fc
    move-result-object v11

    #@2fd
    check-cast v11, Landroid/telecom/ParcelableConnection;

    #@2ff
    .line 316
    :goto_8
    move-object/from16 v0, p0

    #@301
    invoke-virtual {v0, v3, v11}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    #@304
    .line 317
    const/16 v20, 0x1

    #@306
    return v20

    #@307
    .line 314
    :cond_8
    const/4 v11, 0x0

    #@308
    .local v11, "_arg1":Landroid/telecom/ParcelableConnection;
    goto :goto_8

    #@309
    .line 321
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Landroid/telecom/ParcelableConnection;
    :sswitch_19
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@30c
    move-object/from16 v0, p2

    #@30e
    move-object/from16 v1, v20

    #@310
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@313
    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@316
    move-result-object v3

    #@317
    .line 325
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31a
    move-result v20

    #@31b
    if-eqz v20, :cond_9

    #@31d
    .line 326
    sget-object v20, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31f
    move-object/from16 v0, v20

    #@321
    move-object/from16 v1, p2

    #@323
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@326
    move-result-object v7

    #@327
    check-cast v7, Landroid/os/Bundle;

    #@329
    .line 331
    :goto_9
    move-object/from16 v0, p0

    #@32b
    invoke-virtual {v0, v3, v7}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    #@32e
    .line 332
    const/16 v20, 0x1

    #@330
    return v20

    #@331
    .line 329
    :cond_9
    const/4 v7, 0x0

    #@332
    .local v7, "_arg1":Landroid/os/Bundle;
    goto :goto_9

    #@333
    .line 336
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    :sswitch_1a
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@336
    move-object/from16 v0, p2

    #@338
    move-object/from16 v1, v20

    #@33a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33d
    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@340
    move-result-object v3

    #@341
    .line 340
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@344
    move-result-object v15

    #@345
    .line 341
    .restart local v15    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@347
    invoke-virtual {v0, v3, v15}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    #@34a
    .line 342
    const/16 v20, 0x1

    #@34c
    return v20

    #@34d
    .line 346
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1b
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@350
    move-object/from16 v0, p2

    #@352
    move-object/from16 v1, v20

    #@354
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@357
    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35a
    move-result-object v3

    #@35b
    .line 350
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35e
    move-result-object v14

    #@35f
    .line 352
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@362
    move-result v20

    #@363
    if-eqz v20, :cond_a

    #@365
    .line 353
    sget-object v20, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@367
    move-object/from16 v0, v20

    #@369
    move-object/from16 v1, p2

    #@36b
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36e
    move-result-object v18

    #@36f
    check-cast v18, Landroid/os/Bundle;

    #@371
    .line 358
    :goto_a
    move-object/from16 v0, p0

    #@373
    move-object/from16 v1, v18

    #@375
    invoke-virtual {v0, v3, v14, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@378
    .line 359
    const/16 v20, 0x1

    #@37a
    return v20

    #@37b
    .line 356
    :cond_a
    const/16 v18, 0x0

    #@37d
    .local v18, "_arg2":Landroid/os/Bundle;
    goto :goto_a

    #@37e
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
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
