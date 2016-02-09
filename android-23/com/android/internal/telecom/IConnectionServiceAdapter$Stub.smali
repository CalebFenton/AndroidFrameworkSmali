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

.field static final TRANSACTION_addConferenceCall:I = 0xb

.field static final TRANSACTION_addExistingConnection:I = 0x17

.field static final TRANSACTION_handleCreateConnectionComplete:I = 0x1

.field static final TRANSACTION_onPostDialChar:I = 0xe

.field static final TRANSACTION_onPostDialWait:I = 0xd

.field static final TRANSACTION_queryRemoteConnectionServices:I = 0xf

.field static final TRANSACTION_removeCall:I = 0xc

.field static final TRANSACTION_setActive:I = 0x2

.field static final TRANSACTION_setAddress:I = 0x14

.field static final TRANSACTION_setCallerDisplayName:I = 0x15

.field static final TRANSACTION_setConferenceMergeFailed:I = 0xa

.field static final TRANSACTION_setConferenceableConnections:I = 0x16

.field static final TRANSACTION_setConnectionCapabilities:I = 0x8

.field static final TRANSACTION_setDialing:I = 0x4

.field static final TRANSACTION_setDisconnected:I = 0x5

.field static final TRANSACTION_setExtras:I = 0x18

.field static final TRANSACTION_setIsConferenced:I = 0x9

.field static final TRANSACTION_setIsVoipAudioMode:I = 0x12

.field static final TRANSACTION_setOnHold:I = 0x6

.field static final TRANSACTION_setRingbackRequested:I = 0x7

.field static final TRANSACTION_setRinging:I = 0x3

.field static final TRANSACTION_setStatusHints:I = 0x13

.field static final TRANSACTION_setVideoProvider:I = 0x10

.field static final TRANSACTION_setVideoState:I = 0x11


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
    .locals 20
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
    .line 325
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v19

    #@7
    return v19

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v19

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 50
    const/16 v19, 0x1

    #@14
    return v19

    #@15
    .line 54
    :sswitch_1
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v19

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
    move-result v19

    #@27
    if-eqz v19, :cond_0

    #@29
    .line 59
    sget-object v19, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    move-object/from16 v0, v19

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
    move-result v19

    #@39
    if-eqz v19, :cond_1

    #@3b
    .line 66
    sget-object v19, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d
    move-object/from16 v0, v19

    #@3f
    move-object/from16 v1, p2

    #@41
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@44
    move-result-object v18

    #@45
    check-cast v18, Landroid/telecom/ParcelableConnection;

    #@47
    .line 71
    :goto_1
    move-object/from16 v0, p0

    #@49
    move-object/from16 v1, v18

    #@4b
    invoke-virtual {v0, v3, v8, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    #@4e
    .line 72
    const/16 v19, 0x1

    #@50
    return v19

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
    const/16 v18, 0x0

    #@55
    .local v18, "_arg2":Landroid/telecom/ParcelableConnection;
    goto :goto_1

    #@56
    .line 76
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg2":Landroid/telecom/ParcelableConnection;
    :sswitch_2
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@59
    move-object/from16 v0, p2

    #@5b
    move-object/from16 v1, v19

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
    const/16 v19, 0x1

    #@6b
    return v19

    #@6c
    .line 84
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@6f
    move-object/from16 v0, p2

    #@71
    move-object/from16 v1, v19

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
    const/16 v19, 0x1

    #@81
    return v19

    #@82
    .line 92
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@85
    move-object/from16 v0, p2

    #@87
    move-object/from16 v1, v19

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
    const/16 v19, 0x1

    #@97
    return v19

    #@98
    .line 100
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@9b
    move-object/from16 v0, p2

    #@9d
    move-object/from16 v1, v19

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
    move-result v19

    #@aa
    if-eqz v19, :cond_2

    #@ac
    .line 105
    sget-object v19, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ae
    move-object/from16 v0, v19

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
    const/16 v19, 0x1

    #@bf
    return v19

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
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@c5
    move-object/from16 v0, p2

    #@c7
    move-object/from16 v1, v19

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
    const/16 v19, 0x1

    #@d7
    return v19

    #@d8
    .line 123
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@db
    move-object/from16 v0, p2

    #@dd
    move-object/from16 v1, v19

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
    move-result v19

    #@ea
    if-eqz v19, :cond_3

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
    const/16 v19, 0x1

    #@f7
    return v19

    #@f8
    .line 127
    .end local v16    # "_arg1":Z
    :cond_3
    const/16 v16, 0x0

    #@fa
    .restart local v16    # "_arg1":Z
    goto :goto_3

    #@fb
    .line 133
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Z
    :sswitch_8
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@fe
    move-object/from16 v0, p2

    #@100
    move-object/from16 v1, v19

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
    const/16 v19, 0x1

    #@114
    return v19

    #@115
    .line 143
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_9
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@118
    move-object/from16 v0, p2

    #@11a
    move-object/from16 v1, v19

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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@126
    move-result-object v14

    #@127
    .line 148
    .local v14, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@129
    invoke-virtual {v0, v3, v14}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    #@12c
    .line 149
    const/16 v19, 0x1

    #@12e
    return v19

    #@12f
    .line 153
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@132
    move-object/from16 v0, p2

    #@134
    move-object/from16 v1, v19

    #@136
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@139
    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13c
    move-result-object v3

    #@13d
    .line 156
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@13f
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceMergeFailed(Ljava/lang/String;)V

    #@142
    .line 157
    const/16 v19, 0x1

    #@144
    return v19

    #@145
    .line 161
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@148
    move-object/from16 v0, p2

    #@14a
    move-object/from16 v1, v19

    #@14c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14f
    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@152
    move-result-object v3

    #@153
    .line 165
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@156
    move-result v19

    #@157
    if-eqz v19, :cond_4

    #@159
    .line 166
    sget-object v19, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15b
    move-object/from16 v0, v19

    #@15d
    move-object/from16 v1, p2

    #@15f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@162
    move-result-object v10

    #@163
    check-cast v10, Landroid/telecom/ParcelableConference;

    #@165
    .line 171
    :goto_4
    move-object/from16 v0, p0

    #@167
    invoke-virtual {v0, v3, v10}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    #@16a
    .line 172
    const/16 v19, 0x1

    #@16c
    return v19

    #@16d
    .line 169
    :cond_4
    const/4 v10, 0x0

    #@16e
    .local v10, "_arg1":Landroid/telecom/ParcelableConference;
    goto :goto_4

    #@16f
    .line 176
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Landroid/telecom/ParcelableConference;
    :sswitch_c
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@172
    move-object/from16 v0, p2

    #@174
    move-object/from16 v1, v19

    #@176
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@179
    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17c
    move-result-object v3

    #@17d
    .line 179
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@17f
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeCall(Ljava/lang/String;)V

    #@182
    .line 180
    const/16 v19, 0x1

    #@184
    return v19

    #@185
    .line 184
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@188
    move-object/from16 v0, p2

    #@18a
    move-object/from16 v1, v19

    #@18c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18f
    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@192
    move-result-object v3

    #@193
    .line 188
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@196
    move-result-object v14

    #@197
    .line 189
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@199
    invoke-virtual {v0, v3, v14}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    #@19c
    .line 190
    const/16 v19, 0x1

    #@19e
    return v19

    #@19f
    .line 194
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@1a2
    move-object/from16 v0, p2

    #@1a4
    move-object/from16 v1, v19

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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b0
    move-result v19

    #@1b1
    move/from16 v0, v19

    #@1b3
    int-to-char v4, v0

    #@1b4
    .line 199
    .local v4, "_arg1":C
    move-object/from16 v0, p0

    #@1b6
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialChar(Ljava/lang/String;C)V

    #@1b9
    .line 200
    const/16 v19, 0x1

    #@1bb
    return v19

    #@1bc
    .line 204
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":C
    :sswitch_f
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@1bf
    move-object/from16 v0, p2

    #@1c1
    move-object/from16 v1, v19

    #@1c3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c6
    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1c9
    move-result-object v19

    #@1ca
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/RemoteServiceCallback;

    #@1cd
    move-result-object v2

    #@1ce
    .line 207
    .local v2, "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    move-object/from16 v0, p0

    #@1d0
    invoke-virtual {v0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    #@1d3
    .line 208
    const/16 v19, 0x1

    #@1d5
    return v19

    #@1d6
    .line 212
    .end local v2    # "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    :sswitch_10
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@1d9
    move-object/from16 v0, p2

    #@1db
    move-object/from16 v1, v19

    #@1dd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e0
    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e3
    move-result-object v3

    #@1e4
    .line 216
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1e7
    move-result-object v19

    #@1e8
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    #@1eb
    move-result-object v13

    #@1ec
    .line 217
    .local v13, "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    move-object/from16 v0, p0

    #@1ee
    invoke-virtual {v0, v3, v13}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V

    #@1f1
    .line 218
    const/16 v19, 0x1

    #@1f3
    return v19

    #@1f4
    .line 222
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    :sswitch_11
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@1f7
    move-object/from16 v0, p2

    #@1f9
    move-object/from16 v1, v19

    #@1fb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fe
    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@201
    move-result-object v3

    #@202
    .line 226
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@205
    move-result v5

    #@206
    .line 227
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@208
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoState(Ljava/lang/String;I)V

    #@20b
    .line 228
    const/16 v19, 0x1

    #@20d
    return v19

    #@20e
    .line 232
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_12
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@211
    move-object/from16 v0, p2

    #@213
    move-object/from16 v1, v19

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
    move-result v19

    #@220
    if-eqz v19, :cond_5

    #@222
    const/16 v16, 0x1

    #@224
    .line 237
    .restart local v16    # "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    #@226
    move/from16 v1, v16

    #@228
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsVoipAudioMode(Ljava/lang/String;Z)V

    #@22b
    .line 238
    const/16 v19, 0x1

    #@22d
    return v19

    #@22e
    .line 236
    .end local v16    # "_arg1":Z
    :cond_5
    const/16 v16, 0x0

    #@230
    .restart local v16    # "_arg1":Z
    goto :goto_5

    #@231
    .line 242
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Z
    :sswitch_13
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@234
    move-object/from16 v0, p2

    #@236
    move-object/from16 v1, v19

    #@238
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23b
    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23e
    move-result-object v3

    #@23f
    .line 246
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@242
    move-result v19

    #@243
    if-eqz v19, :cond_6

    #@245
    .line 247
    sget-object v19, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    #@247
    move-object/from16 v0, v19

    #@249
    move-object/from16 v1, p2

    #@24b
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24e
    move-result-object v12

    #@24f
    check-cast v12, Landroid/telecom/StatusHints;

    #@251
    .line 252
    :goto_6
    move-object/from16 v0, p0

    #@253
    invoke-virtual {v0, v3, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V

    #@256
    .line 253
    const/16 v19, 0x1

    #@258
    return v19

    #@259
    .line 250
    :cond_6
    const/4 v12, 0x0

    #@25a
    .local v12, "_arg1":Landroid/telecom/StatusHints;
    goto :goto_6

    #@25b
    .line 257
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/StatusHints;
    :sswitch_14
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@25e
    move-object/from16 v0, p2

    #@260
    move-object/from16 v1, v19

    #@262
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@265
    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@268
    move-result-object v3

    #@269
    .line 261
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26c
    move-result v19

    #@26d
    if-eqz v19, :cond_7

    #@26f
    .line 262
    sget-object v19, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@271
    move-object/from16 v0, v19

    #@273
    move-object/from16 v1, p2

    #@275
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@278
    move-result-object v6

    #@279
    check-cast v6, Landroid/net/Uri;

    #@27b
    .line 268
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27e
    move-result v17

    #@27f
    .line 269
    .local v17, "_arg2":I
    move-object/from16 v0, p0

    #@281
    move/from16 v1, v17

    #@283
    invoke-virtual {v0, v3, v6, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V

    #@286
    .line 270
    const/16 v19, 0x1

    #@288
    return v19

    #@289
    .line 265
    .end local v17    # "_arg2":I
    :cond_7
    const/4 v6, 0x0

    #@28a
    .local v6, "_arg1":Landroid/net/Uri;
    goto :goto_7

    #@28b
    .line 274
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/net/Uri;
    :sswitch_15
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@28e
    move-object/from16 v0, p2

    #@290
    move-object/from16 v1, v19

    #@292
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@295
    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@298
    move-result-object v3

    #@299
    .line 278
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29c
    move-result-object v14

    #@29d
    .line 280
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a0
    move-result v17

    #@2a1
    .line 281
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    #@2a3
    move/from16 v1, v17

    #@2a5
    invoke-virtual {v0, v3, v14, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V

    #@2a8
    .line 282
    const/16 v19, 0x1

    #@2aa
    return v19

    #@2ab
    .line 286
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    :sswitch_16
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@2ae
    move-object/from16 v0, p2

    #@2b0
    move-object/from16 v1, v19

    #@2b2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b5
    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b8
    move-result-object v3

    #@2b9
    .line 290
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@2bc
    move-result-object v15

    #@2bd
    .line 291
    .local v15, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@2bf
    invoke-virtual {v0, v3, v15}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    #@2c2
    .line 292
    const/16 v19, 0x1

    #@2c4
    return v19

    #@2c5
    .line 296
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_17
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@2c8
    move-object/from16 v0, p2

    #@2ca
    move-object/from16 v1, v19

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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d6
    move-result v19

    #@2d7
    if-eqz v19, :cond_8

    #@2d9
    .line 301
    sget-object v19, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2db
    move-object/from16 v0, v19

    #@2dd
    move-object/from16 v1, p2

    #@2df
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e2
    move-result-object v11

    #@2e3
    check-cast v11, Landroid/telecom/ParcelableConnection;

    #@2e5
    .line 306
    :goto_8
    move-object/from16 v0, p0

    #@2e7
    invoke-virtual {v0, v3, v11}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    #@2ea
    .line 307
    const/16 v19, 0x1

    #@2ec
    return v19

    #@2ed
    .line 304
    :cond_8
    const/4 v11, 0x0

    #@2ee
    .local v11, "_arg1":Landroid/telecom/ParcelableConnection;
    goto :goto_8

    #@2ef
    .line 311
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Landroid/telecom/ParcelableConnection;
    :sswitch_18
    const-string/jumbo v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@2f2
    move-object/from16 v0, p2

    #@2f4
    move-object/from16 v1, v19

    #@2f6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f9
    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2fc
    move-result-object v3

    #@2fd
    .line 315
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@300
    move-result v19

    #@301
    if-eqz v19, :cond_9

    #@303
    .line 316
    sget-object v19, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@305
    move-object/from16 v0, v19

    #@307
    move-object/from16 v1, p2

    #@309
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30c
    move-result-object v7

    #@30d
    check-cast v7, Landroid/os/Bundle;

    #@30f
    .line 321
    :goto_9
    move-object/from16 v0, p0

    #@311
    invoke-virtual {v0, v3, v7}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    #@314
    .line 322
    const/16 v19, 0x1

    #@316
    return v19

    #@317
    .line 319
    :cond_9
    const/4 v7, 0x0

    #@318
    .local v7, "_arg1":Landroid/os/Bundle;
    goto :goto_9

    #@319
    .line 45
    nop

    #@31a
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
