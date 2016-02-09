.class public abstract Landroid/media/session/ISessionManager$Stub;
.super Landroid/os/Binder;
.source "ISessionManager.java"

# interfaces
.implements Landroid/media/session/ISessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionManager"

.field static final TRANSACTION_addSessionsListener:I = 0x5

.field static final TRANSACTION_createSession:I = 0x1

.field static final TRANSACTION_dispatchAdjustVolume:I = 0x4

.field static final TRANSACTION_dispatchMediaKeyEvent:I = 0x3

.field static final TRANSACTION_getSessions:I = 0x2

.field static final TRANSACTION_isGlobalPriorityActive:I = 0x8

.field static final TRANSACTION_removeSessionsListener:I = 0x6

.field static final TRANSACTION_setRemoteVolumeController:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.media.session.ISessionManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "android.media.session.ISessionManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/session/ISessionManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/media/session/ISessionManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/session/ISessionManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/session/ISessionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 156
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v18

    #@7
    return v18

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v18, "android.media.session.ISessionManager"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v18

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 47
    const/16 v18, 0x1

    #@14
    return v18

    #@15
    .line 51
    :sswitch_1
    const-string/jumbo v18, "android.media.session.ISessionManager"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v18

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    .line 55
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@26
    move-result-object v18

    #@27
    invoke-static/range {v18 .. v18}, Landroid/media/session/ISessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionCallback;

    #@2a
    move-result-object v10

    #@2b
    .line 57
    .local v10, "_arg1":Landroid/media/session/ISessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e
    move-result-object v13

    #@2f
    .line 59
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v14

    #@33
    .line 60
    .local v14, "_arg3":I
    move-object/from16 v0, p0

    #@35
    invoke-virtual {v0, v7, v10, v13, v14}, Landroid/media/session/ISessionManager$Stub;->createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;

    #@38
    move-result-object v15

    #@39
    .line 61
    .local v15, "_result":Landroid/media/session/ISession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c
    .line 62
    if-eqz v15, :cond_0

    #@3e
    invoke-interface {v15}, Landroid/media/session/ISession;->asBinder()Landroid/os/IBinder;

    #@41
    move-result-object v18

    #@42
    :goto_0
    move-object/from16 v0, p3

    #@44
    move-object/from16 v1, v18

    #@46
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@49
    .line 63
    const/16 v18, 0x1

    #@4b
    return v18

    #@4c
    .line 62
    :cond_0
    const/16 v18, 0x0

    #@4e
    goto :goto_0

    #@4f
    .line 67
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Landroid/media/session/ISessionCallback;
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":I
    .end local v15    # "_result":Landroid/media/session/ISession;
    :sswitch_2
    const-string/jumbo v18, "android.media.session.ISessionManager"

    #@52
    move-object/from16 v0, p2

    #@54
    move-object/from16 v1, v18

    #@56
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59
    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v18

    #@5d
    if-eqz v18, :cond_1

    #@5f
    .line 70
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@61
    move-object/from16 v0, v18

    #@63
    move-object/from16 v1, p2

    #@65
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@68
    move-result-object v3

    #@69
    check-cast v3, Landroid/content/ComponentName;

    #@6b
    .line 76
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v8

    #@6f
    .line 77
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    #@71
    invoke-virtual {v0, v3, v8}, Landroid/media/session/ISessionManager$Stub;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    #@74
    move-result-object v16

    #@75
    .line 78
    .local v16, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@78
    .line 79
    move-object/from16 v0, p3

    #@7a
    move-object/from16 v1, v16

    #@7c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    #@7f
    .line 80
    const/16 v18, 0x1

    #@81
    return v18

    #@82
    .line 73
    .end local v8    # "_arg1":I
    .end local v16    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_1
    const/4 v3, 0x0

    #@83
    .local v3, "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    #@84
    .line 84
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v18, "android.media.session.ISessionManager"

    #@87
    move-object/from16 v0, p2

    #@89
    move-object/from16 v1, v18

    #@8b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@91
    move-result v18

    #@92
    if-eqz v18, :cond_2

    #@94
    .line 87
    sget-object v18, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@96
    move-object/from16 v0, v18

    #@98
    move-object/from16 v1, p2

    #@9a
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9d
    move-result-object v6

    #@9e
    check-cast v6, Landroid/view/KeyEvent;

    #@a0
    .line 93
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a3
    move-result v18

    #@a4
    if-eqz v18, :cond_3

    #@a6
    const/4 v11, 0x1

    #@a7
    .line 94
    .local v11, "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    #@a9
    invoke-virtual {v0, v6, v11}, Landroid/media/session/ISessionManager$Stub;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    #@ac
    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@af
    .line 96
    const/16 v18, 0x1

    #@b1
    return v18

    #@b2
    .line 90
    .end local v11    # "_arg1":Z
    :cond_2
    const/4 v6, 0x0

    #@b3
    .local v6, "_arg0":Landroid/view/KeyEvent;
    goto :goto_2

    #@b4
    .line 93
    .end local v6    # "_arg0":Landroid/view/KeyEvent;
    :cond_3
    const/4 v11, 0x0

    #@b5
    .restart local v11    # "_arg1":Z
    goto :goto_3

    #@b6
    .line 100
    .end local v11    # "_arg1":Z
    :sswitch_4
    const-string/jumbo v18, "android.media.session.ISessionManager"

    #@b9
    move-object/from16 v0, p2

    #@bb
    move-object/from16 v1, v18

    #@bd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c0
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c3
    move-result v2

    #@c4
    .line 104
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c7
    move-result v8

    #@c8
    .line 106
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cb
    move-result v12

    #@cc
    .line 107
    .local v12, "_arg2":I
    move-object/from16 v0, p0

    #@ce
    invoke-virtual {v0, v2, v8, v12}, Landroid/media/session/ISessionManager$Stub;->dispatchAdjustVolume(III)V

    #@d1
    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d4
    .line 109
    const/16 v18, 0x1

    #@d6
    return v18

    #@d7
    .line 113
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v12    # "_arg2":I
    :sswitch_5
    const-string/jumbo v18, "android.media.session.ISessionManager"

    #@da
    move-object/from16 v0, p2

    #@dc
    move-object/from16 v1, v18

    #@de
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e1
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e4
    move-result-object v18

    #@e5
    invoke-static/range {v18 .. v18}, Landroid/media/session/IActiveSessionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IActiveSessionsListener;

    #@e8
    move-result-object v5

    #@e9
    .line 117
    .local v5, "_arg0":Landroid/media/session/IActiveSessionsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ec
    move-result v18

    #@ed
    if-eqz v18, :cond_4

    #@ef
    .line 118
    sget-object v18, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f1
    move-object/from16 v0, v18

    #@f3
    move-object/from16 v1, p2

    #@f5
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f8
    move-result-object v9

    #@f9
    check-cast v9, Landroid/content/ComponentName;

    #@fb
    .line 124
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fe
    move-result v12

    #@ff
    .line 125
    .restart local v12    # "_arg2":I
    move-object/from16 v0, p0

    #@101
    invoke-virtual {v0, v5, v9, v12}, Landroid/media/session/ISessionManager$Stub;->addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V

    #@104
    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@107
    .line 127
    const/16 v18, 0x1

    #@109
    return v18

    #@10a
    .line 121
    .end local v12    # "_arg2":I
    :cond_4
    const/4 v9, 0x0

    #@10b
    .local v9, "_arg1":Landroid/content/ComponentName;
    goto :goto_4

    #@10c
    .line 131
    .end local v5    # "_arg0":Landroid/media/session/IActiveSessionsListener;
    .end local v9    # "_arg1":Landroid/content/ComponentName;
    :sswitch_6
    const-string/jumbo v18, "android.media.session.ISessionManager"

    #@10f
    move-object/from16 v0, p2

    #@111
    move-object/from16 v1, v18

    #@113
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@116
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@119
    move-result-object v18

    #@11a
    invoke-static/range {v18 .. v18}, Landroid/media/session/IActiveSessionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IActiveSessionsListener;

    #@11d
    move-result-object v5

    #@11e
    .line 134
    .restart local v5    # "_arg0":Landroid/media/session/IActiveSessionsListener;
    move-object/from16 v0, p0

    #@120
    invoke-virtual {v0, v5}, Landroid/media/session/ISessionManager$Stub;->removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V

    #@123
    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@126
    .line 136
    const/16 v18, 0x1

    #@128
    return v18

    #@129
    .line 140
    .end local v5    # "_arg0":Landroid/media/session/IActiveSessionsListener;
    :sswitch_7
    const-string/jumbo v18, "android.media.session.ISessionManager"

    #@12c
    move-object/from16 v0, p2

    #@12e
    move-object/from16 v1, v18

    #@130
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@133
    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@136
    move-result-object v18

    #@137
    invoke-static/range {v18 .. v18}, Landroid/media/IRemoteVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteVolumeController;

    #@13a
    move-result-object v4

    #@13b
    .line 143
    .local v4, "_arg0":Landroid/media/IRemoteVolumeController;
    move-object/from16 v0, p0

    #@13d
    invoke-virtual {v0, v4}, Landroid/media/session/ISessionManager$Stub;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    #@140
    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@143
    .line 145
    const/16 v18, 0x1

    #@145
    return v18

    #@146
    .line 149
    .end local v4    # "_arg0":Landroid/media/IRemoteVolumeController;
    :sswitch_8
    const-string/jumbo v18, "android.media.session.ISessionManager"

    #@149
    move-object/from16 v0, p2

    #@14b
    move-object/from16 v1, v18

    #@14d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@150
    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionManager$Stub;->isGlobalPriorityActive()Z

    #@153
    move-result v17

    #@154
    .line 151
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@157
    .line 152
    if-eqz v17, :cond_5

    #@159
    const/16 v18, 0x1

    #@15b
    :goto_5
    move-object/from16 v0, p3

    #@15d
    move/from16 v1, v18

    #@15f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@162
    .line 153
    const/16 v18, 0x1

    #@164
    return v18

    #@165
    .line 152
    :cond_5
    const/16 v18, 0x0

    #@167
    goto :goto_5

    #@168
    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
