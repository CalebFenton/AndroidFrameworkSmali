.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 71
    const-string/jumbo v0, "android.app.IApplicationThread"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 70
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 58
    if-nez p0, :cond_0

    #@3
    .line 59
    return-object v1

    #@4
    .line 62
    :cond_0
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/IApplicationThread;

    #@d
    .line 63
    .local v0, "in":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_1

    #@f
    .line 64
    return-object v0

    #@10
    .line 67
    :cond_1
    new-instance v1, Landroid/app/ApplicationThreadProxy;

    #@12
    invoke-direct {v1, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    #@15
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 760
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 128
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
    .line 77
    packed-switch p1, :pswitch_data_0

    #@3
    .line 755
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v5

    #@7
    return v5

    #@8
    .line 80
    :pswitch_1
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@b
    move-object/from16 v0, p2

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@13
    move-result-object v6

    #@14
    .line 82
    .local v6, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_0

    #@1a
    const/4 v7, 0x1

    #@1b
    .line 83
    .local v7, "finished":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_1

    #@21
    const/4 v8, 0x1

    #@22
    .line 84
    .local v8, "userLeaving":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v9

    #@26
    .line 85
    .local v9, "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_2

    #@2c
    const/4 v10, 0x1

    #@2d
    .local v10, "dontReport":Z
    :goto_2
    move-object/from16 v5, p0

    #@2f
    .line 86
    invoke-virtual/range {v5 .. v10}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    #@32
    .line 87
    const/4 v5, 0x1

    #@33
    return v5

    #@34
    .line 82
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    .end local v10    # "dontReport":Z
    :cond_0
    const/4 v7, 0x0

    #@35
    .restart local v7    # "finished":Z
    goto :goto_0

    #@36
    .line 83
    :cond_1
    const/4 v8, 0x0

    #@37
    .restart local v8    # "userLeaving":Z
    goto :goto_1

    #@38
    .line 85
    .restart local v9    # "configChanges":I
    :cond_2
    const/4 v10, 0x0

    #@39
    goto :goto_2

    #@3a
    .line 92
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    :pswitch_2
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@3d
    move-object/from16 v0, p2

    #@3f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@45
    move-result-object v6

    #@46
    .line 94
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v5

    #@4a
    if-eqz v5, :cond_3

    #@4c
    const/16 v123, 0x1

    #@4e
    .line 95
    .local v123, "show":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v9

    #@52
    .line 96
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    #@54
    move/from16 v1, v123

    #@56
    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    #@59
    .line 97
    const/4 v5, 0x1

    #@5a
    return v5

    #@5b
    .line 94
    .end local v9    # "configChanges":I
    .end local v123    # "show":Z
    :cond_3
    const/16 v123, 0x0

    #@5d
    .restart local v123    # "show":Z
    goto :goto_3

    #@5e
    .line 102
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v123    # "show":Z
    :pswitch_3
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@61
    move-object/from16 v0, p2

    #@63
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@69
    move-result-object v6

    #@6a
    .line 104
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v5

    #@6e
    if-eqz v5, :cond_4

    #@70
    const/16 v123, 0x1

    #@72
    .line 105
    .local v123, "show":Z
    :goto_4
    move-object/from16 v0, p0

    #@74
    move/from16 v1, v123

    #@76
    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    #@79
    .line 106
    const/4 v5, 0x1

    #@7a
    return v5

    #@7b
    .line 104
    .end local v123    # "show":Z
    :cond_4
    const/16 v123, 0x0

    #@7d
    goto :goto_4

    #@7e
    .line 111
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_4
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@81
    move-object/from16 v0, p2

    #@83
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86
    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@89
    move-result-object v6

    #@8a
    .line 113
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d
    move-result v5

    #@8e
    if-eqz v5, :cond_5

    #@90
    const/16 v124, 0x1

    #@92
    .line 114
    .local v124, "sleeping":Z
    :goto_5
    move-object/from16 v0, p0

    #@94
    move/from16 v1, v124

    #@96
    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    #@99
    .line 115
    const/4 v5, 0x1

    #@9a
    return v5

    #@9b
    .line 113
    .end local v124    # "sleeping":Z
    :cond_5
    const/16 v124, 0x0

    #@9d
    goto :goto_5

    #@9e
    .line 120
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_5
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@a1
    move-object/from16 v0, p2

    #@a3
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a9
    move-result-object v6

    #@aa
    .line 122
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v21

    #@ae
    .line 123
    .local v21, "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b1
    move-result v5

    #@b2
    if-eqz v5, :cond_6

    #@b4
    const/16 v27, 0x1

    #@b6
    .line 124
    .local v27, "isForward":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@b9
    move-result-object v119

    #@ba
    .line 125
    .local v119, "resumeArgs":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@bc
    move/from16 v1, v21

    #@be
    move/from16 v2, v27

    #@c0
    move-object/from16 v3, v119

    #@c2
    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    #@c5
    .line 126
    const/4 v5, 0x1

    #@c6
    return v5

    #@c7
    .line 123
    .end local v27    # "isForward":Z
    .end local v119    # "resumeArgs":Landroid/os/Bundle;
    :cond_6
    const/16 v27, 0x0

    #@c9
    .restart local v27    # "isForward":Z
    goto :goto_6

    #@ca
    .line 131
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v21    # "procState":I
    .end local v27    # "isForward":Z
    :pswitch_6
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@cd
    move-object/from16 v0, p2

    #@cf
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d2
    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d5
    move-result-object v6

    #@d6
    .line 133
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d8
    move-object/from16 v0, p2

    #@da
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@dd
    move-result-object v24

    #@de
    .line 134
    .local v24, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    #@e0
    move-object/from16 v1, v24

    #@e2
    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    #@e5
    .line 135
    const/4 v5, 0x1

    #@e6
    return v5

    #@e7
    .line 140
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_7
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@ea
    move-object/from16 v0, p2

    #@ec
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ef
    .line 141
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f1
    move-object/from16 v0, p2

    #@f3
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f6
    move-result-object v12

    #@f7
    check-cast v12, Landroid/content/Intent;

    #@f9
    .line 142
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@fc
    move-result-object v6

    #@fd
    .line 143
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@100
    move-result v14

    #@101
    .line 144
    .local v14, "ident":I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@103
    move-object/from16 v0, p2

    #@105
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@108
    move-result-object v15

    #@109
    check-cast v15, Landroid/content/pm/ActivityInfo;

    #@10b
    .line 145
    .local v15, "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10d
    move-object/from16 v0, p2

    #@10f
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@112
    move-result-object v16

    #@113
    check-cast v16, Landroid/content/res/Configuration;

    #@115
    .line 146
    .local v16, "curConfig":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    #@117
    .line 147
    .local v17, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11a
    move-result v5

    #@11b
    if-eqz v5, :cond_7

    #@11d
    .line 148
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11f
    move-object/from16 v0, p2

    #@121
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@124
    move-result-object v17

    #@125
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    #@127
    .line 150
    :cond_7
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@129
    move-object/from16 v0, p2

    #@12b
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12e
    move-result-object v18

    #@12f
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@131
    .line 151
    .local v18, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@134
    move-result-object v19

    #@135
    .line 153
    .local v19, "referrer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@138
    move-result-object v5

    #@139
    .line 152
    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    #@13c
    move-result-object v20

    #@13d
    .line 154
    .local v20, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@140
    move-result v21

    #@141
    .line 155
    .restart local v21    # "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@144
    move-result-object v22

    #@145
    .line 156
    .local v22, "state":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    #@148
    move-result-object v23

    #@149
    .line 157
    .local v23, "persistentState":Landroid/os/PersistableBundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14b
    move-object/from16 v0, p2

    #@14d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@150
    move-result-object v24

    #@151
    .line 158
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@153
    move-object/from16 v0, p2

    #@155
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@158
    move-result-object v25

    #@159
    .line 159
    .local v25, "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15c
    move-result v5

    #@15d
    if-eqz v5, :cond_8

    #@15f
    const/16 v26, 0x1

    #@161
    .line 160
    .local v26, "notResumed":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@164
    move-result v5

    #@165
    if-eqz v5, :cond_9

    #@167
    const/16 v27, 0x1

    #@169
    .line 161
    .restart local v27    # "isForward":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16c
    move-result v5

    #@16d
    if-eqz v5, :cond_a

    #@16f
    .line 162
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@171
    move-object/from16 v0, p2

    #@173
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@176
    move-result-object v5

    #@177
    check-cast v5, Landroid/app/ProfilerInfo;

    #@179
    move-object/from16 v28, v5

    #@17b
    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_9
    move-object/from16 v11, p0

    #@17d
    move-object v13, v6

    #@17e
    .line 163
    invoke-virtual/range {v11 .. v28}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    #@181
    .line 166
    const/4 v5, 0x1

    #@182
    return v5

    #@183
    .line 159
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v26, 0x0

    #@185
    .restart local v26    # "notResumed":Z
    goto :goto_7

    #@186
    .line 160
    :cond_9
    const/16 v27, 0x0

    #@188
    .restart local v27    # "isForward":Z
    goto :goto_8

    #@189
    .line 162
    :cond_a
    const/16 v28, 0x0

    #@18b
    goto :goto_9

    #@18c
    .line 171
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "ident":I
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "curConfig":Landroid/content/res/Configuration;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v19    # "referrer":Ljava/lang/String;
    .end local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v21    # "procState":I
    .end local v22    # "state":Landroid/os/Bundle;
    .end local v23    # "persistentState":Landroid/os/PersistableBundle;
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    :pswitch_8
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@18f
    move-object/from16 v0, p2

    #@191
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@194
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@197
    move-result-object v6

    #@198
    .line 173
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19a
    move-object/from16 v0, p2

    #@19c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@19f
    move-result-object v24

    #@1a0
    .line 174
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a2
    move-object/from16 v0, p2

    #@1a4
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@1a7
    move-result-object v25

    #@1a8
    .line 175
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ab
    move-result v9

    #@1ac
    .line 176
    .restart local v9    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1af
    move-result v5

    #@1b0
    if-eqz v5, :cond_c

    #@1b2
    const/16 v26, 0x1

    #@1b4
    .line 177
    .restart local v26    # "notResumed":Z
    :goto_a
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b6
    move-object/from16 v0, p2

    #@1b8
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1bb
    move-result-object v35

    #@1bc
    check-cast v35, Landroid/content/res/Configuration;

    #@1be
    .line 178
    .local v35, "config":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    #@1c0
    .line 179
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c3
    move-result v5

    #@1c4
    if-eqz v5, :cond_b

    #@1c6
    .line 180
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c8
    move-object/from16 v0, p2

    #@1ca
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1cd
    move-result-object v17

    #@1ce
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    #@1d0
    .line 182
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d3
    move-result v5

    #@1d4
    const/4 v11, 0x1

    #@1d5
    if-ne v5, v11, :cond_d

    #@1d7
    const/16 v37, 0x1

    #@1d9
    .local v37, "preserveWindows":Z
    :goto_b
    move-object/from16 v29, p0

    #@1db
    move-object/from16 v30, v6

    #@1dd
    move-object/from16 v31, v24

    #@1df
    move-object/from16 v32, v25

    #@1e1
    move/from16 v33, v9

    #@1e3
    move/from16 v34, v26

    #@1e5
    move-object/from16 v36, v17

    #@1e7
    .line 183
    invoke-virtual/range {v29 .. v37}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    #@1ea
    .line 185
    const/4 v5, 0x1

    #@1eb
    return v5

    #@1ec
    .line 176
    .end local v26    # "notResumed":Z
    .end local v35    # "config":Landroid/content/res/Configuration;
    .end local v37    # "preserveWindows":Z
    :cond_c
    const/16 v26, 0x0

    #@1ee
    .restart local v26    # "notResumed":Z
    goto :goto_a

    #@1ef
    .line 182
    .restart local v35    # "config":Landroid/content/res/Configuration;
    :cond_d
    const/16 v37, 0x0

    #@1f1
    goto :goto_b

    #@1f2
    .line 190
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v9    # "configChanges":I
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v26    # "notResumed":Z
    .end local v35    # "config":Landroid/content/res/Configuration;
    :pswitch_9
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@1f5
    move-object/from16 v0, p2

    #@1f7
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fa
    .line 191
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1fc
    move-object/from16 v0, p2

    #@1fe
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@201
    move-result-object v25

    #@202
    .line 192
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@205
    move-result-object v6

    #@206
    .line 193
    .restart local v6    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@208
    move-object/from16 v1, v25

    #@20a
    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    #@20d
    .line 194
    const/4 v5, 0x1

    #@20e
    return v5

    #@20f
    .line 199
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :pswitch_a
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@212
    move-object/from16 v0, p2

    #@214
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@217
    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@21a
    move-result-object v6

    #@21b
    .line 201
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21e
    move-result v5

    #@21f
    if-eqz v5, :cond_e

    #@221
    const/16 v94, 0x1

    #@223
    .line 202
    .local v94, "finishing":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@226
    move-result v9

    #@227
    .line 203
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    #@229
    move/from16 v1, v94

    #@22b
    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    #@22e
    .line 204
    const/4 v5, 0x1

    #@22f
    return v5

    #@230
    .line 201
    .end local v9    # "configChanges":I
    .end local v94    # "finishing":Z
    :cond_e
    const/16 v94, 0x0

    #@232
    .restart local v94    # "finishing":Z
    goto :goto_c

    #@233
    .line 209
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v94    # "finishing":Z
    :pswitch_b
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@236
    move-object/from16 v0, p2

    #@238
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23b
    .line 210
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23d
    move-object/from16 v0, p2

    #@23f
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@242
    move-result-object v12

    #@243
    check-cast v12, Landroid/content/Intent;

    #@245
    .line 211
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@247
    move-object/from16 v0, p2

    #@249
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24c
    move-result-object v15

    #@24d
    check-cast v15, Landroid/content/pm/ActivityInfo;

    #@24f
    .line 212
    .restart local v15    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@251
    move-object/from16 v0, p2

    #@253
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@256
    move-result-object v18

    #@257
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@259
    .line 213
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25c
    move-result v42

    #@25d
    .line 214
    .local v42, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@260
    move-result-object v43

    #@261
    .line 215
    .local v43, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@264
    move-result-object v44

    #@265
    .line 216
    .local v44, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@268
    move-result v5

    #@269
    if-eqz v5, :cond_f

    #@26b
    const/16 v45, 0x1

    #@26d
    .line 217
    .local v45, "sync":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@270
    move-result v46

    #@271
    .line 218
    .local v46, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@274
    move-result v47

    #@275
    .local v47, "processState":I
    move-object/from16 v38, p0

    #@277
    move-object/from16 v39, v12

    #@279
    move-object/from16 v40, v15

    #@27b
    move-object/from16 v41, v18

    #@27d
    .line 219
    invoke-virtual/range {v38 .. v47}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    #@280
    .line 221
    const/4 v5, 0x1

    #@281
    return v5

    #@282
    .line 216
    .end local v45    # "sync":Z
    .end local v46    # "sendingUser":I
    .end local v47    # "processState":I
    :cond_f
    const/16 v45, 0x0

    #@284
    .restart local v45    # "sync":Z
    goto :goto_d

    #@285
    .line 225
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v42    # "resultCode":I
    .end local v43    # "resultData":Ljava/lang/String;
    .end local v44    # "resultExtras":Landroid/os/Bundle;
    .end local v45    # "sync":Z
    :pswitch_c
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@288
    move-object/from16 v0, p2

    #@28a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28d
    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@290
    move-result-object v30

    #@291
    .line 227
    .local v30, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@293
    move-object/from16 v0, p2

    #@295
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@298
    move-result-object v99

    #@299
    check-cast v99, Landroid/content/pm/ServiceInfo;

    #@29b
    .line 228
    .local v99, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@29d
    move-object/from16 v0, p2

    #@29f
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a2
    move-result-object v18

    #@2a3
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@2a5
    .line 229
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a8
    move-result v47

    #@2a9
    .line 230
    .restart local v47    # "processState":I
    move-object/from16 v0, p0

    #@2ab
    move-object/from16 v1, v30

    #@2ad
    move-object/from16 v2, v99

    #@2af
    move-object/from16 v3, v18

    #@2b1
    move/from16 v4, v47

    #@2b3
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    #@2b6
    .line 231
    const/4 v5, 0x1

    #@2b7
    return v5

    #@2b8
    .line 235
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v47    # "processState":I
    .end local v99    # "info":Landroid/content/pm/ServiceInfo;
    :pswitch_d
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@2bb
    move-object/from16 v0, p2

    #@2bd
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c0
    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2c3
    move-result-object v30

    #@2c4
    .line 237
    .restart local v30    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c6
    move-object/from16 v0, p2

    #@2c8
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2cb
    move-result-object v12

    #@2cc
    check-cast v12, Landroid/content/Intent;

    #@2ce
    .line 238
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d1
    move-result v5

    #@2d2
    if-eqz v5, :cond_10

    #@2d4
    const/16 v115, 0x1

    #@2d6
    .line 239
    .local v115, "rebind":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d9
    move-result v47

    #@2da
    .line 240
    .restart local v47    # "processState":I
    move-object/from16 v0, p0

    #@2dc
    move-object/from16 v1, v30

    #@2de
    move/from16 v2, v115

    #@2e0
    move/from16 v3, v47

    #@2e2
    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    #@2e5
    .line 241
    const/4 v5, 0x1

    #@2e6
    return v5

    #@2e7
    .line 238
    .end local v47    # "processState":I
    .end local v115    # "rebind":Z
    :cond_10
    const/16 v115, 0x0

    #@2e9
    .restart local v115    # "rebind":Z
    goto :goto_e

    #@2ea
    .line 245
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v115    # "rebind":Z
    :pswitch_e
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@2ed
    move-object/from16 v0, p2

    #@2ef
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f2
    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2f5
    move-result-object v30

    #@2f6
    .line 247
    .restart local v30    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f8
    move-object/from16 v0, p2

    #@2fa
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2fd
    move-result-object v12

    #@2fe
    check-cast v12, Landroid/content/Intent;

    #@300
    .line 248
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@302
    move-object/from16 v1, v30

    #@304
    invoke-virtual {v0, v1, v12}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    #@307
    .line 249
    const/4 v5, 0x1

    #@308
    return v5

    #@309
    .line 254
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_f
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@30c
    move-object/from16 v0, p2

    #@30e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@311
    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@314
    move-result-object v30

    #@315
    .line 256
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@318
    move-result v5

    #@319
    if-eqz v5, :cond_11

    #@31b
    const/16 v31, 0x1

    #@31d
    .line 257
    .local v31, "taskRemoved":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@320
    move-result v32

    #@321
    .line 258
    .local v32, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@324
    move-result v33

    #@325
    .line 260
    .local v33, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@328
    move-result v5

    #@329
    if-eqz v5, :cond_12

    #@32b
    .line 261
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32d
    move-object/from16 v0, p2

    #@32f
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@332
    move-result-object v34

    #@333
    check-cast v34, Landroid/content/Intent;

    #@335
    :goto_10
    move-object/from16 v29, p0

    #@337
    .line 265
    invoke-virtual/range {v29 .. v34}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    #@33a
    .line 266
    const/4 v5, 0x1

    #@33b
    return v5

    #@33c
    .line 256
    .end local v31    # "taskRemoved":Z
    .end local v32    # "startId":I
    .end local v33    # "fl":I
    :cond_11
    const/16 v31, 0x0

    #@33e
    .restart local v31    # "taskRemoved":Z
    goto :goto_f

    #@33f
    .line 263
    .restart local v32    # "startId":I
    .restart local v33    # "fl":I
    :cond_12
    const/16 v34, 0x0

    #@341
    .local v34, "args":Landroid/content/Intent;
    goto :goto_10

    #@342
    .line 271
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v31    # "taskRemoved":Z
    .end local v32    # "startId":I
    .end local v33    # "fl":I
    .end local v34    # "args":Landroid/content/Intent;
    :pswitch_10
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@345
    move-object/from16 v0, p2

    #@347
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34a
    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@34d
    move-result-object v30

    #@34e
    .line 273
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@350
    move-object/from16 v1, v30

    #@352
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    #@355
    .line 274
    const/4 v5, 0x1

    #@356
    return v5

    #@357
    .line 279
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_11
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@35a
    move-object/from16 v0, p2

    #@35c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35f
    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@362
    move-result-object v49

    #@363
    .line 282
    .local v49, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@365
    move-object/from16 v0, p2

    #@367
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36a
    move-result-object v50

    #@36b
    check-cast v50, Landroid/content/pm/ApplicationInfo;

    #@36d
    .line 284
    .local v50, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36f
    move-object/from16 v0, p2

    #@371
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@374
    move-result-object v51

    #@375
    .line 285
    .local v51, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@378
    move-result v5

    #@379
    if-eqz v5, :cond_13

    #@37b
    .line 286
    new-instance v52, Landroid/content/ComponentName;

    #@37d
    move-object/from16 v0, v52

    #@37f
    move-object/from16 v1, p2

    #@381
    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    #@384
    .line 287
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@387
    move-result v5

    #@388
    if-eqz v5, :cond_14

    #@38a
    .line 288
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38c
    move-object/from16 v0, p2

    #@38e
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@391
    move-result-object v28

    #@392
    check-cast v28, Landroid/app/ProfilerInfo;

    #@394
    .line 289
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@397
    move-result-object v54

    #@398
    .line 290
    .local v54, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@39b
    move-result-object v87

    #@39c
    .line 291
    .local v87, "binder":Landroid/os/IBinder;
    invoke-static/range {v87 .. v87}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    #@39f
    move-result-object v55

    #@3a0
    .line 292
    .local v55, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3a3
    move-result-object v87

    #@3a4
    .line 294
    invoke-static/range {v87 .. v87}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    #@3a7
    move-result-object v56

    #@3a8
    .line 295
    .local v56, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ab
    move-result v57

    #@3ac
    .line 296
    .local v57, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3af
    move-result v5

    #@3b0
    if-eqz v5, :cond_15

    #@3b2
    const/16 v58, 0x1

    #@3b4
    .line 297
    .local v58, "enableBinderTracking":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b7
    move-result v5

    #@3b8
    if-eqz v5, :cond_16

    #@3ba
    const/16 v59, 0x1

    #@3bc
    .line 298
    .local v59, "trackAllocation":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3bf
    move-result v5

    #@3c0
    if-eqz v5, :cond_17

    #@3c2
    const/16 v60, 0x1

    #@3c4
    .line 299
    .local v60, "restrictedBackupMode":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c7
    move-result v5

    #@3c8
    if-eqz v5, :cond_18

    #@3ca
    const/16 v61, 0x1

    #@3cc
    .line 300
    .local v61, "persistent":Z
    :goto_16
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3ce
    move-object/from16 v0, p2

    #@3d0
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d3
    move-result-object v35

    #@3d4
    check-cast v35, Landroid/content/res/Configuration;

    #@3d6
    .line 301
    .restart local v35    # "config":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d8
    move-object/from16 v0, p2

    #@3da
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3dd
    move-result-object v18

    #@3de
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@3e0
    .line 302
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    #@3e1
    move-object/from16 v0, p2

    #@3e3
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    #@3e6
    move-result-object v64

    #@3e7
    .line 303
    .local v64, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@3ea
    move-result-object v65

    #@3eb
    .local v65, "coreSettings":Landroid/os/Bundle;
    move-object/from16 v48, p0

    #@3ed
    move-object/from16 v53, v28

    #@3ef
    move-object/from16 v62, v35

    #@3f1
    move-object/from16 v63, v18

    #@3f3
    .line 304
    invoke-virtual/range {v48 .. v65}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    #@3f6
    .line 308
    const/4 v5, 0x1

    #@3f7
    return v5

    #@3f8
    .line 286
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v35    # "config":Landroid/content/res/Configuration;
    .end local v54    # "testArgs":Landroid/os/Bundle;
    .end local v55    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v56    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v57    # "testMode":I
    .end local v58    # "enableBinderTracking":Z
    .end local v59    # "trackAllocation":Z
    .end local v60    # "restrictedBackupMode":Z
    .end local v61    # "persistent":Z
    .end local v64    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v65    # "coreSettings":Landroid/os/Bundle;
    .end local v87    # "binder":Landroid/os/IBinder;
    :cond_13
    const/16 v52, 0x0

    #@3fa
    .local v52, "testName":Landroid/content/ComponentName;
    goto :goto_11

    #@3fb
    .line 288
    .end local v52    # "testName":Landroid/content/ComponentName;
    :cond_14
    const/16 v28, 0x0

    #@3fd
    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_12

    #@3fe
    .line 296
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v54    # "testArgs":Landroid/os/Bundle;
    .restart local v55    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v56    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v57    # "testMode":I
    .restart local v87    # "binder":Landroid/os/IBinder;
    :cond_15
    const/16 v58, 0x0

    #@400
    .restart local v58    # "enableBinderTracking":Z
    goto :goto_13

    #@401
    .line 297
    :cond_16
    const/16 v59, 0x0

    #@403
    .restart local v59    # "trackAllocation":Z
    goto :goto_14

    #@404
    .line 298
    :cond_17
    const/16 v60, 0x0

    #@406
    .restart local v60    # "restrictedBackupMode":Z
    goto :goto_15

    #@407
    .line 299
    :cond_18
    const/16 v61, 0x0

    #@409
    .restart local v61    # "persistent":Z
    goto :goto_16

    #@40a
    .line 313
    .end local v49    # "packageName":Ljava/lang/String;
    .end local v50    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v51    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v54    # "testArgs":Landroid/os/Bundle;
    .end local v55    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v56    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v57    # "testMode":I
    .end local v58    # "enableBinderTracking":Z
    .end local v59    # "trackAllocation":Z
    .end local v60    # "restrictedBackupMode":Z
    .end local v61    # "persistent":Z
    .end local v87    # "binder":Landroid/os/IBinder;
    :pswitch_12
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@40d
    move-object/from16 v0, p2

    #@40f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@412
    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    #@415
    .line 315
    const/4 v5, 0x1

    #@416
    return v5

    #@417
    .line 320
    :pswitch_13
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@41a
    move-object/from16 v0, p2

    #@41c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41f
    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    #@422
    .line 322
    const/4 v5, 0x1

    #@423
    return v5

    #@424
    .line 327
    :pswitch_14
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@427
    move-object/from16 v0, p2

    #@429
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42c
    .line 328
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@42e
    move-object/from16 v0, p2

    #@430
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@433
    move-result-object v35

    #@434
    check-cast v35, Landroid/content/res/Configuration;

    #@436
    .line 329
    .restart local v35    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    #@438
    move-object/from16 v1, v35

    #@43a
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    #@43d
    .line 330
    const/4 v5, 0x1

    #@43e
    return v5

    #@43f
    .line 334
    .end local v35    # "config":Landroid/content/res/Configuration;
    :pswitch_15
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@442
    move-object/from16 v0, p2

    #@444
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@447
    .line 335
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    #@44a
    .line 336
    const/4 v5, 0x1

    #@44b
    return v5

    #@44c
    .line 340
    :pswitch_16
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@44f
    move-object/from16 v0, p2

    #@451
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@454
    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    #@457
    .line 342
    const/4 v5, 0x1

    #@458
    return v5

    #@459
    .line 346
    :pswitch_17
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@45c
    move-object/from16 v0, p2

    #@45e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@461
    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@464
    move-result-object v114

    #@465
    .line 348
    .local v114, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@468
    move-result-object v109

    #@469
    .line 349
    .local v109, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@46c
    move-result-object v92

    #@46d
    .line 350
    .local v92, "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@46f
    move-object/from16 v0, p2

    #@471
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@474
    move-result-object v105

    #@475
    check-cast v105, Landroid/net/Uri;

    #@477
    .line 351
    .local v105, "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@479
    move-object/from16 v1, v114

    #@47b
    move-object/from16 v2, v109

    #@47d
    move-object/from16 v3, v92

    #@47f
    move-object/from16 v4, v105

    #@481
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    #@484
    .line 352
    const/4 v5, 0x1

    #@485
    return v5

    #@486
    .line 356
    .end local v92    # "exclList":Ljava/lang/String;
    .end local v105    # "pacFileUrl":Landroid/net/Uri;
    .end local v109    # "port":Ljava/lang/String;
    .end local v114    # "proxy":Ljava/lang/String;
    :pswitch_18
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@489
    move-object/from16 v0, p2

    #@48b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48e
    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    #@491
    .line 358
    const/4 v5, 0x1

    #@492
    return v5

    #@493
    .line 362
    :pswitch_19
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@496
    move-object/from16 v0, p2

    #@498
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49b
    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@49e
    move-result-object v93

    #@49f
    .line 364
    .local v93, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4a2
    move-result-object v120

    #@4a3
    .line 365
    .local v120, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@4a6
    move-result-object v82

    #@4a7
    .line 366
    .local v82, "args":[Ljava/lang/String;
    if-eqz v93, :cond_19

    #@4a9
    .line 367
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@4ac
    move-result-object v5

    #@4ad
    move-object/from16 v0, p0

    #@4af
    move-object/from16 v1, v120

    #@4b1
    move-object/from16 v2, v82

    #@4b3
    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    #@4b6
    .line 369
    :try_start_0
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b9
    .line 373
    :cond_19
    :goto_17
    const/4 v5, 0x1

    #@4ba
    return v5

    #@4bb
    .line 370
    :catch_0
    move-exception v90

    #@4bc
    .local v90, "e":Ljava/io/IOException;
    goto :goto_17

    #@4bd
    .line 377
    .end local v82    # "args":[Ljava/lang/String;
    .end local v90    # "e":Ljava/io/IOException;
    .end local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v120    # "service":Landroid/os/IBinder;
    :pswitch_1a
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@4c0
    move-object/from16 v0, p2

    #@4c2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c5
    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@4c8
    move-result-object v93

    #@4c9
    .line 379
    .restart local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4cc
    move-result-object v120

    #@4cd
    .line 380
    .restart local v120    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@4d0
    move-result-object v82

    #@4d1
    .line 381
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v93, :cond_1a

    #@4d3
    .line 382
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@4d6
    move-result-object v5

    #@4d7
    move-object/from16 v0, p0

    #@4d9
    move-object/from16 v1, v120

    #@4db
    move-object/from16 v2, v82

    #@4dd
    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    #@4e0
    .line 384
    :try_start_1
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@4e3
    .line 388
    :cond_1a
    :goto_18
    const/4 v5, 0x1

    #@4e4
    return v5

    #@4e5
    .line 385
    :catch_1
    move-exception v90

    #@4e6
    .restart local v90    # "e":Ljava/io/IOException;
    goto :goto_18

    #@4e7
    .line 392
    .end local v82    # "args":[Ljava/lang/String;
    .end local v90    # "e":Ljava/io/IOException;
    .end local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v120    # "service":Landroid/os/IBinder;
    :pswitch_1b
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@4ea
    move-object/from16 v0, p2

    #@4ec
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ef
    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4f2
    move-result-object v5

    #@4f3
    .line 393
    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    #@4f6
    move-result-object v67

    #@4f7
    .line 395
    .local v67, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4f9
    move-object/from16 v0, p2

    #@4fb
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4fe
    move-result-object v12

    #@4ff
    check-cast v12, Landroid/content/Intent;

    #@501
    .line 396
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@504
    move-result v42

    #@505
    .line 397
    .restart local v42    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@508
    move-result-object v70

    #@509
    .line 398
    .local v70, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@50c
    move-result-object v71

    #@50d
    .line 399
    .local v71, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@510
    move-result v5

    #@511
    if-eqz v5, :cond_1b

    #@513
    const/16 v72, 0x1

    #@515
    .line 400
    .local v72, "ordered":Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@518
    move-result v5

    #@519
    if-eqz v5, :cond_1c

    #@51b
    const/16 v73, 0x1

    #@51d
    .line 401
    .local v73, "sticky":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@520
    move-result v46

    #@521
    .line 402
    .restart local v46    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@524
    move-result v47

    #@525
    .restart local v47    # "processState":I
    move-object/from16 v66, p0

    #@527
    move-object/from16 v68, v12

    #@529
    move/from16 v69, v42

    #@52b
    move/from16 v74, v46

    #@52d
    move/from16 v75, v47

    #@52f
    .line 403
    invoke-virtual/range {v66 .. v75}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    #@532
    .line 405
    const/4 v5, 0x1

    #@533
    return v5

    #@534
    .line 399
    .end local v46    # "sendingUser":I
    .end local v47    # "processState":I
    .end local v72    # "ordered":Z
    .end local v73    # "sticky":Z
    :cond_1b
    const/16 v72, 0x0

    #@536
    .restart local v72    # "ordered":Z
    goto :goto_19

    #@537
    .line 400
    :cond_1c
    const/16 v73, 0x0

    #@539
    .restart local v73    # "sticky":Z
    goto :goto_1a

    #@53a
    .line 410
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v42    # "resultCode":I
    .end local v67    # "receiver":Landroid/content/IIntentReceiver;
    .end local v70    # "dataStr":Ljava/lang/String;
    .end local v71    # "extras":Landroid/os/Bundle;
    .end local v72    # "ordered":Z
    .end local v73    # "sticky":Z
    :pswitch_1c
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@53d
    move-object/from16 v0, p2

    #@53f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@542
    .line 411
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    #@545
    .line 412
    const/4 v5, 0x1

    #@546
    return v5

    #@547
    .line 417
    :pswitch_1d
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@54a
    move-object/from16 v0, p2

    #@54c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54f
    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@552
    move-result-object v6

    #@553
    .line 419
    .restart local v6    # "b":Landroid/os/IBinder;
    const/16 v17, 0x0

    #@555
    .line 420
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@558
    move-result v5

    #@559
    if-eqz v5, :cond_1d

    #@55b
    .line 421
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@55d
    move-object/from16 v0, p2

    #@55f
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@562
    move-result-object v17

    #@563
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    #@565
    .line 423
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@568
    move-result v5

    #@569
    const/4 v11, 0x1

    #@56a
    if-ne v5, v11, :cond_1e

    #@56c
    const/16 v116, 0x1

    #@56e
    .line 424
    .local v116, "reportToActivity":Z
    :goto_1b
    move-object/from16 v0, p0

    #@570
    move-object/from16 v1, v17

    #@572
    move/from16 v2, v116

    #@574
    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    #@577
    .line 425
    const/4 v5, 0x1

    #@578
    return v5

    #@579
    .line 423
    .end local v116    # "reportToActivity":Z
    :cond_1e
    const/16 v116, 0x0

    #@57b
    goto :goto_1b

    #@57c
    .line 430
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_1e
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@57f
    move-object/from16 v0, p2

    #@581
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@584
    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@587
    move-result-object v30

    #@588
    .line 433
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@58b
    move-result-object v5

    #@58c
    .line 432
    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    #@58f
    move-result-object v20

    #@590
    .line 434
    .restart local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    move-object/from16 v0, p0

    #@592
    move-object/from16 v1, v30

    #@594
    move-object/from16 v2, v20

    #@596
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    #@599
    .line 435
    const/4 v5, 0x1

    #@59a
    return v5

    #@59b
    .line 440
    .end local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_1f
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@59e
    move-object/from16 v0, p2

    #@5a0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a3
    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a6
    move-result v5

    #@5a7
    if-eqz v5, :cond_1f

    #@5a9
    const/16 v125, 0x1

    #@5ab
    .line 442
    .local v125, "start":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ae
    move-result v111

    #@5af
    .line 443
    .local v111, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5b2
    move-result v5

    #@5b3
    if-eqz v5, :cond_20

    #@5b5
    .line 444
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5b7
    move-object/from16 v0, p2

    #@5b9
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5bc
    move-result-object v5

    #@5bd
    check-cast v5, Landroid/app/ProfilerInfo;

    #@5bf
    move-object/from16 v28, v5

    #@5c1
    .line 445
    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1d
    move-object/from16 v0, p0

    #@5c3
    move/from16 v1, v125

    #@5c5
    move-object/from16 v2, v28

    #@5c7
    move/from16 v3, v111

    #@5c9
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    #@5cc
    .line 446
    const/4 v5, 0x1

    #@5cd
    return v5

    #@5ce
    .line 441
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v111    # "profileType":I
    .end local v125    # "start":Z
    :cond_1f
    const/16 v125, 0x0

    #@5d0
    .restart local v125    # "start":Z
    goto :goto_1c

    #@5d1
    .line 444
    .restart local v111    # "profileType":I
    :cond_20
    const/16 v28, 0x0

    #@5d3
    goto :goto_1d

    #@5d4
    .line 451
    .end local v111    # "profileType":I
    .end local v125    # "start":Z
    :pswitch_20
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@5d7
    move-object/from16 v0, p2

    #@5d9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5dc
    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5df
    move-result v96

    #@5e0
    .line 453
    .local v96, "group":I
    move-object/from16 v0, p0

    #@5e2
    move/from16 v1, v96

    #@5e4
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    #@5e7
    .line 454
    const/4 v5, 0x1

    #@5e8
    return v5

    #@5e9
    .line 459
    .end local v96    # "group":I
    :pswitch_21
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@5ec
    move-object/from16 v0, p2

    #@5ee
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f1
    .line 460
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5f3
    move-object/from16 v0, p2

    #@5f5
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5f8
    move-result-object v85

    #@5f9
    check-cast v85, Landroid/content/pm/ApplicationInfo;

    #@5fb
    .line 461
    .local v85, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5fd
    move-object/from16 v0, p2

    #@5ff
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@602
    move-result-object v18

    #@603
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@605
    .line 462
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@608
    move-result v86

    #@609
    .line 463
    .local v86, "backupMode":I
    move-object/from16 v0, p0

    #@60b
    move-object/from16 v1, v85

    #@60d
    move-object/from16 v2, v18

    #@60f
    move/from16 v3, v86

    #@611
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    #@614
    .line 464
    const/4 v5, 0x1

    #@615
    return v5

    #@616
    .line 469
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v85    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v86    # "backupMode":I
    :pswitch_22
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@619
    move-object/from16 v0, p2

    #@61b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@61e
    .line 470
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@620
    move-object/from16 v0, p2

    #@622
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@625
    move-result-object v85

    #@626
    check-cast v85, Landroid/content/pm/ApplicationInfo;

    #@628
    .line 471
    .restart local v85    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@62a
    move-object/from16 v0, p2

    #@62c
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@62f
    move-result-object v18

    #@630
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@632
    .line 472
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    #@634
    move-object/from16 v1, v85

    #@636
    move-object/from16 v2, v18

    #@638
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    #@63b
    .line 473
    const/4 v5, 0x1

    #@63c
    return v5

    #@63d
    .line 478
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v85    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :pswitch_23
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@640
    move-object/from16 v0, p2

    #@642
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@645
    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@648
    move-result v88

    #@649
    .line 480
    .local v88, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@64c
    move-result-object v106

    #@64d
    .line 481
    .local v106, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@64f
    move/from16 v1, v88

    #@651
    move-object/from16 v2, v106

    #@653
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    #@656
    .line 482
    const/4 v5, 0x1

    #@657
    return v5

    #@658
    .line 487
    .end local v88    # "cmd":I
    .end local v106    # "packages":[Ljava/lang/String;
    :pswitch_24
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@65b
    move-object/from16 v0, p2

    #@65d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@660
    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@663
    move-result-object v103

    #@664
    .line 489
    .local v103, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@666
    move-object/from16 v1, v103

    #@668
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    #@66b
    .line 490
    const/4 v5, 0x1

    #@66c
    return v5

    #@66d
    .line 495
    .end local v103    # "msg":Ljava/lang/String;
    :pswitch_25
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@670
    move-object/from16 v0, p2

    #@672
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@675
    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@678
    move-result v5

    #@679
    if-eqz v5, :cond_21

    #@67b
    const/16 v102, 0x1

    #@67d
    .line 497
    .local v102, "managed":Z
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@680
    move-result-object v107

    #@681
    .line 498
    .local v107, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@684
    move-result v5

    #@685
    if-eqz v5, :cond_22

    #@687
    .line 499
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@689
    move-object/from16 v0, p2

    #@68b
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@68e
    move-result-object v5

    #@68f
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    #@691
    move-object/from16 v93, v5

    #@693
    .line 500
    .restart local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_1f
    move-object/from16 v0, p0

    #@695
    move/from16 v1, v102

    #@697
    move-object/from16 v2, v107

    #@699
    move-object/from16 v3, v93

    #@69b
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    #@69e
    .line 501
    const/4 v5, 0x1

    #@69f
    return v5

    #@6a0
    .line 496
    .end local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v102    # "managed":Z
    .end local v107    # "path":Ljava/lang/String;
    :cond_21
    const/16 v102, 0x0

    #@6a2
    .restart local v102    # "managed":Z
    goto :goto_1e

    #@6a3
    .line 499
    .restart local v107    # "path":Ljava/lang/String;
    :cond_22
    const/16 v93, 0x0

    #@6a5
    goto :goto_1f

    #@6a6
    .line 505
    .end local v102    # "managed":Z
    .end local v107    # "path":Ljava/lang/String;
    :pswitch_26
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@6a9
    move-object/from16 v0, p2

    #@6ab
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ae
    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@6b1
    move-result-object v93

    #@6b2
    .line 507
    .restart local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6b5
    move-result-object v83

    #@6b6
    .line 508
    .local v83, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6b9
    move-result-object v110

    #@6ba
    .line 509
    .local v110, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@6bd
    move-result-object v82

    #@6be
    .line 510
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v93, :cond_23

    #@6c0
    .line 511
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@6c3
    move-result-object v5

    #@6c4
    move-object/from16 v0, p0

    #@6c6
    move-object/from16 v1, v83

    #@6c8
    move-object/from16 v2, v110

    #@6ca
    move-object/from16 v3, v82

    #@6cc
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    #@6cf
    .line 513
    :try_start_2
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@6d2
    .line 517
    :cond_23
    :goto_20
    const/4 v5, 0x1

    #@6d3
    return v5

    #@6d4
    .line 514
    :catch_2
    move-exception v90

    #@6d5
    .restart local v90    # "e":Ljava/io/IOException;
    goto :goto_20

    #@6d6
    .line 521
    .end local v82    # "args":[Ljava/lang/String;
    .end local v83    # "activity":Landroid/os/IBinder;
    .end local v90    # "e":Ljava/io/IOException;
    .end local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v110    # "prefix":Ljava/lang/String;
    :pswitch_27
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@6d9
    move-object/from16 v0, p2

    #@6db
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6de
    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@6e1
    move-result-object v122

    #@6e2
    .line 523
    .local v122, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@6e4
    move-object/from16 v1, v122

    #@6e6
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    #@6e9
    .line 524
    const/4 v5, 0x1

    #@6ea
    return v5

    #@6eb
    .line 528
    .end local v122    # "settings":Landroid/os/Bundle;
    :pswitch_28
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@6ee
    move-object/from16 v0, p2

    #@6f0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f3
    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6f6
    move-result-object v108

    #@6f7
    .line 530
    .local v108, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6f9
    move-object/from16 v0, p2

    #@6fb
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6fe
    move-result-object v89

    #@6ff
    check-cast v89, Landroid/content/res/CompatibilityInfo;

    #@701
    .line 531
    .local v89, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    #@703
    move-object/from16 v1, v108

    #@705
    move-object/from16 v2, v89

    #@707
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    #@70a
    .line 532
    const/4 v5, 0x1

    #@70b
    return v5

    #@70c
    .line 536
    .end local v89    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v108    # "pkg":Ljava/lang/String;
    :pswitch_29
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@70f
    move-object/from16 v0, p2

    #@711
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@714
    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@717
    move-result v101

    #@718
    .line 538
    .local v101, "level":I
    move-object/from16 v0, p0

    #@71a
    move/from16 v1, v101

    #@71c
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    #@71f
    .line 539
    const/4 v5, 0x1

    #@720
    return v5

    #@721
    .line 544
    .end local v101    # "level":I
    :pswitch_2a
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@724
    move-object/from16 v0, p2

    #@726
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@729
    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@72c
    move-result-object v93

    #@72d
    .line 546
    .restart local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@72f
    move-object/from16 v0, p2

    #@731
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@734
    move-result-object v76

    #@735
    check-cast v76, Landroid/os/Debug$MemoryInfo;

    #@737
    .line 547
    .local v76, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@73a
    move-result v5

    #@73b
    if-eqz v5, :cond_25

    #@73d
    const/16 v77, 0x1

    #@73f
    .line 548
    .local v77, "checkin":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@742
    move-result v5

    #@743
    if-eqz v5, :cond_26

    #@745
    const/16 v78, 0x1

    #@747
    .line 549
    .local v78, "dumpInfo":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@74a
    move-result v5

    #@74b
    if-eqz v5, :cond_27

    #@74d
    const/16 v79, 0x1

    #@74f
    .line 550
    .local v79, "dumpDalvik":Z
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@752
    move-result v5

    #@753
    if-eqz v5, :cond_28

    #@755
    const/16 v80, 0x1

    #@757
    .line 551
    .local v80, "dumpSummaryOnly":Z
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@75a
    move-result v5

    #@75b
    if-eqz v5, :cond_29

    #@75d
    const/16 v81, 0x1

    #@75f
    .line 552
    .local v81, "dumpUnreachable":Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@762
    move-result-object v82

    #@763
    .line 553
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v93, :cond_24

    #@765
    .line 555
    :try_start_3
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@768
    move-result-object v75

    #@769
    move-object/from16 v74, p0

    #@76b
    invoke-virtual/range {v74 .. v82}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@76e
    .line 559
    :try_start_4
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@771
    .line 565
    :cond_24
    :goto_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@774
    .line 566
    const/4 v5, 0x1

    #@775
    return v5

    #@776
    .line 547
    .end local v77    # "checkin":Z
    .end local v78    # "dumpInfo":Z
    .end local v79    # "dumpDalvik":Z
    .end local v80    # "dumpSummaryOnly":Z
    .end local v81    # "dumpUnreachable":Z
    .end local v82    # "args":[Ljava/lang/String;
    :cond_25
    const/16 v77, 0x0

    #@778
    .restart local v77    # "checkin":Z
    goto :goto_21

    #@779
    .line 548
    :cond_26
    const/16 v78, 0x0

    #@77b
    .restart local v78    # "dumpInfo":Z
    goto :goto_22

    #@77c
    .line 549
    :cond_27
    const/16 v79, 0x0

    #@77e
    .restart local v79    # "dumpDalvik":Z
    goto :goto_23

    #@77f
    .line 550
    :cond_28
    const/16 v80, 0x0

    #@781
    .restart local v80    # "dumpSummaryOnly":Z
    goto :goto_24

    #@782
    .line 551
    :cond_29
    const/16 v81, 0x0

    #@784
    .restart local v81    # "dumpUnreachable":Z
    goto :goto_25

    #@785
    .line 560
    .restart local v82    # "args":[Ljava/lang/String;
    :catch_3
    move-exception v90

    #@786
    .restart local v90    # "e":Ljava/io/IOException;
    goto :goto_26

    #@787
    .line 557
    .end local v90    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@788
    .line 559
    :try_start_5
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@78b
    .line 557
    :goto_27
    throw v5

    #@78c
    .line 560
    :catch_4
    move-exception v90

    #@78d
    .restart local v90    # "e":Ljava/io/IOException;
    goto :goto_27

    #@78e
    .line 571
    .end local v76    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v77    # "checkin":Z
    .end local v78    # "dumpInfo":Z
    .end local v79    # "dumpDalvik":Z
    .end local v80    # "dumpSummaryOnly":Z
    .end local v81    # "dumpUnreachable":Z
    .end local v82    # "args":[Ljava/lang/String;
    .end local v90    # "e":Ljava/io/IOException;
    .end local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2b
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@791
    move-object/from16 v0, p2

    #@793
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@796
    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@799
    move-result-object v93

    #@79a
    .line 573
    .restart local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@79d
    move-result-object v82

    #@79e
    .line 574
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v93, :cond_2a

    #@7a0
    .line 576
    :try_start_6
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@7a3
    move-result-object v5

    #@7a4
    move-object/from16 v0, p0

    #@7a6
    move-object/from16 v1, v82

    #@7a8
    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@7ab
    .line 579
    :try_start_7
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@7ae
    .line 585
    :cond_2a
    :goto_28
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b1
    .line 586
    const/4 v5, 0x1

    #@7b2
    return v5

    #@7b3
    .line 580
    :catch_5
    move-exception v90

    #@7b4
    .restart local v90    # "e":Ljava/io/IOException;
    goto :goto_28

    #@7b5
    .line 577
    .end local v90    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    #@7b6
    .line 579
    :try_start_8
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    #@7b9
    .line 577
    :goto_29
    throw v5

    #@7ba
    .line 580
    :catch_6
    move-exception v90

    #@7bb
    .restart local v90    # "e":Ljava/io/IOException;
    goto :goto_29

    #@7bc
    .line 591
    .end local v82    # "args":[Ljava/lang/String;
    .end local v90    # "e":Ljava/io/IOException;
    .end local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2c
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@7bf
    move-object/from16 v0, p2

    #@7c1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c4
    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@7c7
    move-result-object v93

    #@7c8
    .line 593
    .restart local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@7cb
    move-result-object v82

    #@7cc
    .line 594
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v93, :cond_2b

    #@7ce
    .line 596
    :try_start_9
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@7d1
    move-result-object v5

    #@7d2
    move-object/from16 v0, p0

    #@7d4
    move-object/from16 v1, v82

    #@7d6
    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@7d9
    .line 599
    :try_start_a
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    #@7dc
    .line 605
    :cond_2b
    :goto_2a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7df
    .line 606
    const/4 v5, 0x1

    #@7e0
    return v5

    #@7e1
    .line 600
    :catch_7
    move-exception v90

    #@7e2
    .restart local v90    # "e":Ljava/io/IOException;
    goto :goto_2a

    #@7e3
    .line 597
    .end local v90    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    #@7e4
    .line 599
    :try_start_b
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    #@7e7
    .line 597
    :goto_2b
    throw v5

    #@7e8
    .line 600
    :catch_8
    move-exception v90

    #@7e9
    .restart local v90    # "e":Ljava/io/IOException;
    goto :goto_2b

    #@7ea
    .line 611
    .end local v82    # "args":[Ljava/lang/String;
    .end local v90    # "e":Ljava/io/IOException;
    .end local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2d
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@7ed
    move-object/from16 v0, p2

    #@7ef
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f2
    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7f5
    move-result-object v113

    #@7f6
    .line 613
    .local v113, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@7f8
    move-object/from16 v1, v113

    #@7fa
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    #@7fd
    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@800
    .line 615
    const/4 v5, 0x1

    #@801
    return v5

    #@802
    .line 620
    .end local v113    # "provider":Landroid/os/IBinder;
    :pswitch_2e
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@805
    move-object/from16 v0, p2

    #@807
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80a
    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@80d
    move-result-object v84

    #@80e
    .line 622
    .local v84, "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@811
    move-result-object v117

    #@812
    .line 623
    .local v117, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@815
    move-result v118

    #@816
    .line 624
    .local v118, "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@819
    move-result v121

    #@81a
    .line 625
    .local v121, "sessionId":I
    move-object/from16 v0, p0

    #@81c
    move-object/from16 v1, v84

    #@81e
    move-object/from16 v2, v117

    #@820
    move/from16 v3, v118

    #@822
    move/from16 v4, v121

    #@824
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;II)V

    #@827
    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@82a
    .line 627
    const/4 v5, 0x1

    #@82b
    return v5

    #@82c
    .line 632
    .end local v84    # "activityToken":Landroid/os/IBinder;
    .end local v117    # "requestToken":Landroid/os/IBinder;
    .end local v118    # "requestType":I
    .end local v121    # "sessionId":I
    :pswitch_2f
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@82f
    move-object/from16 v0, p2

    #@831
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@834
    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@837
    move-result-object v30

    #@838
    .line 634
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@83b
    move-result v5

    #@83c
    const/4 v11, 0x1

    #@83d
    if-ne v5, v11, :cond_2c

    #@83f
    const/16 v127, 0x1

    #@841
    .line 635
    .local v127, "timeout":Z
    :goto_2c
    move-object/from16 v0, p0

    #@843
    move-object/from16 v1, v30

    #@845
    move/from16 v2, v127

    #@847
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    #@84a
    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@84d
    .line 637
    const/4 v5, 0x1

    #@84e
    return v5

    #@84f
    .line 634
    .end local v127    # "timeout":Z
    :cond_2c
    const/16 v127, 0x0

    #@851
    goto :goto_2c

    #@852
    .line 642
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_30
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@855
    move-object/from16 v0, p2

    #@857
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@85a
    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@85d
    move-result-object v30

    #@85e
    .line 644
    .restart local v30    # "token":Landroid/os/IBinder;
    new-instance v104, Landroid/app/ActivityOptions;

    #@860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@863
    move-result-object v5

    #@864
    move-object/from16 v0, v104

    #@866
    invoke-direct {v0, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    #@869
    .line 645
    .local v104, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    #@86b
    move-object/from16 v1, v30

    #@86d
    move-object/from16 v2, v104

    #@86f
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    #@872
    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@875
    .line 647
    const/4 v5, 0x1

    #@876
    return v5

    #@877
    .line 652
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v104    # "options":Landroid/app/ActivityOptions;
    :pswitch_31
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@87a
    move-object/from16 v0, p2

    #@87c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@87f
    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@882
    move-result v126

    #@883
    .line 654
    .local v126, "state":I
    move-object/from16 v0, p0

    #@885
    move/from16 v1, v126

    #@887
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    #@88a
    .line 655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@88d
    .line 656
    const/4 v5, 0x1

    #@88e
    return v5

    #@88f
    .line 661
    .end local v126    # "state":I
    :pswitch_32
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@892
    move-object/from16 v0, p2

    #@894
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@897
    .line 662
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@899
    move-object/from16 v0, p2

    #@89b
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@89e
    move-result-object v112

    #@89f
    check-cast v112, Landroid/content/pm/ProviderInfo;

    #@8a1
    .line 663
    .local v112, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    #@8a3
    move-object/from16 v1, v112

    #@8a5
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    #@8a8
    .line 664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ab
    .line 665
    const/4 v5, 0x1

    #@8ac
    return v5

    #@8ad
    .line 670
    .end local v112    # "provider":Landroid/content/pm/ProviderInfo;
    :pswitch_33
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@8b0
    move-object/from16 v0, p2

    #@8b2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b5
    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    #@8b8
    move-result v100

    #@8b9
    .line 672
    .local v100, "is24Hour":B
    const/4 v5, 0x1

    #@8ba
    move/from16 v0, v100

    #@8bc
    if-ne v0, v5, :cond_2d

    #@8be
    const/4 v5, 0x1

    #@8bf
    :goto_2d
    move-object/from16 v0, p0

    #@8c1
    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->updateTimePrefs(Z)V

    #@8c4
    .line 673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c7
    .line 674
    const/4 v5, 0x1

    #@8c8
    return v5

    #@8c9
    .line 672
    :cond_2d
    const/4 v5, 0x0

    #@8ca
    goto :goto_2d

    #@8cb
    .line 679
    .end local v100    # "is24Hour":B
    :pswitch_34
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@8ce
    move-object/from16 v0, p2

    #@8d0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d3
    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8d6
    move-result-object v30

    #@8d7
    .line 681
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@8d9
    move-object/from16 v1, v30

    #@8db
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    #@8de
    .line 682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8e1
    .line 683
    const/4 v5, 0x1

    #@8e2
    return v5

    #@8e3
    .line 688
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_35
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@8e6
    move-object/from16 v0, p2

    #@8e8
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8eb
    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8ee
    move-result-object v30

    #@8ef
    .line 690
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8f2
    move-result v5

    #@8f3
    if-lez v5, :cond_2e

    #@8f5
    const/16 v91, 0x1

    #@8f7
    .line 691
    .local v91, "enabled":Z
    :goto_2e
    move-object/from16 v0, p0

    #@8f9
    move-object/from16 v1, v30

    #@8fb
    move/from16 v2, v91

    #@8fd
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    #@900
    .line 692
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@903
    .line 693
    const/4 v5, 0x1

    #@904
    return v5

    #@905
    .line 690
    .end local v91    # "enabled":Z
    :cond_2e
    const/16 v91, 0x0

    #@907
    goto :goto_2e

    #@908
    .line 698
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_36
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@90b
    move-object/from16 v0, p2

    #@90d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@910
    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@913
    move-result-object v30

    #@914
    .line 700
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@916
    move-object/from16 v1, v30

    #@918
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    #@91b
    .line 701
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@91e
    .line 702
    const/4 v5, 0x1

    #@91f
    return v5

    #@920
    .line 707
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_37
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@923
    move-object/from16 v0, p2

    #@925
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@928
    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@92b
    move-result-object v95

    #@92c
    .line 709
    .local v95, "firstPacket":[B
    move-object/from16 v0, p0

    #@92e
    move-object/from16 v1, v95

    #@930
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->notifyCleartextNetwork([B)V

    #@933
    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@936
    .line 711
    const/4 v5, 0x1

    #@937
    return v5

    #@938
    .line 716
    .end local v95    # "firstPacket":[B
    :pswitch_38
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@93b
    move-object/from16 v0, p2

    #@93d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@940
    .line 717
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->startBinderTracking()V

    #@943
    .line 718
    const/4 v5, 0x1

    #@944
    return v5

    #@945
    .line 723
    :pswitch_39
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@948
    move-object/from16 v0, p2

    #@94a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@94d
    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@950
    move-result-object v93

    #@951
    .line 725
    .restart local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v93, :cond_2f

    #@953
    .line 726
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@956
    move-result-object v5

    #@957
    move-object/from16 v0, p0

    #@959
    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->stopBinderTrackingAndDump(Ljava/io/FileDescriptor;)V

    #@95c
    .line 728
    :try_start_c
    invoke-virtual/range {v93 .. v93}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    #@95f
    .line 732
    :cond_2f
    :goto_2f
    const/4 v5, 0x1

    #@960
    return v5

    #@961
    .line 729
    :catch_9
    move-exception v90

    #@962
    .restart local v90    # "e":Ljava/io/IOException;
    goto :goto_2f

    #@963
    .line 737
    .end local v90    # "e":Ljava/io/IOException;
    .end local v93    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_3a
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@966
    move-object/from16 v0, p2

    #@968
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96b
    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@96e
    move-result-object v6

    #@96f
    .line 739
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@972
    move-result v5

    #@973
    if-eqz v5, :cond_30

    #@975
    const/16 v97, 0x1

    #@977
    .line 740
    .local v97, "inMultiWindow":Z
    :goto_30
    move-object/from16 v0, p0

    #@979
    move/from16 v1, v97

    #@97b
    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleMultiWindowModeChanged(Landroid/os/IBinder;Z)V

    #@97e
    .line 741
    const/4 v5, 0x1

    #@97f
    return v5

    #@980
    .line 739
    .end local v97    # "inMultiWindow":Z
    :cond_30
    const/16 v97, 0x0

    #@982
    goto :goto_30

    #@983
    .line 746
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_3b
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@986
    move-object/from16 v0, p2

    #@988
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@98b
    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@98e
    move-result-object v6

    #@98f
    .line 748
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@992
    move-result v5

    #@993
    if-eqz v5, :cond_31

    #@995
    const/16 v98, 0x1

    #@997
    .line 749
    .local v98, "inPip":Z
    :goto_31
    move-object/from16 v0, p0

    #@999
    move/from16 v1, v98

    #@99b
    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->schedulePictureInPictureModeChanged(Landroid/os/IBinder;Z)V

    #@99e
    .line 750
    const/4 v5, 0x1

    #@99f
    return v5

    #@9a0
    .line 748
    .end local v98    # "inPip":Z
    :cond_31
    const/16 v98, 0x0

    #@9a2
    goto :goto_31

    #@9a3
    .line 77
    nop

    #@9a4
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_14
        :pswitch_f
        :pswitch_15
        :pswitch_18
        :pswitch_d
        :pswitch_e
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_8
        :pswitch_4
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_30
        :pswitch_13
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_16
        :pswitch_17
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_1a
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_1e
    .end packed-switch
.end method
