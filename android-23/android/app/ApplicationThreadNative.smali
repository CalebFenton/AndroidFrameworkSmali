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
    .line 703
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 120
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
    .line 698
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
    .restart local v10    # "dontReport":Z
    goto :goto_2

    #@3a
    .line 92
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    .end local v10    # "dontReport":Z
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
    const/16 v115, 0x1

    #@4e
    .line 95
    .local v115, "show":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v9

    #@52
    .line 96
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    #@54
    move/from16 v1, v115

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
    .end local v115    # "show":Z
    :cond_3
    const/16 v115, 0x0

    #@5d
    .restart local v115    # "show":Z
    goto :goto_3

    #@5e
    .line 102
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v115    # "show":Z
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
    const/16 v115, 0x1

    #@72
    .line 105
    .restart local v115    # "show":Z
    :goto_4
    move-object/from16 v0, p0

    #@74
    move/from16 v1, v115

    #@76
    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    #@79
    .line 106
    const/4 v5, 0x1

    #@7a
    return v5

    #@7b
    .line 104
    .end local v115    # "show":Z
    :cond_4
    const/16 v115, 0x0

    #@7d
    .restart local v115    # "show":Z
    goto :goto_4

    #@7e
    .line 111
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v115    # "show":Z
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
    const/16 v116, 0x1

    #@92
    .line 114
    .local v116, "sleeping":Z
    :goto_5
    move-object/from16 v0, p0

    #@94
    move/from16 v1, v116

    #@96
    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    #@99
    .line 115
    const/4 v5, 0x1

    #@9a
    return v5

    #@9b
    .line 113
    .end local v116    # "sleeping":Z
    :cond_5
    const/16 v116, 0x0

    #@9d
    .restart local v116    # "sleeping":Z
    goto :goto_5

    #@9e
    .line 120
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v116    # "sleeping":Z
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
    move-result-object v112

    #@ba
    .line 125
    .local v112, "resumeArgs":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@bc
    move/from16 v1, v21

    #@be
    move/from16 v2, v27

    #@c0
    move-object/from16 v3, v112

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
    .end local v112    # "resumeArgs":Landroid/os/Bundle;
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
    move-result-object v28

    #@177
    check-cast v28, Landroid/app/ProfilerInfo;

    #@179
    :goto_9
    move-object/from16 v11, p0

    #@17b
    move-object v13, v6

    #@17c
    .line 163
    invoke-virtual/range {v11 .. v28}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    #@17f
    .line 166
    const/4 v5, 0x1

    #@180
    return v5

    #@181
    .line 159
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    :cond_8
    const/16 v26, 0x0

    #@183
    .restart local v26    # "notResumed":Z
    goto :goto_7

    #@184
    .line 160
    :cond_9
    const/16 v27, 0x0

    #@186
    .restart local v27    # "isForward":Z
    goto :goto_8

    #@187
    .line 162
    :cond_a
    const/16 v28, 0x0

    #@189
    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_9

    #@18a
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
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    :pswitch_8
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@18d
    move-object/from16 v0, p2

    #@18f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@192
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@195
    move-result-object v6

    #@196
    .line 173
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@198
    move-object/from16 v0, p2

    #@19a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@19d
    move-result-object v24

    #@19e
    .line 174
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a0
    move-object/from16 v0, p2

    #@1a2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@1a5
    move-result-object v25

    #@1a6
    .line 175
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a9
    move-result v9

    #@1aa
    .line 176
    .restart local v9    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ad
    move-result v5

    #@1ae
    if-eqz v5, :cond_c

    #@1b0
    const/16 v26, 0x1

    #@1b2
    .line 177
    .restart local v26    # "notResumed":Z
    :goto_a
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b4
    move-object/from16 v0, p2

    #@1b6
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b9
    move-result-object v35

    #@1ba
    check-cast v35, Landroid/content/res/Configuration;

    #@1bc
    .line 178
    .local v35, "config":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    #@1be
    .line 179
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c1
    move-result v5

    #@1c2
    if-eqz v5, :cond_b

    #@1c4
    .line 180
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c6
    move-object/from16 v0, p2

    #@1c8
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1cb
    move-result-object v17

    #@1cc
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    #@1ce
    :cond_b
    move-object/from16 v29, p0

    #@1d0
    move-object/from16 v30, v6

    #@1d2
    move-object/from16 v31, v24

    #@1d4
    move-object/from16 v32, v25

    #@1d6
    move/from16 v33, v9

    #@1d8
    move/from16 v34, v26

    #@1da
    move-object/from16 v36, v17

    #@1dc
    .line 182
    invoke-virtual/range {v29 .. v36}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    #@1df
    .line 183
    const/4 v5, 0x1

    #@1e0
    return v5

    #@1e1
    .line 176
    .end local v26    # "notResumed":Z
    .end local v35    # "config":Landroid/content/res/Configuration;
    :cond_c
    const/16 v26, 0x0

    #@1e3
    .restart local v26    # "notResumed":Z
    goto :goto_a

    #@1e4
    .line 188
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v9    # "configChanges":I
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v26    # "notResumed":Z
    :pswitch_9
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@1e7
    move-object/from16 v0, p2

    #@1e9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ec
    .line 189
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ee
    move-object/from16 v0, p2

    #@1f0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@1f3
    move-result-object v25

    #@1f4
    .line 190
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f7
    move-result-object v6

    #@1f8
    .line 191
    .restart local v6    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1fa
    move-object/from16 v1, v25

    #@1fc
    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    #@1ff
    .line 192
    const/4 v5, 0x1

    #@200
    return v5

    #@201
    .line 197
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :pswitch_a
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@204
    move-object/from16 v0, p2

    #@206
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@209
    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@20c
    move-result-object v6

    #@20d
    .line 199
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@210
    move-result v5

    #@211
    if-eqz v5, :cond_d

    #@213
    const/16 v90, 0x1

    #@215
    .line 200
    .local v90, "finishing":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@218
    move-result v9

    #@219
    .line 201
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    #@21b
    move/from16 v1, v90

    #@21d
    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    #@220
    .line 202
    const/4 v5, 0x1

    #@221
    return v5

    #@222
    .line 199
    .end local v9    # "configChanges":I
    .end local v90    # "finishing":Z
    :cond_d
    const/16 v90, 0x0

    #@224
    .restart local v90    # "finishing":Z
    goto :goto_b

    #@225
    .line 207
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v90    # "finishing":Z
    :pswitch_b
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@228
    move-object/from16 v0, p2

    #@22a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22d
    .line 208
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22f
    move-object/from16 v0, p2

    #@231
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@234
    move-result-object v12

    #@235
    check-cast v12, Landroid/content/Intent;

    #@237
    .line 209
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@239
    move-object/from16 v0, p2

    #@23b
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23e
    move-result-object v15

    #@23f
    check-cast v15, Landroid/content/pm/ActivityInfo;

    #@241
    .line 210
    .restart local v15    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@243
    move-object/from16 v0, p2

    #@245
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@248
    move-result-object v18

    #@249
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@24b
    .line 211
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24e
    move-result v40

    #@24f
    .line 212
    .local v40, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@252
    move-result-object v41

    #@253
    .line 213
    .local v41, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@256
    move-result-object v42

    #@257
    .line 214
    .local v42, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25a
    move-result v5

    #@25b
    if-eqz v5, :cond_e

    #@25d
    const/16 v43, 0x1

    #@25f
    .line 215
    .local v43, "sync":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@262
    move-result v44

    #@263
    .line 216
    .local v44, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@266
    move-result v45

    #@267
    .local v45, "processState":I
    move-object/from16 v36, p0

    #@269
    move-object/from16 v37, v12

    #@26b
    move-object/from16 v38, v15

    #@26d
    move-object/from16 v39, v18

    #@26f
    .line 217
    invoke-virtual/range {v36 .. v45}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    #@272
    .line 219
    const/4 v5, 0x1

    #@273
    return v5

    #@274
    .line 214
    .end local v43    # "sync":Z
    .end local v44    # "sendingUser":I
    .end local v45    # "processState":I
    :cond_e
    const/16 v43, 0x0

    #@276
    .restart local v43    # "sync":Z
    goto :goto_c

    #@277
    .line 223
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v40    # "resultCode":I
    .end local v41    # "resultData":Ljava/lang/String;
    .end local v42    # "resultExtras":Landroid/os/Bundle;
    .end local v43    # "sync":Z
    :pswitch_c
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@27a
    move-object/from16 v0, p2

    #@27c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27f
    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@282
    move-result-object v30

    #@283
    .line 225
    .local v30, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@285
    move-object/from16 v0, p2

    #@287
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28a
    move-result-object v93

    #@28b
    check-cast v93, Landroid/content/pm/ServiceInfo;

    #@28d
    .line 226
    .local v93, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28f
    move-object/from16 v0, p2

    #@291
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@294
    move-result-object v18

    #@295
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@297
    .line 227
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29a
    move-result v45

    #@29b
    .line 228
    .restart local v45    # "processState":I
    move-object/from16 v0, p0

    #@29d
    move-object/from16 v1, v30

    #@29f
    move-object/from16 v2, v93

    #@2a1
    move-object/from16 v3, v18

    #@2a3
    move/from16 v4, v45

    #@2a5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    #@2a8
    .line 229
    const/4 v5, 0x1

    #@2a9
    return v5

    #@2aa
    .line 233
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v45    # "processState":I
    .end local v93    # "info":Landroid/content/pm/ServiceInfo;
    :pswitch_d
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@2ad
    move-object/from16 v0, p2

    #@2af
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b2
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b5
    move-result-object v30

    #@2b6
    .line 235
    .restart local v30    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b8
    move-object/from16 v0, p2

    #@2ba
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2bd
    move-result-object v12

    #@2be
    check-cast v12, Landroid/content/Intent;

    #@2c0
    .line 236
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c3
    move-result v5

    #@2c4
    if-eqz v5, :cond_f

    #@2c6
    const/16 v109, 0x1

    #@2c8
    .line 237
    .local v109, "rebind":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cb
    move-result v45

    #@2cc
    .line 238
    .restart local v45    # "processState":I
    move-object/from16 v0, p0

    #@2ce
    move-object/from16 v1, v30

    #@2d0
    move/from16 v2, v109

    #@2d2
    move/from16 v3, v45

    #@2d4
    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    #@2d7
    .line 239
    const/4 v5, 0x1

    #@2d8
    return v5

    #@2d9
    .line 236
    .end local v45    # "processState":I
    .end local v109    # "rebind":Z
    :cond_f
    const/16 v109, 0x0

    #@2db
    .restart local v109    # "rebind":Z
    goto :goto_d

    #@2dc
    .line 243
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v109    # "rebind":Z
    :pswitch_e
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@2df
    move-object/from16 v0, p2

    #@2e1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e4
    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e7
    move-result-object v30

    #@2e8
    .line 245
    .restart local v30    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2ea
    move-object/from16 v0, p2

    #@2ec
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2ef
    move-result-object v12

    #@2f0
    check-cast v12, Landroid/content/Intent;

    #@2f2
    .line 246
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@2f4
    move-object/from16 v1, v30

    #@2f6
    invoke-virtual {v0, v1, v12}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    #@2f9
    .line 247
    const/4 v5, 0x1

    #@2fa
    return v5

    #@2fb
    .line 252
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_f
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@2fe
    move-object/from16 v0, p2

    #@300
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@303
    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@306
    move-result-object v30

    #@307
    .line 254
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30a
    move-result v5

    #@30b
    if-eqz v5, :cond_10

    #@30d
    const/16 v31, 0x1

    #@30f
    .line 255
    .local v31, "taskRemoved":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@312
    move-result v32

    #@313
    .line 256
    .local v32, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@316
    move-result v33

    #@317
    .line 258
    .local v33, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31a
    move-result v5

    #@31b
    if-eqz v5, :cond_11

    #@31d
    .line 259
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31f
    move-object/from16 v0, p2

    #@321
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@324
    move-result-object v34

    #@325
    check-cast v34, Landroid/content/Intent;

    #@327
    :goto_f
    move-object/from16 v29, p0

    #@329
    .line 263
    invoke-virtual/range {v29 .. v34}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    #@32c
    .line 264
    const/4 v5, 0x1

    #@32d
    return v5

    #@32e
    .line 254
    .end local v31    # "taskRemoved":Z
    .end local v32    # "startId":I
    .end local v33    # "fl":I
    :cond_10
    const/16 v31, 0x0

    #@330
    .restart local v31    # "taskRemoved":Z
    goto :goto_e

    #@331
    .line 261
    .restart local v32    # "startId":I
    .restart local v33    # "fl":I
    :cond_11
    const/16 v34, 0x0

    #@333
    .local v34, "args":Landroid/content/Intent;
    goto :goto_f

    #@334
    .line 269
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v31    # "taskRemoved":Z
    .end local v32    # "startId":I
    .end local v33    # "fl":I
    .end local v34    # "args":Landroid/content/Intent;
    :pswitch_10
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@337
    move-object/from16 v0, p2

    #@339
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33c
    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@33f
    move-result-object v30

    #@340
    .line 271
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@342
    move-object/from16 v1, v30

    #@344
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    #@347
    .line 272
    const/4 v5, 0x1

    #@348
    return v5

    #@349
    .line 277
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_11
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@34c
    move-object/from16 v0, p2

    #@34e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@351
    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@354
    move-result-object v47

    #@355
    .line 280
    .local v47, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@357
    move-object/from16 v0, p2

    #@359
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@35c
    move-result-object v48

    #@35d
    check-cast v48, Landroid/content/pm/ApplicationInfo;

    #@35f
    .line 282
    .local v48, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@361
    move-object/from16 v0, p2

    #@363
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@366
    move-result-object v49

    #@367
    .line 283
    .local v49, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36a
    move-result v5

    #@36b
    if-eqz v5, :cond_12

    #@36d
    .line 284
    new-instance v50, Landroid/content/ComponentName;

    #@36f
    move-object/from16 v0, v50

    #@371
    move-object/from16 v1, p2

    #@373
    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    #@376
    .line 285
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@379
    move-result v5

    #@37a
    if-eqz v5, :cond_13

    #@37c
    .line 286
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@37e
    move-object/from16 v0, p2

    #@380
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@383
    move-result-object v28

    #@384
    check-cast v28, Landroid/app/ProfilerInfo;

    #@386
    .line 287
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@389
    move-result-object v52

    #@38a
    .line 288
    .local v52, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@38d
    move-result-object v83

    #@38e
    .line 289
    .local v83, "binder":Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    #@391
    move-result-object v53

    #@392
    .line 290
    .local v53, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@395
    move-result-object v83

    #@396
    .line 292
    invoke-static/range {v83 .. v83}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    #@399
    move-result-object v54

    #@39a
    .line 293
    .local v54, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39d
    move-result v55

    #@39e
    .line 294
    .local v55, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a1
    move-result v5

    #@3a2
    if-eqz v5, :cond_14

    #@3a4
    const/16 v56, 0x1

    #@3a6
    .line 295
    .local v56, "openGlTrace":Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a9
    move-result v5

    #@3aa
    if-eqz v5, :cond_15

    #@3ac
    const/16 v57, 0x1

    #@3ae
    .line 296
    .local v57, "restrictedBackupMode":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b1
    move-result v5

    #@3b2
    if-eqz v5, :cond_16

    #@3b4
    const/16 v58, 0x1

    #@3b6
    .line 297
    .local v58, "persistent":Z
    :goto_14
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b8
    move-object/from16 v0, p2

    #@3ba
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3bd
    move-result-object v35

    #@3be
    check-cast v35, Landroid/content/res/Configuration;

    #@3c0
    .line 298
    .restart local v35    # "config":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c2
    move-object/from16 v0, p2

    #@3c4
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c7
    move-result-object v18

    #@3c8
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@3ca
    .line 299
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    #@3cb
    move-object/from16 v0, p2

    #@3cd
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    #@3d0
    move-result-object v61

    #@3d1
    .line 300
    .local v61, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@3d4
    move-result-object v62

    #@3d5
    .local v62, "coreSettings":Landroid/os/Bundle;
    move-object/from16 v46, p0

    #@3d7
    move-object/from16 v51, v28

    #@3d9
    move-object/from16 v59, v35

    #@3db
    move-object/from16 v60, v18

    #@3dd
    .line 301
    invoke-virtual/range {v46 .. v62}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    #@3e0
    .line 304
    const/4 v5, 0x1

    #@3e1
    return v5

    #@3e2
    .line 284
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v35    # "config":Landroid/content/res/Configuration;
    .end local v52    # "testArgs":Landroid/os/Bundle;
    .end local v53    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v54    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v55    # "testMode":I
    .end local v56    # "openGlTrace":Z
    .end local v57    # "restrictedBackupMode":Z
    .end local v58    # "persistent":Z
    .end local v61    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v62    # "coreSettings":Landroid/os/Bundle;
    .end local v83    # "binder":Landroid/os/IBinder;
    :cond_12
    const/16 v50, 0x0

    #@3e4
    .local v50, "testName":Landroid/content/ComponentName;
    goto :goto_10

    #@3e5
    .line 286
    .end local v50    # "testName":Landroid/content/ComponentName;
    :cond_13
    const/16 v28, 0x0

    #@3e7
    .restart local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_11

    #@3e8
    .line 294
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v52    # "testArgs":Landroid/os/Bundle;
    .restart local v53    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v54    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v55    # "testMode":I
    .restart local v83    # "binder":Landroid/os/IBinder;
    :cond_14
    const/16 v56, 0x0

    #@3ea
    .restart local v56    # "openGlTrace":Z
    goto :goto_12

    #@3eb
    .line 295
    :cond_15
    const/16 v57, 0x0

    #@3ed
    .restart local v57    # "restrictedBackupMode":Z
    goto :goto_13

    #@3ee
    .line 296
    :cond_16
    const/16 v58, 0x0

    #@3f0
    .restart local v58    # "persistent":Z
    goto :goto_14

    #@3f1
    .line 309
    .end local v47    # "packageName":Ljava/lang/String;
    .end local v48    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v49    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v52    # "testArgs":Landroid/os/Bundle;
    .end local v53    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v54    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v55    # "testMode":I
    .end local v56    # "openGlTrace":Z
    .end local v57    # "restrictedBackupMode":Z
    .end local v58    # "persistent":Z
    .end local v83    # "binder":Landroid/os/IBinder;
    :pswitch_12
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@3f4
    move-object/from16 v0, p2

    #@3f6
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f9
    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    #@3fc
    .line 311
    const/4 v5, 0x1

    #@3fd
    return v5

    #@3fe
    .line 316
    :pswitch_13
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@401
    move-object/from16 v0, p2

    #@403
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@406
    .line 317
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    #@409
    .line 318
    const/4 v5, 0x1

    #@40a
    return v5

    #@40b
    .line 323
    :pswitch_14
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@40e
    move-object/from16 v0, p2

    #@410
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@413
    .line 324
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@415
    move-object/from16 v0, p2

    #@417
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41a
    move-result-object v35

    #@41b
    check-cast v35, Landroid/content/res/Configuration;

    #@41d
    .line 325
    .restart local v35    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    #@41f
    move-object/from16 v1, v35

    #@421
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    #@424
    .line 326
    const/4 v5, 0x1

    #@425
    return v5

    #@426
    .line 330
    .end local v35    # "config":Landroid/content/res/Configuration;
    :pswitch_15
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@429
    move-object/from16 v0, p2

    #@42b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42e
    .line 331
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    #@431
    .line 332
    const/4 v5, 0x1

    #@432
    return v5

    #@433
    .line 336
    :pswitch_16
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@436
    move-object/from16 v0, p2

    #@438
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43b
    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    #@43e
    .line 338
    const/4 v5, 0x1

    #@43f
    return v5

    #@440
    .line 342
    :pswitch_17
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@443
    move-object/from16 v0, p2

    #@445
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@448
    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@44b
    move-result-object v108

    #@44c
    .line 344
    .local v108, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@44f
    move-result-object v103

    #@450
    .line 345
    .local v103, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@453
    move-result-object v88

    #@454
    .line 346
    .local v88, "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@456
    move-object/from16 v0, p2

    #@458
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@45b
    move-result-object v99

    #@45c
    check-cast v99, Landroid/net/Uri;

    #@45e
    .line 347
    .local v99, "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@460
    move-object/from16 v1, v108

    #@462
    move-object/from16 v2, v103

    #@464
    move-object/from16 v3, v88

    #@466
    move-object/from16 v4, v99

    #@468
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    #@46b
    .line 348
    const/4 v5, 0x1

    #@46c
    return v5

    #@46d
    .line 352
    .end local v88    # "exclList":Ljava/lang/String;
    .end local v99    # "pacFileUrl":Landroid/net/Uri;
    .end local v103    # "port":Ljava/lang/String;
    .end local v108    # "proxy":Ljava/lang/String;
    :pswitch_18
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@470
    move-object/from16 v0, p2

    #@472
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@475
    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    #@478
    .line 354
    const/4 v5, 0x1

    #@479
    return v5

    #@47a
    .line 358
    :pswitch_19
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@47d
    move-object/from16 v0, p2

    #@47f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@482
    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@485
    move-result-object v89

    #@486
    .line 360
    .local v89, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@489
    move-result-object v113

    #@48a
    .line 361
    .local v113, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@48d
    move-result-object v78

    #@48e
    .line 362
    .local v78, "args":[Ljava/lang/String;
    if-eqz v89, :cond_17

    #@490
    .line 363
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@493
    move-result-object v5

    #@494
    move-object/from16 v0, p0

    #@496
    move-object/from16 v1, v113

    #@498
    move-object/from16 v2, v78

    #@49a
    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    #@49d
    .line 365
    :try_start_0
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a0
    .line 369
    :cond_17
    :goto_15
    const/4 v5, 0x1

    #@4a1
    return v5

    #@4a2
    .line 366
    :catch_0
    move-exception v86

    #@4a3
    .local v86, "e":Ljava/io/IOException;
    goto :goto_15

    #@4a4
    .line 373
    .end local v78    # "args":[Ljava/lang/String;
    .end local v86    # "e":Ljava/io/IOException;
    .end local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v113    # "service":Landroid/os/IBinder;
    :pswitch_1a
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@4a7
    move-object/from16 v0, p2

    #@4a9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ac
    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@4af
    move-result-object v89

    #@4b0
    .line 375
    .restart local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4b3
    move-result-object v113

    #@4b4
    .line 376
    .restart local v113    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@4b7
    move-result-object v78

    #@4b8
    .line 377
    .restart local v78    # "args":[Ljava/lang/String;
    if-eqz v89, :cond_18

    #@4ba
    .line 378
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@4bd
    move-result-object v5

    #@4be
    move-object/from16 v0, p0

    #@4c0
    move-object/from16 v1, v113

    #@4c2
    move-object/from16 v2, v78

    #@4c4
    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    #@4c7
    .line 380
    :try_start_1
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@4ca
    .line 384
    :cond_18
    :goto_16
    const/4 v5, 0x1

    #@4cb
    return v5

    #@4cc
    .line 381
    :catch_1
    move-exception v86

    #@4cd
    .restart local v86    # "e":Ljava/io/IOException;
    goto :goto_16

    #@4ce
    .line 388
    .end local v78    # "args":[Ljava/lang/String;
    .end local v86    # "e":Ljava/io/IOException;
    .end local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v113    # "service":Landroid/os/IBinder;
    :pswitch_1b
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@4d1
    move-object/from16 v0, p2

    #@4d3
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d6
    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4d9
    move-result-object v5

    #@4da
    .line 389
    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    #@4dd
    move-result-object v64

    #@4de
    .line 391
    .local v64, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e0
    move-object/from16 v0, p2

    #@4e2
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4e5
    move-result-object v12

    #@4e6
    check-cast v12, Landroid/content/Intent;

    #@4e8
    .line 392
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4eb
    move-result v40

    #@4ec
    .line 393
    .restart local v40    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4ef
    move-result-object v67

    #@4f0
    .line 394
    .local v67, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@4f3
    move-result-object v68

    #@4f4
    .line 395
    .local v68, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f7
    move-result v5

    #@4f8
    if-eqz v5, :cond_19

    #@4fa
    const/16 v69, 0x1

    #@4fc
    .line 396
    .local v69, "ordered":Z
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4ff
    move-result v5

    #@500
    if-eqz v5, :cond_1a

    #@502
    const/16 v70, 0x1

    #@504
    .line 397
    .local v70, "sticky":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@507
    move-result v44

    #@508
    .line 398
    .restart local v44    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@50b
    move-result v45

    #@50c
    .restart local v45    # "processState":I
    move-object/from16 v63, p0

    #@50e
    move-object/from16 v65, v12

    #@510
    move/from16 v66, v40

    #@512
    move/from16 v71, v44

    #@514
    move/from16 v72, v45

    #@516
    .line 399
    invoke-virtual/range {v63 .. v72}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    #@519
    .line 401
    const/4 v5, 0x1

    #@51a
    return v5

    #@51b
    .line 395
    .end local v44    # "sendingUser":I
    .end local v45    # "processState":I
    .end local v69    # "ordered":Z
    .end local v70    # "sticky":Z
    :cond_19
    const/16 v69, 0x0

    #@51d
    .restart local v69    # "ordered":Z
    goto :goto_17

    #@51e
    .line 396
    :cond_1a
    const/16 v70, 0x0

    #@520
    .restart local v70    # "sticky":Z
    goto :goto_18

    #@521
    .line 406
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v40    # "resultCode":I
    .end local v64    # "receiver":Landroid/content/IIntentReceiver;
    .end local v67    # "dataStr":Ljava/lang/String;
    .end local v68    # "extras":Landroid/os/Bundle;
    .end local v69    # "ordered":Z
    .end local v70    # "sticky":Z
    :pswitch_1c
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@524
    move-object/from16 v0, p2

    #@526
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@529
    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    #@52c
    .line 408
    const/4 v5, 0x1

    #@52d
    return v5

    #@52e
    .line 413
    :pswitch_1d
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@531
    move-object/from16 v0, p2

    #@533
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@536
    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@539
    move-result-object v6

    #@53a
    .line 415
    .restart local v6    # "b":Landroid/os/IBinder;
    const/16 v17, 0x0

    #@53c
    .line 416
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@53f
    move-result v5

    #@540
    if-eqz v5, :cond_1b

    #@542
    .line 417
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@544
    move-object/from16 v0, p2

    #@546
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@549
    move-result-object v17

    #@54a
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    #@54c
    .line 419
    :cond_1b
    move-object/from16 v0, p0

    #@54e
    move-object/from16 v1, v17

    #@550
    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    #@553
    .line 420
    const/4 v5, 0x1

    #@554
    return v5

    #@555
    .line 425
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_1e
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@558
    move-object/from16 v0, p2

    #@55a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55d
    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@560
    move-result v5

    #@561
    if-eqz v5, :cond_1c

    #@563
    const/16 v117, 0x1

    #@565
    .line 427
    .local v117, "start":Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@568
    move-result v105

    #@569
    .line 428
    .local v105, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@56c
    move-result v5

    #@56d
    if-eqz v5, :cond_1d

    #@56f
    .line 429
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@571
    move-object/from16 v0, p2

    #@573
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@576
    move-result-object v28

    #@577
    check-cast v28, Landroid/app/ProfilerInfo;

    #@579
    .line 430
    :goto_1a
    move-object/from16 v0, p0

    #@57b
    move/from16 v1, v117

    #@57d
    move-object/from16 v2, v28

    #@57f
    move/from16 v3, v105

    #@581
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    #@584
    .line 431
    const/4 v5, 0x1

    #@585
    return v5

    #@586
    .line 426
    .end local v105    # "profileType":I
    .end local v117    # "start":Z
    :cond_1c
    const/16 v117, 0x0

    #@588
    .restart local v117    # "start":Z
    goto :goto_19

    #@589
    .line 429
    .restart local v105    # "profileType":I
    :cond_1d
    const/16 v28, 0x0

    #@58b
    .restart local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_1a

    #@58c
    .line 436
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v105    # "profileType":I
    .end local v117    # "start":Z
    :pswitch_1f
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@58f
    move-object/from16 v0, p2

    #@591
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@594
    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@597
    move-result v92

    #@598
    .line 438
    .local v92, "group":I
    move-object/from16 v0, p0

    #@59a
    move/from16 v1, v92

    #@59c
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    #@59f
    .line 439
    const/4 v5, 0x1

    #@5a0
    return v5

    #@5a1
    .line 444
    .end local v92    # "group":I
    :pswitch_20
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@5a4
    move-object/from16 v0, p2

    #@5a6
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a9
    .line 445
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5ab
    move-object/from16 v0, p2

    #@5ad
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5b0
    move-result-object v81

    #@5b1
    check-cast v81, Landroid/content/pm/ApplicationInfo;

    #@5b3
    .line 446
    .local v81, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5b5
    move-object/from16 v0, p2

    #@5b7
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5ba
    move-result-object v18

    #@5bb
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@5bd
    .line 447
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c0
    move-result v82

    #@5c1
    .line 448
    .local v82, "backupMode":I
    move-object/from16 v0, p0

    #@5c3
    move-object/from16 v1, v81

    #@5c5
    move-object/from16 v2, v18

    #@5c7
    move/from16 v3, v82

    #@5c9
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    #@5cc
    .line 449
    const/4 v5, 0x1

    #@5cd
    return v5

    #@5ce
    .line 454
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v81    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v82    # "backupMode":I
    :pswitch_21
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@5d1
    move-object/from16 v0, p2

    #@5d3
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d6
    .line 455
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5d8
    move-object/from16 v0, p2

    #@5da
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5dd
    move-result-object v81

    #@5de
    check-cast v81, Landroid/content/pm/ApplicationInfo;

    #@5e0
    .line 456
    .restart local v81    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5e2
    move-object/from16 v0, p2

    #@5e4
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5e7
    move-result-object v18

    #@5e8
    check-cast v18, Landroid/content/res/CompatibilityInfo;

    #@5ea
    .line 457
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    #@5ec
    move-object/from16 v1, v81

    #@5ee
    move-object/from16 v2, v18

    #@5f0
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    #@5f3
    .line 458
    const/4 v5, 0x1

    #@5f4
    return v5

    #@5f5
    .line 463
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v81    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :pswitch_22
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@5f8
    move-object/from16 v0, p2

    #@5fa
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5fd
    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@600
    move-result v84

    #@601
    .line 465
    .local v84, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@604
    move-result-object v100

    #@605
    .line 466
    .local v100, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@607
    move/from16 v1, v84

    #@609
    move-object/from16 v2, v100

    #@60b
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    #@60e
    .line 467
    const/4 v5, 0x1

    #@60f
    return v5

    #@610
    .line 472
    .end local v84    # "cmd":I
    .end local v100    # "packages":[Ljava/lang/String;
    :pswitch_23
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@613
    move-object/from16 v0, p2

    #@615
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@618
    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@61b
    move-result-object v97

    #@61c
    .line 474
    .local v97, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@61e
    move-object/from16 v1, v97

    #@620
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    #@623
    .line 475
    const/4 v5, 0x1

    #@624
    return v5

    #@625
    .line 480
    .end local v97    # "msg":Ljava/lang/String;
    :pswitch_24
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@628
    move-object/from16 v0, p2

    #@62a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62d
    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@630
    move-result v5

    #@631
    if-eqz v5, :cond_1e

    #@633
    const/16 v96, 0x1

    #@635
    .line 482
    .local v96, "managed":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@638
    move-result-object v101

    #@639
    .line 483
    .local v101, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63c
    move-result v5

    #@63d
    if-eqz v5, :cond_1f

    #@63f
    .line 484
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@641
    move-object/from16 v0, p2

    #@643
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@646
    move-result-object v89

    #@647
    check-cast v89, Landroid/os/ParcelFileDescriptor;

    #@649
    .line 485
    :goto_1c
    move-object/from16 v0, p0

    #@64b
    move/from16 v1, v96

    #@64d
    move-object/from16 v2, v101

    #@64f
    move-object/from16 v3, v89

    #@651
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    #@654
    .line 486
    const/4 v5, 0x1

    #@655
    return v5

    #@656
    .line 481
    .end local v96    # "managed":Z
    .end local v101    # "path":Ljava/lang/String;
    :cond_1e
    const/16 v96, 0x0

    #@658
    .restart local v96    # "managed":Z
    goto :goto_1b

    #@659
    .line 484
    .restart local v101    # "path":Ljava/lang/String;
    :cond_1f
    const/16 v89, 0x0

    #@65b
    .local v89, "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_1c

    #@65c
    .line 490
    .end local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v96    # "managed":Z
    .end local v101    # "path":Ljava/lang/String;
    :pswitch_25
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@65f
    move-object/from16 v0, p2

    #@661
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@664
    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@667
    move-result-object v89

    #@668
    .line 492
    .local v89, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@66b
    move-result-object v79

    #@66c
    .line 493
    .local v79, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@66f
    move-result-object v104

    #@670
    .line 494
    .local v104, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@673
    move-result-object v78

    #@674
    .line 495
    .restart local v78    # "args":[Ljava/lang/String;
    if-eqz v89, :cond_20

    #@676
    .line 496
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@679
    move-result-object v5

    #@67a
    move-object/from16 v0, p0

    #@67c
    move-object/from16 v1, v79

    #@67e
    move-object/from16 v2, v104

    #@680
    move-object/from16 v3, v78

    #@682
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    #@685
    .line 498
    :try_start_2
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@688
    .line 502
    :cond_20
    :goto_1d
    const/4 v5, 0x1

    #@689
    return v5

    #@68a
    .line 499
    :catch_2
    move-exception v86

    #@68b
    .restart local v86    # "e":Ljava/io/IOException;
    goto :goto_1d

    #@68c
    .line 506
    .end local v78    # "args":[Ljava/lang/String;
    .end local v79    # "activity":Landroid/os/IBinder;
    .end local v86    # "e":Ljava/io/IOException;
    .end local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v104    # "prefix":Ljava/lang/String;
    :pswitch_26
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@68f
    move-object/from16 v0, p2

    #@691
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@694
    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@697
    move-result-object v114

    #@698
    .line 508
    .local v114, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@69a
    move-object/from16 v1, v114

    #@69c
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    #@69f
    .line 509
    const/4 v5, 0x1

    #@6a0
    return v5

    #@6a1
    .line 513
    .end local v114    # "settings":Landroid/os/Bundle;
    :pswitch_27
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@6a4
    move-object/from16 v0, p2

    #@6a6
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a9
    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6ac
    move-result-object v102

    #@6ad
    .line 515
    .local v102, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6af
    move-object/from16 v0, p2

    #@6b1
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6b4
    move-result-object v85

    #@6b5
    check-cast v85, Landroid/content/res/CompatibilityInfo;

    #@6b7
    .line 516
    .local v85, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    #@6b9
    move-object/from16 v1, v102

    #@6bb
    move-object/from16 v2, v85

    #@6bd
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    #@6c0
    .line 517
    const/4 v5, 0x1

    #@6c1
    return v5

    #@6c2
    .line 521
    .end local v85    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v102    # "pkg":Ljava/lang/String;
    :pswitch_28
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@6c5
    move-object/from16 v0, p2

    #@6c7
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ca
    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6cd
    move-result v95

    #@6ce
    .line 523
    .local v95, "level":I
    move-object/from16 v0, p0

    #@6d0
    move/from16 v1, v95

    #@6d2
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    #@6d5
    .line 524
    const/4 v5, 0x1

    #@6d6
    return v5

    #@6d7
    .line 529
    .end local v95    # "level":I
    :pswitch_29
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@6da
    move-object/from16 v0, p2

    #@6dc
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6df
    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@6e2
    move-result-object v89

    #@6e3
    .line 531
    .restart local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6e5
    move-object/from16 v0, p2

    #@6e7
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6ea
    move-result-object v73

    #@6eb
    check-cast v73, Landroid/os/Debug$MemoryInfo;

    #@6ed
    .line 532
    .local v73, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6f0
    move-result v5

    #@6f1
    if-eqz v5, :cond_22

    #@6f3
    const/16 v74, 0x1

    #@6f5
    .line 533
    .local v74, "checkin":Z
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6f8
    move-result v5

    #@6f9
    if-eqz v5, :cond_23

    #@6fb
    const/16 v75, 0x1

    #@6fd
    .line 534
    .local v75, "dumpInfo":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@700
    move-result v5

    #@701
    if-eqz v5, :cond_24

    #@703
    const/16 v76, 0x1

    #@705
    .line 535
    .local v76, "dumpDalvik":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@708
    move-result v5

    #@709
    if-eqz v5, :cond_25

    #@70b
    const/16 v77, 0x1

    #@70d
    .line 536
    .local v77, "dumpSummaryOnly":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@710
    move-result-object v78

    #@711
    .line 537
    .restart local v78    # "args":[Ljava/lang/String;
    if-eqz v89, :cond_21

    #@713
    .line 539
    :try_start_3
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@716
    move-result-object v72

    #@717
    move-object/from16 v71, p0

    #@719
    invoke-virtual/range {v71 .. v78}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@71c
    .line 543
    :try_start_4
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@71f
    .line 549
    :cond_21
    :goto_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@722
    .line 550
    const/4 v5, 0x1

    #@723
    return v5

    #@724
    .line 532
    .end local v74    # "checkin":Z
    .end local v75    # "dumpInfo":Z
    .end local v76    # "dumpDalvik":Z
    .end local v77    # "dumpSummaryOnly":Z
    .end local v78    # "args":[Ljava/lang/String;
    :cond_22
    const/16 v74, 0x0

    #@726
    .restart local v74    # "checkin":Z
    goto :goto_1e

    #@727
    .line 533
    :cond_23
    const/16 v75, 0x0

    #@729
    .restart local v75    # "dumpInfo":Z
    goto :goto_1f

    #@72a
    .line 534
    :cond_24
    const/16 v76, 0x0

    #@72c
    .restart local v76    # "dumpDalvik":Z
    goto :goto_20

    #@72d
    .line 535
    :cond_25
    const/16 v77, 0x0

    #@72f
    .restart local v77    # "dumpSummaryOnly":Z
    goto :goto_21

    #@730
    .line 544
    .restart local v78    # "args":[Ljava/lang/String;
    :catch_3
    move-exception v86

    #@731
    .restart local v86    # "e":Ljava/io/IOException;
    goto :goto_22

    #@732
    .line 541
    .end local v86    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@733
    .line 543
    :try_start_5
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@736
    .line 541
    :goto_23
    throw v5

    #@737
    .line 544
    :catch_4
    move-exception v86

    #@738
    .restart local v86    # "e":Ljava/io/IOException;
    goto :goto_23

    #@739
    .line 555
    .end local v73    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v74    # "checkin":Z
    .end local v75    # "dumpInfo":Z
    .end local v76    # "dumpDalvik":Z
    .end local v77    # "dumpSummaryOnly":Z
    .end local v78    # "args":[Ljava/lang/String;
    .end local v86    # "e":Ljava/io/IOException;
    .end local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2a
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@73c
    move-object/from16 v0, p2

    #@73e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@741
    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@744
    move-result-object v89

    #@745
    .line 557
    .restart local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@748
    move-result-object v78

    #@749
    .line 558
    .restart local v78    # "args":[Ljava/lang/String;
    if-eqz v89, :cond_26

    #@74b
    .line 560
    :try_start_6
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@74e
    move-result-object v5

    #@74f
    move-object/from16 v0, p0

    #@751
    move-object/from16 v1, v78

    #@753
    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@756
    .line 563
    :try_start_7
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@759
    .line 569
    :cond_26
    :goto_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@75c
    .line 570
    const/4 v5, 0x1

    #@75d
    return v5

    #@75e
    .line 564
    :catch_5
    move-exception v86

    #@75f
    .restart local v86    # "e":Ljava/io/IOException;
    goto :goto_24

    #@760
    .line 561
    .end local v86    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    #@761
    .line 563
    :try_start_8
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    #@764
    .line 561
    :goto_25
    throw v5

    #@765
    .line 564
    :catch_6
    move-exception v86

    #@766
    .restart local v86    # "e":Ljava/io/IOException;
    goto :goto_25

    #@767
    .line 575
    .end local v78    # "args":[Ljava/lang/String;
    .end local v86    # "e":Ljava/io/IOException;
    .end local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2b
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@76a
    move-object/from16 v0, p2

    #@76c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76f
    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@772
    move-result-object v89

    #@773
    .line 577
    .restart local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@776
    move-result-object v78

    #@777
    .line 578
    .restart local v78    # "args":[Ljava/lang/String;
    if-eqz v89, :cond_27

    #@779
    .line 580
    :try_start_9
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@77c
    move-result-object v5

    #@77d
    move-object/from16 v0, p0

    #@77f
    move-object/from16 v1, v78

    #@781
    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@784
    .line 583
    :try_start_a
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    #@787
    .line 589
    :cond_27
    :goto_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@78a
    .line 590
    const/4 v5, 0x1

    #@78b
    return v5

    #@78c
    .line 584
    :catch_7
    move-exception v86

    #@78d
    .restart local v86    # "e":Ljava/io/IOException;
    goto :goto_26

    #@78e
    .line 581
    .end local v86    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    #@78f
    .line 583
    :try_start_b
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    #@792
    .line 581
    :goto_27
    throw v5

    #@793
    .line 584
    :catch_8
    move-exception v86

    #@794
    .restart local v86    # "e":Ljava/io/IOException;
    goto :goto_27

    #@795
    .line 595
    .end local v78    # "args":[Ljava/lang/String;
    .end local v86    # "e":Ljava/io/IOException;
    .end local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2c
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@798
    move-object/from16 v0, p2

    #@79a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@79d
    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7a0
    move-result-object v107

    #@7a1
    .line 597
    .local v107, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@7a3
    move-object/from16 v1, v107

    #@7a5
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    #@7a8
    .line 598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7ab
    .line 599
    const/4 v5, 0x1

    #@7ac
    return v5

    #@7ad
    .line 604
    .end local v107    # "provider":Landroid/os/IBinder;
    :pswitch_2d
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@7b0
    move-object/from16 v0, p2

    #@7b2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b5
    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7b8
    move-result-object v80

    #@7b9
    .line 606
    .local v80, "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7bc
    move-result-object v110

    #@7bd
    .line 607
    .local v110, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7c0
    move-result v111

    #@7c1
    .line 608
    .local v111, "requestType":I
    move-object/from16 v0, p0

    #@7c3
    move-object/from16 v1, v80

    #@7c5
    move-object/from16 v2, v110

    #@7c7
    move/from16 v3, v111

    #@7c9
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V

    #@7cc
    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7cf
    .line 610
    const/4 v5, 0x1

    #@7d0
    return v5

    #@7d1
    .line 615
    .end local v80    # "activityToken":Landroid/os/IBinder;
    .end local v110    # "requestToken":Landroid/os/IBinder;
    .end local v111    # "requestType":I
    :pswitch_2e
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@7d4
    move-object/from16 v0, p2

    #@7d6
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7d9
    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7dc
    move-result-object v30

    #@7dd
    .line 617
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7e0
    move-result v5

    #@7e1
    const/4 v11, 0x1

    #@7e2
    if-ne v5, v11, :cond_28

    #@7e4
    const/16 v119, 0x1

    #@7e6
    .line 618
    .local v119, "timeout":Z
    :goto_28
    move-object/from16 v0, p0

    #@7e8
    move-object/from16 v1, v30

    #@7ea
    move/from16 v2, v119

    #@7ec
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    #@7ef
    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f2
    .line 620
    const/4 v5, 0x1

    #@7f3
    return v5

    #@7f4
    .line 617
    .end local v119    # "timeout":Z
    :cond_28
    const/16 v119, 0x0

    #@7f6
    .restart local v119    # "timeout":Z
    goto :goto_28

    #@7f7
    .line 625
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v119    # "timeout":Z
    :pswitch_2f
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@7fa
    move-object/from16 v0, p2

    #@7fc
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ff
    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@802
    move-result-object v30

    #@803
    .line 627
    .restart local v30    # "token":Landroid/os/IBinder;
    new-instance v98, Landroid/app/ActivityOptions;

    #@805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@808
    move-result-object v5

    #@809
    move-object/from16 v0, v98

    #@80b
    invoke-direct {v0, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    #@80e
    .line 628
    .local v98, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    #@810
    move-object/from16 v1, v30

    #@812
    move-object/from16 v2, v98

    #@814
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    #@817
    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@81a
    .line 630
    const/4 v5, 0x1

    #@81b
    return v5

    #@81c
    .line 635
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v98    # "options":Landroid/app/ActivityOptions;
    :pswitch_30
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@81f
    move-object/from16 v0, p2

    #@821
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@824
    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@827
    move-result v118

    #@828
    .line 637
    .local v118, "state":I
    move-object/from16 v0, p0

    #@82a
    move/from16 v1, v118

    #@82c
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    #@82f
    .line 638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@832
    .line 639
    const/4 v5, 0x1

    #@833
    return v5

    #@834
    .line 644
    .end local v118    # "state":I
    :pswitch_31
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@837
    move-object/from16 v0, p2

    #@839
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83c
    .line 645
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@83e
    move-object/from16 v0, p2

    #@840
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@843
    move-result-object v106

    #@844
    check-cast v106, Landroid/content/pm/ProviderInfo;

    #@846
    .line 646
    .local v106, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    #@848
    move-object/from16 v1, v106

    #@84a
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    #@84d
    .line 647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@850
    .line 648
    const/4 v5, 0x1

    #@851
    return v5

    #@852
    .line 653
    .end local v106    # "provider":Landroid/content/pm/ProviderInfo;
    :pswitch_32
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@855
    move-object/from16 v0, p2

    #@857
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@85a
    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    #@85d
    move-result v94

    #@85e
    .line 655
    .local v94, "is24Hour":B
    const/4 v5, 0x1

    #@85f
    move/from16 v0, v94

    #@861
    if-ne v0, v5, :cond_29

    #@863
    const/4 v5, 0x1

    #@864
    :goto_29
    move-object/from16 v0, p0

    #@866
    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->updateTimePrefs(Z)V

    #@869
    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@86c
    .line 657
    const/4 v5, 0x1

    #@86d
    return v5

    #@86e
    .line 655
    :cond_29
    const/4 v5, 0x0

    #@86f
    goto :goto_29

    #@870
    .line 662
    .end local v94    # "is24Hour":B
    :pswitch_33
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@873
    move-object/from16 v0, p2

    #@875
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@878
    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@87b
    move-result-object v30

    #@87c
    .line 664
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@87e
    move-object/from16 v1, v30

    #@880
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    #@883
    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@886
    .line 666
    const/4 v5, 0x1

    #@887
    return v5

    #@888
    .line 671
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_34
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@88b
    move-object/from16 v0, p2

    #@88d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@890
    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@893
    move-result-object v30

    #@894
    .line 673
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@897
    move-result v5

    #@898
    if-lez v5, :cond_2a

    #@89a
    const/16 v87, 0x1

    #@89c
    .line 674
    .local v87, "enabled":Z
    :goto_2a
    move-object/from16 v0, p0

    #@89e
    move-object/from16 v1, v30

    #@8a0
    move/from16 v2, v87

    #@8a2
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    #@8a5
    .line 675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a8
    .line 676
    const/4 v5, 0x1

    #@8a9
    return v5

    #@8aa
    .line 673
    .end local v87    # "enabled":Z
    :cond_2a
    const/16 v87, 0x0

    #@8ac
    .restart local v87    # "enabled":Z
    goto :goto_2a

    #@8ad
    .line 681
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v87    # "enabled":Z
    :pswitch_35
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@8b0
    move-object/from16 v0, p2

    #@8b2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b5
    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8b8
    move-result-object v30

    #@8b9
    .line 683
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@8bb
    move-object/from16 v1, v30

    #@8bd
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    #@8c0
    .line 684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c3
    .line 685
    const/4 v5, 0x1

    #@8c4
    return v5

    #@8c5
    .line 690
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_36
    const-string/jumbo v5, "android.app.IApplicationThread"

    #@8c8
    move-object/from16 v0, p2

    #@8ca
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8cd
    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@8d0
    move-result-object v91

    #@8d1
    .line 692
    .local v91, "firstPacket":[B
    move-object/from16 v0, p0

    #@8d3
    move-object/from16 v1, v91

    #@8d5
    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->notifyCleartextNetwork([B)V

    #@8d8
    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8db
    .line 694
    const/4 v5, 0x1

    #@8dc
    return v5

    #@8dd
    .line 77
    nop

    #@8de
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
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_2f
        :pswitch_13
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_16
        :pswitch_17
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_1a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
    .end packed-switch
.end method
