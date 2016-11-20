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
    .line 761
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 129
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
    .line 756
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
    const/16 v124, 0x1

    #@4e
    .line 95
    .local v124, "show":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v9

    #@52
    .line 96
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    #@54
    move/from16 v1, v124

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
    .end local v124    # "show":Z
    :cond_3
    const/16 v124, 0x0

    #@5d
    .restart local v124    # "show":Z
    goto :goto_3

    #@5e
    .line 102
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v124    # "show":Z
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
    const/16 v124, 0x1

    #@72
    .line 105
    .local v124, "show":Z
    :goto_4
    move-object/from16 v0, p0

    #@74
    move/from16 v1, v124

    #@76
    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    #@79
    .line 106
    const/4 v5, 0x1

    #@7a
    return v5

    #@7b
    .line 104
    .end local v124    # "show":Z
    :cond_4
    const/16 v124, 0x0

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
    const/16 v125, 0x1

    #@92
    .line 114
    .local v125, "sleeping":Z
    :goto_5
    move-object/from16 v0, p0

    #@94
    move/from16 v1, v125

    #@96
    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    #@99
    .line 115
    const/4 v5, 0x1

    #@9a
    return v5

    #@9b
    .line 113
    .end local v125    # "sleeping":Z
    :cond_5
    const/16 v125, 0x0

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
    move-result-object v120

    #@ba
    .line 125
    .local v120, "resumeArgs":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@bc
    move/from16 v1, v21

    #@be
    move/from16 v2, v27

    #@c0
    move-object/from16 v3, v120

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
    .end local v120    # "resumeArgs":Landroid/os/Bundle;
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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@209
    move-result v5

    #@20a
    const/4 v11, 0x1

    #@20b
    if-ne v5, v11, :cond_e

    #@20d
    const/16 v85, 0x1

    #@20f
    .line 194
    .local v85, "andPause":Z
    :goto_c
    move-object/from16 v0, p0

    #@211
    move-object/from16 v1, v25

    #@213
    move/from16 v2, v85

    #@215
    invoke-virtual {v0, v1, v6, v2}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;Z)V

    #@218
    .line 195
    const/4 v5, 0x1

    #@219
    return v5

    #@21a
    .line 193
    .end local v85    # "andPause":Z
    :cond_e
    const/16 v85, 0x0

    #@21c
    goto :goto_c

    #@21d
    .line 200
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :pswitch_a
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@220
    move-object/from16 v0, p2

    #@222
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@225
    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@228
    move-result-object v6

    #@229
    .line 202
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22c
    move-result v5

    #@22d
    if-eqz v5, :cond_f

    #@22f
    const/16 v95, 0x1

    #@231
    .line 203
    .local v95, "finishing":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@234
    move-result v9

    #@235
    .line 204
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    #@237
    move/from16 v1, v95

    #@239
    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    #@23c
    .line 205
    const/4 v5, 0x1

    #@23d
    return v5

    #@23e
    .line 202
    .end local v9    # "configChanges":I
    .end local v95    # "finishing":Z
    :cond_f
    const/16 v95, 0x0

    #@240
    .restart local v95    # "finishing":Z
    goto :goto_d

    #@241
    .line 210
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v95    # "finishing":Z
    :pswitch_b
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@244
    move-object/from16 v0, p2

    #@246
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@249
    .line 211
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24b
    move-object/from16 v0, p2

    #@24d
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@250
    move-result-object v12

    #@251
    check-cast v12, Landroid/content/Intent;

    #@253
    .line 212
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@255
    move-object/from16 v0, p2

    #@257
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25a
    move-result-object v15

    #@25b
    check-cast v15, Landroid/content/pm/ActivityInfo;

    #@25d
    .line 213
    .restart local v15    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@25f
    move-object/from16 v0, p2

    #@261
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@264
    move-result-object v18

    #@265
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@267
    .line 214
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26a
    move-result v42

    #@26b
    .line 215
    .local v42, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26e
    move-result-object v43

    #@26f
    .line 216
    .local v43, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@272
    move-result-object v44

    #@273
    .line 217
    .local v44, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@276
    move-result v5

    #@277
    if-eqz v5, :cond_10

    #@279
    const/16 v45, 0x1

    #@27b
    .line 218
    .local v45, "sync":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27e
    move-result v46

    #@27f
    .line 219
    .local v46, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@282
    move-result v47

    #@283
    .local v47, "processState":I
    move-object/from16 v38, p0

    #@285
    move-object/from16 v39, v12

    #@287
    move-object/from16 v40, v15

    #@289
    move-object/from16 v41, v18

    #@28b
    .line 220
    invoke-virtual/range {v38 .. v47}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    #@28e
    .line 222
    const/4 v5, 0x1

    #@28f
    return v5

    #@290
    .line 217
    .end local v45    # "sync":Z
    .end local v46    # "sendingUser":I
    .end local v47    # "processState":I
    :cond_10
    const/16 v45, 0x0

    #@292
    .restart local v45    # "sync":Z
    goto :goto_e

    #@293
    .line 226
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v42    # "resultCode":I
    .end local v43    # "resultData":Ljava/lang/String;
    .end local v44    # "resultExtras":Landroid/os/Bundle;
    .end local v45    # "sync":Z
    :pswitch_c
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@296
    move-object/from16 v0, p2

    #@298
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29b
    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29e
    move-result-object v30

    #@29f
    .line 228
    .local v30, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a1
    move-object/from16 v0, p2

    #@2a3
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a6
    move-result-object v100

    #@2a7
    check-cast v100, Landroid/content/pm/ServiceInfo;

    #@2a9
    .line 229
    .local v100, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2ab
    move-object/from16 v0, p2

    #@2ad
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b0
    move-result-object v18

    #@2b1
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@2b3
    .line 230
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b6
    move-result v47

    #@2b7
    .line 231
    .restart local v47    # "processState":I
    move-object/from16 v0, p0

    #@2b9
    move-object/from16 v1, v30

    #@2bb
    move-object/from16 v2, v100

    #@2bd
    move-object/from16 v3, v18

    #@2bf
    move/from16 v4, v47

    #@2c1
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    #@2c4
    .line 232
    const/4 v5, 0x1

    #@2c5
    return v5

    #@2c6
    .line 236
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v47    # "processState":I
    .end local v100    # "info":Landroid/content/pm/ServiceInfo;
    :pswitch_d
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@2c9
    move-object/from16 v0, p2

    #@2cb
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ce
    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d1
    move-result-object v30

    #@2d2
    .line 238
    .restart local v30    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d4
    move-object/from16 v0, p2

    #@2d6
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d9
    move-result-object v12

    #@2da
    check-cast v12, Landroid/content/Intent;

    #@2dc
    .line 239
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2df
    move-result v5

    #@2e0
    if-eqz v5, :cond_11

    #@2e2
    const/16 v116, 0x1

    #@2e4
    .line 240
    .local v116, "rebind":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e7
    move-result v47

    #@2e8
    .line 241
    .restart local v47    # "processState":I
    move-object/from16 v0, p0

    #@2ea
    move-object/from16 v1, v30

    #@2ec
    move/from16 v2, v116

    #@2ee
    move/from16 v3, v47

    #@2f0
    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    #@2f3
    .line 242
    const/4 v5, 0x1

    #@2f4
    return v5

    #@2f5
    .line 239
    .end local v47    # "processState":I
    .end local v116    # "rebind":Z
    :cond_11
    const/16 v116, 0x0

    #@2f7
    .restart local v116    # "rebind":Z
    goto :goto_f

    #@2f8
    .line 246
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v116    # "rebind":Z
    :pswitch_e
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@2fb
    move-object/from16 v0, p2

    #@2fd
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@300
    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@303
    move-result-object v30

    #@304
    .line 248
    .restart local v30    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@306
    move-object/from16 v0, p2

    #@308
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30b
    move-result-object v12

    #@30c
    check-cast v12, Landroid/content/Intent;

    #@30e
    .line 249
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@310
    move-object/from16 v1, v30

    #@312
    invoke-virtual {v0, v1, v12}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    #@315
    .line 250
    const/4 v5, 0x1

    #@316
    return v5

    #@317
    .line 255
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_f
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@31a
    move-object/from16 v0, p2

    #@31c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31f
    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@322
    move-result-object v30

    #@323
    .line 257
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@326
    move-result v5

    #@327
    if-eqz v5, :cond_12

    #@329
    const/16 v31, 0x1

    #@32b
    .line 258
    .local v31, "taskRemoved":Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@32e
    move-result v32

    #@32f
    .line 259
    .local v32, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@332
    move-result v33

    #@333
    .line 261
    .local v33, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@336
    move-result v5

    #@337
    if-eqz v5, :cond_13

    #@339
    .line 262
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33b
    move-object/from16 v0, p2

    #@33d
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@340
    move-result-object v34

    #@341
    check-cast v34, Landroid/content/Intent;

    #@343
    :goto_11
    move-object/from16 v29, p0

    #@345
    .line 266
    invoke-virtual/range {v29 .. v34}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    #@348
    .line 267
    const/4 v5, 0x1

    #@349
    return v5

    #@34a
    .line 257
    .end local v31    # "taskRemoved":Z
    .end local v32    # "startId":I
    .end local v33    # "fl":I
    :cond_12
    const/16 v31, 0x0

    #@34c
    .restart local v31    # "taskRemoved":Z
    goto :goto_10

    #@34d
    .line 264
    .restart local v32    # "startId":I
    .restart local v33    # "fl":I
    :cond_13
    const/16 v34, 0x0

    #@34f
    .local v34, "args":Landroid/content/Intent;
    goto :goto_11

    #@350
    .line 272
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v31    # "taskRemoved":Z
    .end local v32    # "startId":I
    .end local v33    # "fl":I
    .end local v34    # "args":Landroid/content/Intent;
    :pswitch_10
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@353
    move-object/from16 v0, p2

    #@355
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@358
    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@35b
    move-result-object v30

    #@35c
    .line 274
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@35e
    move-object/from16 v1, v30

    #@360
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    #@363
    .line 275
    const/4 v5, 0x1

    #@364
    return v5

    #@365
    .line 280
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_11
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@368
    move-object/from16 v0, p2

    #@36a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36d
    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@370
    move-result-object v49

    #@371
    .line 283
    .local v49, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@373
    move-object/from16 v0, p2

    #@375
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@378
    move-result-object v50

    #@379
    check-cast v50, Landroid/content/pm/ApplicationInfo;

    #@37b
    .line 285
    .local v50, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@37d
    move-object/from16 v0, p2

    #@37f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@382
    move-result-object v51

    #@383
    .line 286
    .local v51, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@386
    move-result v5

    #@387
    if-eqz v5, :cond_14

    #@389
    .line 287
    new-instance v52, Landroid/content/ComponentName;

    #@38b
    move-object/from16 v0, v52

    #@38d
    move-object/from16 v1, p2

    #@38f
    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    #@392
    .line 288
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@395
    move-result v5

    #@396
    if-eqz v5, :cond_15

    #@398
    .line 289
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@39a
    move-object/from16 v0, p2

    #@39c
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@39f
    move-result-object v28

    #@3a0
    check-cast v28, Landroid/app/ProfilerInfo;

    #@3a2
    .line 290
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@3a5
    move-result-object v54

    #@3a6
    .line 291
    .local v54, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3a9
    move-result-object v88

    #@3aa
    .line 292
    .local v88, "binder":Landroid/os/IBinder;
    invoke-static/range {v88 .. v88}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    #@3ad
    move-result-object v55

    #@3ae
    .line 293
    .local v55, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3b1
    move-result-object v88

    #@3b2
    .line 295
    invoke-static/range {v88 .. v88}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    #@3b5
    move-result-object v56

    #@3b6
    .line 296
    .local v56, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b9
    move-result v57

    #@3ba
    .line 297
    .local v57, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3bd
    move-result v5

    #@3be
    if-eqz v5, :cond_16

    #@3c0
    const/16 v58, 0x1

    #@3c2
    .line 298
    .local v58, "enableBinderTracking":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c5
    move-result v5

    #@3c6
    if-eqz v5, :cond_17

    #@3c8
    const/16 v59, 0x1

    #@3ca
    .line 299
    .local v59, "trackAllocation":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3cd
    move-result v5

    #@3ce
    if-eqz v5, :cond_18

    #@3d0
    const/16 v60, 0x1

    #@3d2
    .line 300
    .local v60, "restrictedBackupMode":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d5
    move-result v5

    #@3d6
    if-eqz v5, :cond_19

    #@3d8
    const/16 v61, 0x1

    #@3da
    .line 301
    .local v61, "persistent":Z
    :goto_17
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3dc
    move-object/from16 v0, p2

    #@3de
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e1
    move-result-object v35

    #@3e2
    check-cast v35, Landroid/content/res/Configuration;

    #@3e4
    .line 302
    .restart local v35    # "config":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e6
    move-object/from16 v0, p2

    #@3e8
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3eb
    move-result-object v18

    #@3ec
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@3ee
    .line 303
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    #@3ef
    move-object/from16 v0, p2

    #@3f1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    #@3f4
    move-result-object v64

    #@3f5
    .line 304
    .local v64, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@3f8
    move-result-object v65

    #@3f9
    .local v65, "coreSettings":Landroid/os/Bundle;
    move-object/from16 v48, p0

    #@3fb
    move-object/from16 v53, v28

    #@3fd
    move-object/from16 v62, v35

    #@3ff
    move-object/from16 v63, v18

    #@401
    .line 305
    invoke-virtual/range {v48 .. v65}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    #@404
    .line 309
    const/4 v5, 0x1

    #@405
    return v5

    #@406
    .line 287
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
    .end local v88    # "binder":Landroid/os/IBinder;
    :cond_14
    const/16 v52, 0x0

    #@408
    .local v52, "testName":Landroid/content/ComponentName;
    goto :goto_12

    #@409
    .line 289
    .end local v52    # "testName":Landroid/content/ComponentName;
    :cond_15
    const/16 v28, 0x0

    #@40b
    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_13

    #@40c
    .line 297
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v54    # "testArgs":Landroid/os/Bundle;
    .restart local v55    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v56    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v57    # "testMode":I
    .restart local v88    # "binder":Landroid/os/IBinder;
    :cond_16
    const/16 v58, 0x0

    #@40e
    .restart local v58    # "enableBinderTracking":Z
    goto :goto_14

    #@40f
    .line 298
    :cond_17
    const/16 v59, 0x0

    #@411
    .restart local v59    # "trackAllocation":Z
    goto :goto_15

    #@412
    .line 299
    :cond_18
    const/16 v60, 0x0

    #@414
    .restart local v60    # "restrictedBackupMode":Z
    goto :goto_16

    #@415
    .line 300
    :cond_19
    const/16 v61, 0x0

    #@417
    .restart local v61    # "persistent":Z
    goto :goto_17

    #@418
    .line 314
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
    .end local v88    # "binder":Landroid/os/IBinder;
    :pswitch_12
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@41b
    move-object/from16 v0, p2

    #@41d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@420
    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    #@423
    .line 316
    const/4 v5, 0x1

    #@424
    return v5

    #@425
    .line 321
    :pswitch_13
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@428
    move-object/from16 v0, p2

    #@42a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42d
    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    #@430
    .line 323
    const/4 v5, 0x1

    #@431
    return v5

    #@432
    .line 328
    :pswitch_14
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@435
    move-object/from16 v0, p2

    #@437
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43a
    .line 329
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@43c
    move-object/from16 v0, p2

    #@43e
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@441
    move-result-object v35

    #@442
    check-cast v35, Landroid/content/res/Configuration;

    #@444
    .line 330
    .restart local v35    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    #@446
    move-object/from16 v1, v35

    #@448
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    #@44b
    .line 331
    const/4 v5, 0x1

    #@44c
    return v5

    #@44d
    .line 335
    .end local v35    # "config":Landroid/content/res/Configuration;
    :pswitch_15
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@450
    move-object/from16 v0, p2

    #@452
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@455
    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    #@458
    .line 337
    const/4 v5, 0x1

    #@459
    return v5

    #@45a
    .line 341
    :pswitch_16
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@45d
    move-object/from16 v0, p2

    #@45f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@462
    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    #@465
    .line 343
    const/4 v5, 0x1

    #@466
    return v5

    #@467
    .line 347
    :pswitch_17
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@46a
    move-object/from16 v0, p2

    #@46c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46f
    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@472
    move-result-object v115

    #@473
    .line 349
    .local v115, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@476
    move-result-object v110

    #@477
    .line 350
    .local v110, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@47a
    move-result-object v93

    #@47b
    .line 351
    .local v93, "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@47d
    move-object/from16 v0, p2

    #@47f
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@482
    move-result-object v106

    #@483
    check-cast v106, Landroid/net/Uri;

    #@485
    .line 352
    .local v106, "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@487
    move-object/from16 v1, v115

    #@489
    move-object/from16 v2, v110

    #@48b
    move-object/from16 v3, v93

    #@48d
    move-object/from16 v4, v106

    #@48f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    #@492
    .line 353
    const/4 v5, 0x1

    #@493
    return v5

    #@494
    .line 357
    .end local v93    # "exclList":Ljava/lang/String;
    .end local v106    # "pacFileUrl":Landroid/net/Uri;
    .end local v110    # "port":Ljava/lang/String;
    .end local v115    # "proxy":Ljava/lang/String;
    :pswitch_18
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@497
    move-object/from16 v0, p2

    #@499
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49c
    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    #@49f
    .line 359
    const/4 v5, 0x1

    #@4a0
    return v5

    #@4a1
    .line 363
    :pswitch_19
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@4a4
    move-object/from16 v0, p2

    #@4a6
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a9
    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@4ac
    move-result-object v94

    #@4ad
    .line 365
    .local v94, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4b0
    move-result-object v121

    #@4b1
    .line 366
    .local v121, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@4b4
    move-result-object v82

    #@4b5
    .line 367
    .local v82, "args":[Ljava/lang/String;
    if-eqz v94, :cond_1a

    #@4b7
    .line 368
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@4ba
    move-result-object v5

    #@4bb
    move-object/from16 v0, p0

    #@4bd
    move-object/from16 v1, v121

    #@4bf
    move-object/from16 v2, v82

    #@4c1
    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    #@4c4
    .line 370
    :try_start_0
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c7
    .line 374
    :cond_1a
    :goto_18
    const/4 v5, 0x1

    #@4c8
    return v5

    #@4c9
    .line 371
    :catch_0
    move-exception v91

    #@4ca
    .local v91, "e":Ljava/io/IOException;
    goto :goto_18

    #@4cb
    .line 378
    .end local v82    # "args":[Ljava/lang/String;
    .end local v91    # "e":Ljava/io/IOException;
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v121    # "service":Landroid/os/IBinder;
    :pswitch_1a
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@4ce
    move-object/from16 v0, p2

    #@4d0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d3
    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@4d6
    move-result-object v94

    #@4d7
    .line 380
    .restart local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4da
    move-result-object v121

    #@4db
    .line 381
    .restart local v121    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@4de
    move-result-object v82

    #@4df
    .line 382
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v94, :cond_1b

    #@4e1
    .line 383
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@4e4
    move-result-object v5

    #@4e5
    move-object/from16 v0, p0

    #@4e7
    move-object/from16 v1, v121

    #@4e9
    move-object/from16 v2, v82

    #@4eb
    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    #@4ee
    .line 385
    :try_start_1
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@4f1
    .line 389
    :cond_1b
    :goto_19
    const/4 v5, 0x1

    #@4f2
    return v5

    #@4f3
    .line 386
    :catch_1
    move-exception v91

    #@4f4
    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_19

    #@4f5
    .line 393
    .end local v82    # "args":[Ljava/lang/String;
    .end local v91    # "e":Ljava/io/IOException;
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v121    # "service":Landroid/os/IBinder;
    :pswitch_1b
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@4f8
    move-object/from16 v0, p2

    #@4fa
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4fd
    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@500
    move-result-object v5

    #@501
    .line 394
    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    #@504
    move-result-object v67

    #@505
    .line 396
    .local v67, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@507
    move-object/from16 v0, p2

    #@509
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@50c
    move-result-object v12

    #@50d
    check-cast v12, Landroid/content/Intent;

    #@50f
    .line 397
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@512
    move-result v42

    #@513
    .line 398
    .restart local v42    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@516
    move-result-object v70

    #@517
    .line 399
    .local v70, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@51a
    move-result-object v71

    #@51b
    .line 400
    .local v71, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51e
    move-result v5

    #@51f
    if-eqz v5, :cond_1c

    #@521
    const/16 v72, 0x1

    #@523
    .line 401
    .local v72, "ordered":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@526
    move-result v5

    #@527
    if-eqz v5, :cond_1d

    #@529
    const/16 v73, 0x1

    #@52b
    .line 402
    .local v73, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@52e
    move-result v46

    #@52f
    .line 403
    .restart local v46    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@532
    move-result v47

    #@533
    .restart local v47    # "processState":I
    move-object/from16 v66, p0

    #@535
    move-object/from16 v68, v12

    #@537
    move/from16 v69, v42

    #@539
    move/from16 v74, v46

    #@53b
    move/from16 v75, v47

    #@53d
    .line 404
    invoke-virtual/range {v66 .. v75}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    #@540
    .line 406
    const/4 v5, 0x1

    #@541
    return v5

    #@542
    .line 400
    .end local v46    # "sendingUser":I
    .end local v47    # "processState":I
    .end local v72    # "ordered":Z
    .end local v73    # "sticky":Z
    :cond_1c
    const/16 v72, 0x0

    #@544
    .restart local v72    # "ordered":Z
    goto :goto_1a

    #@545
    .line 401
    :cond_1d
    const/16 v73, 0x0

    #@547
    .restart local v73    # "sticky":Z
    goto :goto_1b

    #@548
    .line 411
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v42    # "resultCode":I
    .end local v67    # "receiver":Landroid/content/IIntentReceiver;
    .end local v70    # "dataStr":Ljava/lang/String;
    .end local v71    # "extras":Landroid/os/Bundle;
    .end local v72    # "ordered":Z
    .end local v73    # "sticky":Z
    :pswitch_1c
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@54b
    move-object/from16 v0, p2

    #@54d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@550
    .line 412
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    #@553
    .line 413
    const/4 v5, 0x1

    #@554
    return v5

    #@555
    .line 418
    :pswitch_1d
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@558
    move-object/from16 v0, p2

    #@55a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55d
    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@560
    move-result-object v6

    #@561
    .line 420
    .restart local v6    # "b":Landroid/os/IBinder;
    const/16 v17, 0x0

    #@563
    .line 421
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@566
    move-result v5

    #@567
    if-eqz v5, :cond_1e

    #@569
    .line 422
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@56b
    move-object/from16 v0, p2

    #@56d
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@570
    move-result-object v17

    #@571
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    #@573
    .line 424
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@576
    move-result v5

    #@577
    const/4 v11, 0x1

    #@578
    if-ne v5, v11, :cond_1f

    #@57a
    const/16 v117, 0x1

    #@57c
    .line 425
    .local v117, "reportToActivity":Z
    :goto_1c
    move-object/from16 v0, p0

    #@57e
    move-object/from16 v1, v17

    #@580
    move/from16 v2, v117

    #@582
    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    #@585
    .line 426
    const/4 v5, 0x1

    #@586
    return v5

    #@587
    .line 424
    .end local v117    # "reportToActivity":Z
    :cond_1f
    const/16 v117, 0x0

    #@589
    goto :goto_1c

    #@58a
    .line 431
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_1e
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@58d
    move-object/from16 v0, p2

    #@58f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@592
    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@595
    move-result-object v30

    #@596
    .line 434
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@599
    move-result-object v5

    #@59a
    .line 433
    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    #@59d
    move-result-object v20

    #@59e
    .line 435
    .restart local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    move-object/from16 v0, p0

    #@5a0
    move-object/from16 v1, v30

    #@5a2
    move-object/from16 v2, v20

    #@5a4
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    #@5a7
    .line 436
    const/4 v5, 0x1

    #@5a8
    return v5

    #@5a9
    .line 441
    .end local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_1f
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@5ac
    move-object/from16 v0, p2

    #@5ae
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b1
    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5b4
    move-result v5

    #@5b5
    if-eqz v5, :cond_20

    #@5b7
    const/16 v126, 0x1

    #@5b9
    .line 443
    .local v126, "start":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5bc
    move-result v112

    #@5bd
    .line 444
    .local v112, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c0
    move-result v5

    #@5c1
    if-eqz v5, :cond_21

    #@5c3
    .line 445
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5c5
    move-object/from16 v0, p2

    #@5c7
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5ca
    move-result-object v5

    #@5cb
    check-cast v5, Landroid/app/ProfilerInfo;

    #@5cd
    move-object/from16 v28, v5

    #@5cf
    .line 446
    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1e
    move-object/from16 v0, p0

    #@5d1
    move/from16 v1, v126

    #@5d3
    move-object/from16 v2, v28

    #@5d5
    move/from16 v3, v112

    #@5d7
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    #@5da
    .line 447
    const/4 v5, 0x1

    #@5db
    return v5

    #@5dc
    .line 442
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v112    # "profileType":I
    .end local v126    # "start":Z
    :cond_20
    const/16 v126, 0x0

    #@5de
    .restart local v126    # "start":Z
    goto :goto_1d

    #@5df
    .line 445
    .restart local v112    # "profileType":I
    :cond_21
    const/16 v28, 0x0

    #@5e1
    goto :goto_1e

    #@5e2
    .line 452
    .end local v112    # "profileType":I
    .end local v126    # "start":Z
    :pswitch_20
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@5e5
    move-object/from16 v0, p2

    #@5e7
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5ea
    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ed
    move-result v97

    #@5ee
    .line 454
    .local v97, "group":I
    move-object/from16 v0, p0

    #@5f0
    move/from16 v1, v97

    #@5f2
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    #@5f5
    .line 455
    const/4 v5, 0x1

    #@5f6
    return v5

    #@5f7
    .line 460
    .end local v97    # "group":I
    :pswitch_21
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@5fa
    move-object/from16 v0, p2

    #@5fc
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5ff
    .line 461
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@601
    move-object/from16 v0, p2

    #@603
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@606
    move-result-object v86

    #@607
    check-cast v86, Landroid/content/pm/ApplicationInfo;

    #@609
    .line 462
    .local v86, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@60b
    move-object/from16 v0, p2

    #@60d
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@610
    move-result-object v18

    #@611
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@613
    .line 463
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@616
    move-result v87

    #@617
    .line 464
    .local v87, "backupMode":I
    move-object/from16 v0, p0

    #@619
    move-object/from16 v1, v86

    #@61b
    move-object/from16 v2, v18

    #@61d
    move/from16 v3, v87

    #@61f
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    #@622
    .line 465
    const/4 v5, 0x1

    #@623
    return v5

    #@624
    .line 470
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v86    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v87    # "backupMode":I
    :pswitch_22
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@627
    move-object/from16 v0, p2

    #@629
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62c
    .line 471
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@62e
    move-object/from16 v0, p2

    #@630
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@633
    move-result-object v86

    #@634
    check-cast v86, Landroid/content/pm/ApplicationInfo;

    #@636
    .line 472
    .restart local v86    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@638
    move-object/from16 v0, p2

    #@63a
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@63d
    move-result-object v18

    #@63e
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@640
    .line 473
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    #@642
    move-object/from16 v1, v86

    #@644
    move-object/from16 v2, v18

    #@646
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    #@649
    .line 474
    const/4 v5, 0x1

    #@64a
    return v5

    #@64b
    .line 479
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v86    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :pswitch_23
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@64e
    move-object/from16 v0, p2

    #@650
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@653
    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@656
    move-result v89

    #@657
    .line 481
    .local v89, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@65a
    move-result-object v107

    #@65b
    .line 482
    .local v107, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@65d
    move/from16 v1, v89

    #@65f
    move-object/from16 v2, v107

    #@661
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    #@664
    .line 483
    const/4 v5, 0x1

    #@665
    return v5

    #@666
    .line 488
    .end local v89    # "cmd":I
    .end local v107    # "packages":[Ljava/lang/String;
    :pswitch_24
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@669
    move-object/from16 v0, p2

    #@66b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66e
    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@671
    move-result-object v104

    #@672
    .line 490
    .local v104, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@674
    move-object/from16 v1, v104

    #@676
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    #@679
    .line 491
    const/4 v5, 0x1

    #@67a
    return v5

    #@67b
    .line 496
    .end local v104    # "msg":Ljava/lang/String;
    :pswitch_25
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@67e
    move-object/from16 v0, p2

    #@680
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@683
    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@686
    move-result v5

    #@687
    if-eqz v5, :cond_22

    #@689
    const/16 v103, 0x1

    #@68b
    .line 498
    .local v103, "managed":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@68e
    move-result-object v108

    #@68f
    .line 499
    .local v108, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@692
    move-result v5

    #@693
    if-eqz v5, :cond_23

    #@695
    .line 500
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@697
    move-object/from16 v0, p2

    #@699
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@69c
    move-result-object v5

    #@69d
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    #@69f
    move-object/from16 v94, v5

    #@6a1
    .line 501
    .restart local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_20
    move-object/from16 v0, p0

    #@6a3
    move/from16 v1, v103

    #@6a5
    move-object/from16 v2, v108

    #@6a7
    move-object/from16 v3, v94

    #@6a9
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    #@6ac
    .line 502
    const/4 v5, 0x1

    #@6ad
    return v5

    #@6ae
    .line 497
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v103    # "managed":Z
    .end local v108    # "path":Ljava/lang/String;
    :cond_22
    const/16 v103, 0x0

    #@6b0
    .restart local v103    # "managed":Z
    goto :goto_1f

    #@6b1
    .line 500
    .restart local v108    # "path":Ljava/lang/String;
    :cond_23
    const/16 v94, 0x0

    #@6b3
    goto :goto_20

    #@6b4
    .line 506
    .end local v103    # "managed":Z
    .end local v108    # "path":Ljava/lang/String;
    :pswitch_26
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@6b7
    move-object/from16 v0, p2

    #@6b9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6bc
    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@6bf
    move-result-object v94

    #@6c0
    .line 508
    .restart local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6c3
    move-result-object v83

    #@6c4
    .line 509
    .local v83, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6c7
    move-result-object v111

    #@6c8
    .line 510
    .local v111, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@6cb
    move-result-object v82

    #@6cc
    .line 511
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v94, :cond_24

    #@6ce
    .line 512
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@6d1
    move-result-object v5

    #@6d2
    move-object/from16 v0, p0

    #@6d4
    move-object/from16 v1, v83

    #@6d6
    move-object/from16 v2, v111

    #@6d8
    move-object/from16 v3, v82

    #@6da
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    #@6dd
    .line 514
    :try_start_2
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@6e0
    .line 518
    :cond_24
    :goto_21
    const/4 v5, 0x1

    #@6e1
    return v5

    #@6e2
    .line 515
    :catch_2
    move-exception v91

    #@6e3
    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_21

    #@6e4
    .line 522
    .end local v82    # "args":[Ljava/lang/String;
    .end local v83    # "activity":Landroid/os/IBinder;
    .end local v91    # "e":Ljava/io/IOException;
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v111    # "prefix":Ljava/lang/String;
    :pswitch_27
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@6e7
    move-object/from16 v0, p2

    #@6e9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ec
    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@6ef
    move-result-object v123

    #@6f0
    .line 524
    .local v123, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@6f2
    move-object/from16 v1, v123

    #@6f4
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    #@6f7
    .line 525
    const/4 v5, 0x1

    #@6f8
    return v5

    #@6f9
    .line 529
    .end local v123    # "settings":Landroid/os/Bundle;
    :pswitch_28
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@6fc
    move-object/from16 v0, p2

    #@6fe
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@701
    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@704
    move-result-object v109

    #@705
    .line 531
    .local v109, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@707
    move-object/from16 v0, p2

    #@709
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@70c
    move-result-object v90

    #@70d
    check-cast v90, Landroid/content/res/CompatibilityInfo;

    #@70f
    .line 532
    .local v90, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    #@711
    move-object/from16 v1, v109

    #@713
    move-object/from16 v2, v90

    #@715
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    #@718
    .line 533
    const/4 v5, 0x1

    #@719
    return v5

    #@71a
    .line 537
    .end local v90    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v109    # "pkg":Ljava/lang/String;
    :pswitch_29
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@71d
    move-object/from16 v0, p2

    #@71f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@722
    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@725
    move-result v102

    #@726
    .line 539
    .local v102, "level":I
    move-object/from16 v0, p0

    #@728
    move/from16 v1, v102

    #@72a
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    #@72d
    .line 540
    const/4 v5, 0x1

    #@72e
    return v5

    #@72f
    .line 545
    .end local v102    # "level":I
    :pswitch_2a
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@732
    move-object/from16 v0, p2

    #@734
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@737
    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@73a
    move-result-object v94

    #@73b
    .line 547
    .restart local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@73d
    move-object/from16 v0, p2

    #@73f
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@742
    move-result-object v76

    #@743
    check-cast v76, Landroid/os/Debug$MemoryInfo;

    #@745
    .line 548
    .local v76, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@748
    move-result v5

    #@749
    if-eqz v5, :cond_26

    #@74b
    const/16 v77, 0x1

    #@74d
    .line 549
    .local v77, "checkin":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@750
    move-result v5

    #@751
    if-eqz v5, :cond_27

    #@753
    const/16 v78, 0x1

    #@755
    .line 550
    .local v78, "dumpInfo":Z
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@758
    move-result v5

    #@759
    if-eqz v5, :cond_28

    #@75b
    const/16 v79, 0x1

    #@75d
    .line 551
    .local v79, "dumpDalvik":Z
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@760
    move-result v5

    #@761
    if-eqz v5, :cond_29

    #@763
    const/16 v80, 0x1

    #@765
    .line 552
    .local v80, "dumpSummaryOnly":Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@768
    move-result v5

    #@769
    if-eqz v5, :cond_2a

    #@76b
    const/16 v81, 0x1

    #@76d
    .line 553
    .local v81, "dumpUnreachable":Z
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@770
    move-result-object v82

    #@771
    .line 554
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v94, :cond_25

    #@773
    .line 556
    :try_start_3
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@776
    move-result-object v75

    #@777
    move-object/from16 v74, p0

    #@779
    invoke-virtual/range {v74 .. v82}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@77c
    .line 560
    :try_start_4
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@77f
    .line 566
    :cond_25
    :goto_27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@782
    .line 567
    const/4 v5, 0x1

    #@783
    return v5

    #@784
    .line 548
    .end local v77    # "checkin":Z
    .end local v78    # "dumpInfo":Z
    .end local v79    # "dumpDalvik":Z
    .end local v80    # "dumpSummaryOnly":Z
    .end local v81    # "dumpUnreachable":Z
    .end local v82    # "args":[Ljava/lang/String;
    :cond_26
    const/16 v77, 0x0

    #@786
    .restart local v77    # "checkin":Z
    goto :goto_22

    #@787
    .line 549
    :cond_27
    const/16 v78, 0x0

    #@789
    .restart local v78    # "dumpInfo":Z
    goto :goto_23

    #@78a
    .line 550
    :cond_28
    const/16 v79, 0x0

    #@78c
    .restart local v79    # "dumpDalvik":Z
    goto :goto_24

    #@78d
    .line 551
    :cond_29
    const/16 v80, 0x0

    #@78f
    .restart local v80    # "dumpSummaryOnly":Z
    goto :goto_25

    #@790
    .line 552
    :cond_2a
    const/16 v81, 0x0

    #@792
    .restart local v81    # "dumpUnreachable":Z
    goto :goto_26

    #@793
    .line 561
    .restart local v82    # "args":[Ljava/lang/String;
    :catch_3
    move-exception v91

    #@794
    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_27

    #@795
    .line 558
    .end local v91    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@796
    .line 560
    :try_start_5
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@799
    .line 558
    :goto_28
    throw v5

    #@79a
    .line 561
    :catch_4
    move-exception v91

    #@79b
    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_28

    #@79c
    .line 572
    .end local v76    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v77    # "checkin":Z
    .end local v78    # "dumpInfo":Z
    .end local v79    # "dumpDalvik":Z
    .end local v80    # "dumpSummaryOnly":Z
    .end local v81    # "dumpUnreachable":Z
    .end local v82    # "args":[Ljava/lang/String;
    .end local v91    # "e":Ljava/io/IOException;
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2b
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@79f
    move-object/from16 v0, p2

    #@7a1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a4
    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@7a7
    move-result-object v94

    #@7a8
    .line 574
    .restart local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@7ab
    move-result-object v82

    #@7ac
    .line 575
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v94, :cond_2b

    #@7ae
    .line 577
    :try_start_6
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@7b1
    move-result-object v5

    #@7b2
    move-object/from16 v0, p0

    #@7b4
    move-object/from16 v1, v82

    #@7b6
    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@7b9
    .line 580
    :try_start_7
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@7bc
    .line 586
    :cond_2b
    :goto_29
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7bf
    .line 587
    const/4 v5, 0x1

    #@7c0
    return v5

    #@7c1
    .line 581
    :catch_5
    move-exception v91

    #@7c2
    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_29

    #@7c3
    .line 578
    .end local v91    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    #@7c4
    .line 580
    :try_start_8
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    #@7c7
    .line 578
    :goto_2a
    throw v5

    #@7c8
    .line 581
    :catch_6
    move-exception v91

    #@7c9
    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_2a

    #@7ca
    .line 592
    .end local v82    # "args":[Ljava/lang/String;
    .end local v91    # "e":Ljava/io/IOException;
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2c
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@7cd
    move-object/from16 v0, p2

    #@7cf
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7d2
    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@7d5
    move-result-object v94

    #@7d6
    .line 594
    .restart local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@7d9
    move-result-object v82

    #@7da
    .line 595
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v94, :cond_2c

    #@7dc
    .line 597
    :try_start_9
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@7df
    move-result-object v5

    #@7e0
    move-object/from16 v0, p0

    #@7e2
    move-object/from16 v1, v82

    #@7e4
    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@7e7
    .line 600
    :try_start_a
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    #@7ea
    .line 606
    :cond_2c
    :goto_2b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7ed
    .line 607
    const/4 v5, 0x1

    #@7ee
    return v5

    #@7ef
    .line 601
    :catch_7
    move-exception v91

    #@7f0
    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_2b

    #@7f1
    .line 598
    .end local v91    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    #@7f2
    .line 600
    :try_start_b
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    #@7f5
    .line 598
    :goto_2c
    throw v5

    #@7f6
    .line 601
    :catch_8
    move-exception v91

    #@7f7
    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_2c

    #@7f8
    .line 612
    .end local v82    # "args":[Ljava/lang/String;
    .end local v91    # "e":Ljava/io/IOException;
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2d
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@7fb
    move-object/from16 v0, p2

    #@7fd
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@800
    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@803
    move-result-object v114

    #@804
    .line 614
    .local v114, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@806
    move-object/from16 v1, v114

    #@808
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    #@80b
    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@80e
    .line 616
    const/4 v5, 0x1

    #@80f
    return v5

    #@810
    .line 621
    .end local v114    # "provider":Landroid/os/IBinder;
    :pswitch_2e
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@813
    move-object/from16 v0, p2

    #@815
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@818
    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@81b
    move-result-object v84

    #@81c
    .line 623
    .local v84, "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@81f
    move-result-object v118

    #@820
    .line 624
    .local v118, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@823
    move-result v119

    #@824
    .line 625
    .local v119, "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@827
    move-result v122

    #@828
    .line 626
    .local v122, "sessionId":I
    move-object/from16 v0, p0

    #@82a
    move-object/from16 v1, v84

    #@82c
    move-object/from16 v2, v118

    #@82e
    move/from16 v3, v119

    #@830
    move/from16 v4, v122

    #@832
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;II)V

    #@835
    .line 627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@838
    .line 628
    const/4 v5, 0x1

    #@839
    return v5

    #@83a
    .line 633
    .end local v84    # "activityToken":Landroid/os/IBinder;
    .end local v118    # "requestToken":Landroid/os/IBinder;
    .end local v119    # "requestType":I
    .end local v122    # "sessionId":I
    :pswitch_2f
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@83d
    move-object/from16 v0, p2

    #@83f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@842
    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@845
    move-result-object v30

    #@846
    .line 635
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@849
    move-result v5

    #@84a
    const/4 v11, 0x1

    #@84b
    if-ne v5, v11, :cond_2d

    #@84d
    const/16 v128, 0x1

    #@84f
    .line 636
    .local v128, "timeout":Z
    :goto_2d
    move-object/from16 v0, p0

    #@851
    move-object/from16 v1, v30

    #@853
    move/from16 v2, v128

    #@855
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    #@858
    .line 637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@85b
    .line 638
    const/4 v5, 0x1

    #@85c
    return v5

    #@85d
    .line 635
    .end local v128    # "timeout":Z
    :cond_2d
    const/16 v128, 0x0

    #@85f
    goto :goto_2d

    #@860
    .line 643
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_30
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@863
    move-object/from16 v0, p2

    #@865
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@868
    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@86b
    move-result-object v30

    #@86c
    .line 645
    .restart local v30    # "token":Landroid/os/IBinder;
    new-instance v105, Landroid/app/ActivityOptions;

    #@86e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@871
    move-result-object v5

    #@872
    move-object/from16 v0, v105

    #@874
    invoke-direct {v0, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    #@877
    .line 646
    .local v105, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    #@879
    move-object/from16 v1, v30

    #@87b
    move-object/from16 v2, v105

    #@87d
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    #@880
    .line 647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@883
    .line 648
    const/4 v5, 0x1

    #@884
    return v5

    #@885
    .line 653
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v105    # "options":Landroid/app/ActivityOptions;
    :pswitch_31
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@888
    move-object/from16 v0, p2

    #@88a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88d
    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@890
    move-result v127

    #@891
    .line 655
    .local v127, "state":I
    move-object/from16 v0, p0

    #@893
    move/from16 v1, v127

    #@895
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    #@898
    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@89b
    .line 657
    const/4 v5, 0x1

    #@89c
    return v5

    #@89d
    .line 662
    .end local v127    # "state":I
    :pswitch_32
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@8a0
    move-object/from16 v0, p2

    #@8a2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8a5
    .line 663
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8a7
    move-object/from16 v0, p2

    #@8a9
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8ac
    move-result-object v113

    #@8ad
    check-cast v113, Landroid/content/pm/ProviderInfo;

    #@8af
    .line 664
    .local v113, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    #@8b1
    move-object/from16 v1, v113

    #@8b3
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    #@8b6
    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8b9
    .line 666
    const/4 v5, 0x1

    #@8ba
    return v5

    #@8bb
    .line 671
    .end local v113    # "provider":Landroid/content/pm/ProviderInfo;
    :pswitch_33
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@8be
    move-object/from16 v0, p2

    #@8c0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c3
    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    #@8c6
    move-result v101

    #@8c7
    .line 673
    .local v101, "is24Hour":B
    const/4 v5, 0x1

    #@8c8
    move/from16 v0, v101

    #@8ca
    if-ne v0, v5, :cond_2e

    #@8cc
    const/4 v5, 0x1

    #@8cd
    :goto_2e
    move-object/from16 v0, p0

    #@8cf
    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->updateTimePrefs(Z)V

    #@8d2
    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8d5
    .line 675
    const/4 v5, 0x1

    #@8d6
    return v5

    #@8d7
    .line 673
    :cond_2e
    const/4 v5, 0x0

    #@8d8
    goto :goto_2e

    #@8d9
    .line 680
    .end local v101    # "is24Hour":B
    :pswitch_34
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@8dc
    move-object/from16 v0, p2

    #@8de
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e1
    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8e4
    move-result-object v30

    #@8e5
    .line 682
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@8e7
    move-object/from16 v1, v30

    #@8e9
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    #@8ec
    .line 683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ef
    .line 684
    const/4 v5, 0x1

    #@8f0
    return v5

    #@8f1
    .line 689
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_35
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@8f4
    move-object/from16 v0, p2

    #@8f6
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8f9
    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8fc
    move-result-object v30

    #@8fd
    .line 691
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@900
    move-result v5

    #@901
    if-lez v5, :cond_2f

    #@903
    const/16 v92, 0x1

    #@905
    .line 692
    .local v92, "enabled":Z
    :goto_2f
    move-object/from16 v0, p0

    #@907
    move-object/from16 v1, v30

    #@909
    move/from16 v2, v92

    #@90b
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    #@90e
    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@911
    .line 694
    const/4 v5, 0x1

    #@912
    return v5

    #@913
    .line 691
    .end local v92    # "enabled":Z
    :cond_2f
    const/16 v92, 0x0

    #@915
    goto :goto_2f

    #@916
    .line 699
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_36
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@919
    move-object/from16 v0, p2

    #@91b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@91e
    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@921
    move-result-object v30

    #@922
    .line 701
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@924
    move-object/from16 v1, v30

    #@926
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    #@929
    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@92c
    .line 703
    const/4 v5, 0x1

    #@92d
    return v5

    #@92e
    .line 708
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_37
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@931
    move-object/from16 v0, p2

    #@933
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@936
    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@939
    move-result-object v96

    #@93a
    .line 710
    .local v96, "firstPacket":[B
    move-object/from16 v0, p0

    #@93c
    move-object/from16 v1, v96

    #@93e
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->notifyCleartextNetwork([B)V

    #@941
    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@944
    .line 712
    const/4 v5, 0x1

    #@945
    return v5

    #@946
    .line 717
    .end local v96    # "firstPacket":[B
    :pswitch_38
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@949
    move-object/from16 v0, p2

    #@94b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@94e
    .line 718
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->startBinderTracking()V

    #@951
    .line 719
    const/4 v5, 0x1

    #@952
    return v5

    #@953
    .line 724
    :pswitch_39
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@956
    move-object/from16 v0, p2

    #@958
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@95b
    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@95e
    move-result-object v94

    #@95f
    .line 726
    .restart local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v94, :cond_30

    #@961
    .line 727
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@964
    move-result-object v5

    #@965
    move-object/from16 v0, p0

    #@967
    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->stopBinderTrackingAndDump(Ljava/io/FileDescriptor;)V

    #@96a
    .line 729
    :try_start_c
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    #@96d
    .line 733
    :cond_30
    :goto_30
    const/4 v5, 0x1

    #@96e
    return v5

    #@96f
    .line 730
    :catch_9
    move-exception v91

    #@970
    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_30

    #@971
    .line 738
    .end local v91    # "e":Ljava/io/IOException;
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_3a
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@974
    move-object/from16 v0, p2

    #@976
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@979
    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@97c
    move-result-object v6

    #@97d
    .line 740
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@980
    move-result v5

    #@981
    if-eqz v5, :cond_31

    #@983
    const/16 v98, 0x1

    #@985
    .line 741
    .local v98, "inMultiWindow":Z
    :goto_31
    move-object/from16 v0, p0

    #@987
    move/from16 v1, v98

    #@989
    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleMultiWindowModeChanged(Landroid/os/IBinder;Z)V

    #@98c
    .line 742
    const/4 v5, 0x1

    #@98d
    return v5

    #@98e
    .line 740
    .end local v98    # "inMultiWindow":Z
    :cond_31
    const/16 v98, 0x0

    #@990
    goto :goto_31

    #@991
    .line 747
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_3b
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@994
    move-object/from16 v0, p2

    #@996
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@999
    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@99c
    move-result-object v6

    #@99d
    .line 749
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9a0
    move-result v5

    #@9a1
    if-eqz v5, :cond_32

    #@9a3
    const/16 v99, 0x1

    #@9a5
    .line 750
    .local v99, "inPip":Z
    :goto_32
    move-object/from16 v0, p0

    #@9a7
    move/from16 v1, v99

    #@9a9
    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->schedulePictureInPictureModeChanged(Landroid/os/IBinder;Z)V

    #@9ac
    .line 751
    const/4 v5, 0x1

    #@9ad
    return v5

    #@9ae
    .line 749
    .end local v99    # "inPip":Z
    :cond_32
    const/16 v99, 0x0

    #@9b0
    goto :goto_32

    #@9b1
    .line 77
    nop

    #@9b2
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
