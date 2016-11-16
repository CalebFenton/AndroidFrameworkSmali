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

.field static final TRANSACTION_addConferenceCall:I = 0xd

.field static final TRANSACTION_addExistingConnection:I = 0x19

.field static final TRANSACTION_handleCreateConnectionComplete:I = 0x1

.field static final TRANSACTION_onConnectionEvent:I = 0x1c

.field static final TRANSACTION_onPostDialChar:I = 0x10

.field static final TRANSACTION_onPostDialWait:I = 0xf

.field static final TRANSACTION_putExtras:I = 0x1a

.field static final TRANSACTION_queryRemoteConnectionServices:I = 0x11

.field static final TRANSACTION_removeCall:I = 0xe

.field static final TRANSACTION_removeExtras:I = 0x1b

.field static final TRANSACTION_setActive:I = 0x2

.field static final TRANSACTION_setAddress:I = 0x16

.field static final TRANSACTION_setCallerDisplayName:I = 0x17

.field static final TRANSACTION_setConferenceMergeFailed:I = 0xc

.field static final TRANSACTION_setConferenceableConnections:I = 0x18

.field static final TRANSACTION_setConnectionCapabilities:I = 0x9

.field static final TRANSACTION_setConnectionProperties:I = 0xa

.field static final TRANSACTION_setDialing:I = 0x4

.field static final TRANSACTION_setDisconnected:I = 0x6

.field static final TRANSACTION_setIsConferenced:I = 0xb

.field static final TRANSACTION_setIsVoipAudioMode:I = 0x14

.field static final TRANSACTION_setOnHold:I = 0x7

.field static final TRANSACTION_setPulling:I = 0x5

.field static final TRANSACTION_setRingbackRequested:I = 0x8

.field static final TRANSACTION_setRinging:I = 0x3

.field static final TRANSACTION_setStatusHints:I = 0x15

.field static final TRANSACTION_setVideoProvider:I = 0x12

.field static final TRANSACTION_setVideoState:I = 0x13


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
    .line 370
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
    .line 103
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a8
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setPulling(Ljava/lang/String;)V

    #@ab
    .line 104
    const/16 v20, 0x1

    #@ad
    return v20

    #@ae
    .line 108
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@b1
    move-object/from16 v0, p2

    #@b3
    move-object/from16 v1, v20

    #@b5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8
    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bb
    move-result-object v3

    #@bc
    .line 112
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bf
    move-result v20

    #@c0
    if-eqz v20, :cond_2

    #@c2
    .line 113
    sget-object v20, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c4
    move-object/from16 v0, v20

    #@c6
    move-object/from16 v1, p2

    #@c8
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cb
    move-result-object v9

    #@cc
    check-cast v9, Landroid/telecom/DisconnectCause;

    #@ce
    .line 118
    :goto_2
    move-object/from16 v0, p0

    #@d0
    invoke-virtual {v0, v3, v9}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    #@d3
    .line 119
    const/16 v20, 0x1

    #@d5
    return v20

    #@d6
    .line 116
    :cond_2
    const/4 v9, 0x0

    #@d7
    .local v9, "_arg1":Landroid/telecom/DisconnectCause;
    goto :goto_2

    #@d8
    .line 123
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Landroid/telecom/DisconnectCause;
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
    .line 126
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e8
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setOnHold(Ljava/lang/String;)V

    #@eb
    .line 127
    const/16 v20, 0x1

    #@ed
    return v20

    #@ee
    .line 131
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@f1
    move-object/from16 v0, p2

    #@f3
    move-object/from16 v1, v20

    #@f5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f8
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fb
    move-result-object v3

    #@fc
    .line 135
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ff
    move-result v20

    #@100
    if-eqz v20, :cond_3

    #@102
    const/16 v16, 0x1

    #@104
    .line 136
    .local v16, "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    #@106
    move/from16 v1, v16

    #@108
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRingbackRequested(Ljava/lang/String;Z)V

    #@10b
    .line 137
    const/16 v20, 0x1

    #@10d
    return v20

    #@10e
    .line 135
    .end local v16    # "_arg1":Z
    :cond_3
    const/16 v16, 0x0

    #@110
    goto :goto_3

    #@111
    .line 141
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@114
    move-object/from16 v0, p2

    #@116
    move-object/from16 v1, v20

    #@118
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11b
    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11e
    move-result-object v3

    #@11f
    .line 145
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@122
    move-result v5

    #@123
    .line 146
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    #@125
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionCapabilities(Ljava/lang/String;I)V

    #@128
    .line 147
    const/16 v20, 0x1

    #@12a
    return v20

    #@12b
    .line 151
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_a
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@12e
    move-object/from16 v0, p2

    #@130
    move-object/from16 v1, v20

    #@132
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@135
    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@138
    move-result-object v3

    #@139
    .line 155
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13c
    move-result v5

    #@13d
    .line 156
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@13f
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionProperties(Ljava/lang/String;I)V

    #@142
    .line 157
    const/16 v20, 0x1

    #@144
    return v20

    #@145
    .line 161
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_b
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@148
    move-object/from16 v0, p2

    #@14a
    move-object/from16 v1, v20

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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@156
    move-result-object v14

    #@157
    .line 166
    .local v14, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@159
    invoke-virtual {v0, v3, v14}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    #@15c
    .line 167
    const/16 v20, 0x1

    #@15e
    return v20

    #@15f
    .line 171
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
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
    .line 174
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@16f
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceMergeFailed(Ljava/lang/String;)V

    #@172
    .line 175
    const/16 v20, 0x1

    #@174
    return v20

    #@175
    .line 179
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@178
    move-object/from16 v0, p2

    #@17a
    move-object/from16 v1, v20

    #@17c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17f
    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@182
    move-result-object v3

    #@183
    .line 183
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@186
    move-result v20

    #@187
    if-eqz v20, :cond_4

    #@189
    .line 184
    sget-object v20, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18b
    move-object/from16 v0, v20

    #@18d
    move-object/from16 v1, p2

    #@18f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@192
    move-result-object v10

    #@193
    check-cast v10, Landroid/telecom/ParcelableConference;

    #@195
    .line 189
    :goto_4
    move-object/from16 v0, p0

    #@197
    invoke-virtual {v0, v3, v10}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    #@19a
    .line 190
    const/16 v20, 0x1

    #@19c
    return v20

    #@19d
    .line 187
    :cond_4
    const/4 v10, 0x0

    #@19e
    .local v10, "_arg1":Landroid/telecom/ParcelableConference;
    goto :goto_4

    #@19f
    .line 194
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Landroid/telecom/ParcelableConference;
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
    .line 197
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1af
    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeCall(Ljava/lang/String;)V

    #@1b2
    .line 198
    const/16 v20, 0x1

    #@1b4
    return v20

    #@1b5
    .line 202
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@1b8
    move-object/from16 v0, p2

    #@1ba
    move-object/from16 v1, v20

    #@1bc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bf
    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c2
    move-result-object v3

    #@1c3
    .line 206
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c6
    move-result-object v14

    #@1c7
    .line 207
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1c9
    invoke-virtual {v0, v3, v14}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    #@1cc
    .line 208
    const/16 v20, 0x1

    #@1ce
    return v20

    #@1cf
    .line 212
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@1d2
    move-object/from16 v0, p2

    #@1d4
    move-object/from16 v1, v20

    #@1d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d9
    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1dc
    move-result-object v3

    #@1dd
    .line 216
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e0
    move-result v20

    #@1e1
    move/from16 v0, v20

    #@1e3
    int-to-char v4, v0

    #@1e4
    .line 217
    .local v4, "_arg1":C
    move-object/from16 v0, p0

    #@1e6
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialChar(Ljava/lang/String;C)V

    #@1e9
    .line 218
    const/16 v20, 0x1

    #@1eb
    return v20

    #@1ec
    .line 222
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":C
    :sswitch_11
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@1ef
    move-object/from16 v0, p2

    #@1f1
    move-object/from16 v1, v20

    #@1f3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f6
    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f9
    move-result-object v20

    #@1fa
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/RemoteServiceCallback;

    #@1fd
    move-result-object v2

    #@1fe
    .line 225
    .local v2, "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    move-object/from16 v0, p0

    #@200
    invoke-virtual {v0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    #@203
    .line 226
    const/16 v20, 0x1

    #@205
    return v20

    #@206
    .line 230
    .end local v2    # "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    :sswitch_12
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@209
    move-object/from16 v0, p2

    #@20b
    move-object/from16 v1, v20

    #@20d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@210
    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@213
    move-result-object v3

    #@214
    .line 234
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@217
    move-result-object v20

    #@218
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    #@21b
    move-result-object v13

    #@21c
    .line 235
    .local v13, "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    move-object/from16 v0, p0

    #@21e
    invoke-virtual {v0, v3, v13}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V

    #@221
    .line 236
    const/16 v20, 0x1

    #@223
    return v20

    #@224
    .line 240
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    :sswitch_13
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@227
    move-object/from16 v0, p2

    #@229
    move-object/from16 v1, v20

    #@22b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22e
    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@231
    move-result-object v3

    #@232
    .line 244
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@235
    move-result v5

    #@236
    .line 245
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@238
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoState(Ljava/lang/String;I)V

    #@23b
    .line 246
    const/16 v20, 0x1

    #@23d
    return v20

    #@23e
    .line 250
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_14
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@241
    move-object/from16 v0, p2

    #@243
    move-object/from16 v1, v20

    #@245
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@248
    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24b
    move-result-object v3

    #@24c
    .line 254
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24f
    move-result v20

    #@250
    if-eqz v20, :cond_5

    #@252
    const/16 v16, 0x1

    #@254
    .line 255
    .restart local v16    # "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    #@256
    move/from16 v1, v16

    #@258
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsVoipAudioMode(Ljava/lang/String;Z)V

    #@25b
    .line 256
    const/16 v20, 0x1

    #@25d
    return v20

    #@25e
    .line 254
    .end local v16    # "_arg1":Z
    :cond_5
    const/16 v16, 0x0

    #@260
    goto :goto_5

    #@261
    .line 260
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@264
    move-object/from16 v0, p2

    #@266
    move-object/from16 v1, v20

    #@268
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26b
    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26e
    move-result-object v3

    #@26f
    .line 264
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@272
    move-result v20

    #@273
    if-eqz v20, :cond_6

    #@275
    .line 265
    sget-object v20, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    #@277
    move-object/from16 v0, v20

    #@279
    move-object/from16 v1, p2

    #@27b
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27e
    move-result-object v12

    #@27f
    check-cast v12, Landroid/telecom/StatusHints;

    #@281
    .line 270
    :goto_6
    move-object/from16 v0, p0

    #@283
    invoke-virtual {v0, v3, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V

    #@286
    .line 271
    const/16 v20, 0x1

    #@288
    return v20

    #@289
    .line 268
    :cond_6
    const/4 v12, 0x0

    #@28a
    .local v12, "_arg1":Landroid/telecom/StatusHints;
    goto :goto_6

    #@28b
    .line 275
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/StatusHints;
    :sswitch_16
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@28e
    move-object/from16 v0, p2

    #@290
    move-object/from16 v1, v20

    #@292
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@295
    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@298
    move-result-object v3

    #@299
    .line 279
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29c
    move-result v20

    #@29d
    if-eqz v20, :cond_7

    #@29f
    .line 280
    sget-object v20, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a1
    move-object/from16 v0, v20

    #@2a3
    move-object/from16 v1, p2

    #@2a5
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a8
    move-result-object v6

    #@2a9
    check-cast v6, Landroid/net/Uri;

    #@2ab
    .line 286
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ae
    move-result v17

    #@2af
    .line 287
    .local v17, "_arg2":I
    move-object/from16 v0, p0

    #@2b1
    move/from16 v1, v17

    #@2b3
    invoke-virtual {v0, v3, v6, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V

    #@2b6
    .line 288
    const/16 v20, 0x1

    #@2b8
    return v20

    #@2b9
    .line 283
    .end local v17    # "_arg2":I
    :cond_7
    const/4 v6, 0x0

    #@2ba
    .local v6, "_arg1":Landroid/net/Uri;
    goto :goto_7

    #@2bb
    .line 292
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/net/Uri;
    :sswitch_17
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@2be
    move-object/from16 v0, p2

    #@2c0
    move-object/from16 v1, v20

    #@2c2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c5
    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2c8
    move-result-object v3

    #@2c9
    .line 296
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2cc
    move-result-object v14

    #@2cd
    .line 298
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d0
    move-result v17

    #@2d1
    .line 299
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    #@2d3
    move/from16 v1, v17

    #@2d5
    invoke-virtual {v0, v3, v14, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V

    #@2d8
    .line 300
    const/16 v20, 0x1

    #@2da
    return v20

    #@2db
    .line 304
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    :sswitch_18
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@2de
    move-object/from16 v0, p2

    #@2e0
    move-object/from16 v1, v20

    #@2e2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e5
    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e8
    move-result-object v3

    #@2e9
    .line 308
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@2ec
    move-result-object v15

    #@2ed
    .line 309
    .local v15, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@2ef
    invoke-virtual {v0, v3, v15}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    #@2f2
    .line 310
    const/16 v20, 0x1

    #@2f4
    return v20

    #@2f5
    .line 314
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_19
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@2f8
    move-object/from16 v0, p2

    #@2fa
    move-object/from16 v1, v20

    #@2fc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ff
    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@302
    move-result-object v3

    #@303
    .line 318
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@306
    move-result v20

    #@307
    if-eqz v20, :cond_8

    #@309
    .line 319
    sget-object v20, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30b
    move-object/from16 v0, v20

    #@30d
    move-object/from16 v1, p2

    #@30f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@312
    move-result-object v11

    #@313
    check-cast v11, Landroid/telecom/ParcelableConnection;

    #@315
    .line 324
    :goto_8
    move-object/from16 v0, p0

    #@317
    invoke-virtual {v0, v3, v11}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    #@31a
    .line 325
    const/16 v20, 0x1

    #@31c
    return v20

    #@31d
    .line 322
    :cond_8
    const/4 v11, 0x0

    #@31e
    .local v11, "_arg1":Landroid/telecom/ParcelableConnection;
    goto :goto_8

    #@31f
    .line 329
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Landroid/telecom/ParcelableConnection;
    :sswitch_1a
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@322
    move-object/from16 v0, p2

    #@324
    move-object/from16 v1, v20

    #@326
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@329
    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32c
    move-result-object v3

    #@32d
    .line 333
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@330
    move-result v20

    #@331
    if-eqz v20, :cond_9

    #@333
    .line 334
    sget-object v20, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@335
    move-object/from16 v0, v20

    #@337
    move-object/from16 v1, p2

    #@339
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33c
    move-result-object v7

    #@33d
    check-cast v7, Landroid/os/Bundle;

    #@33f
    .line 339
    :goto_9
    move-object/from16 v0, p0

    #@341
    invoke-virtual {v0, v3, v7}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    #@344
    .line 340
    const/16 v20, 0x1

    #@346
    return v20

    #@347
    .line 337
    :cond_9
    const/4 v7, 0x0

    #@348
    .local v7, "_arg1":Landroid/os/Bundle;
    goto :goto_9

    #@349
    .line 344
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    :sswitch_1b
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@34c
    move-object/from16 v0, p2

    #@34e
    move-object/from16 v1, v20

    #@350
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@353
    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@356
    move-result-object v3

    #@357
    .line 348
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@35a
    move-result-object v15

    #@35b
    .line 349
    .restart local v15    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@35d
    invoke-virtual {v0, v3, v15}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    #@360
    .line 350
    const/16 v20, 0x1

    #@362
    return v20

    #@363
    .line 354
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1c
    const-string/jumbo v20, "com.android.internal.telecom.IConnectionServiceAdapter"

    #@366
    move-object/from16 v0, p2

    #@368
    move-object/from16 v1, v20

    #@36a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36d
    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@370
    move-result-object v3

    #@371
    .line 358
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@374
    move-result-object v14

    #@375
    .line 360
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@378
    move-result v20

    #@379
    if-eqz v20, :cond_a

    #@37b
    .line 361
    sget-object v20, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@37d
    move-object/from16 v0, v20

    #@37f
    move-object/from16 v1, p2

    #@381
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@384
    move-result-object v18

    #@385
    check-cast v18, Landroid/os/Bundle;

    #@387
    .line 366
    :goto_a
    move-object/from16 v0, p0

    #@389
    move-object/from16 v1, v18

    #@38b
    invoke-virtual {v0, v3, v14, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@38e
    .line 367
    const/16 v20, 0x1

    #@390
    return v20

    #@391
    .line 364
    :cond_a
    const/16 v18, 0x0

    #@393
    .local v18, "_arg2":Landroid/os/Bundle;
    goto :goto_a

    #@394
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
        0x1c -> :sswitch_1c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
