.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManagerNative$1;
    }
.end annotation


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 96
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    #@3
    .line 2604
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    #@5
    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    #@8
    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    #@a
    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 139
    const-string/jumbo v0, "android.app.IActivityManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 138
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 68
    if-nez p0, :cond_0

    #@3
    .line 69
    return-object v1

    #@4
    .line 72
    :cond_0
    const-string/jumbo v1, "android.app.IActivityManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/IActivityManager;

    #@d
    .line 73
    .local v0, "in":Landroid/app/IActivityManager;
    if-eqz v0, :cond_1

    #@f
    .line 74
    return-object v0

    #@10
    .line 77
    :cond_1
    new-instance v1, Landroid/app/ActivityManagerProxy;

    #@12
    invoke-direct {v1, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    #@15
    return-object v1
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 99
    const/4 v0, -0x1

    #@1
    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V

    #@4
    .line 98
    return-void
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "appOp"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 110
    const/4 v1, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v4, 0x0

    #@7
    const/4 v5, -0x1

    #@8
    const/4 v6, 0x0

    #@9
    const/4 v7, 0x0

    #@a
    .line 111
    const/4 v8, 0x0

    #@b
    const/4 v10, 0x0

    #@c
    const/4 v11, 0x0

    #@d
    const/4 v12, 0x1

    #@e
    move-object v2, p0

    #@f
    move/from16 v9, p2

    #@11
    move/from16 v13, p3

    #@13
    .line 109
    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 107
    :goto_0
    return-void

    #@17
    .line 112
    :catch_0
    move-exception v14

    #@18
    .local v14, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    #@0
    .prologue
    .line 84
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    #@2
    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/IActivityManager;

    #@8
    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    #@0
    .prologue
    .line 91
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 92
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    #@b
    move-result v0

    #@c
    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    #@e
    .line 94
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    #@10
    return v0
.end method

.method public static noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 133
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 131
    :goto_0
    return-void

    #@c
    .line 134
    :catch_0
    move-exception v0

    #@d
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 124
    :goto_0
    return-void

    #@c
    .line 127
    :catch_0
    move-exception v0

    #@d
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2, p1, p2, p3}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 117
    :goto_0
    return-void

    #@c
    .line 120
    :catch_0
    move-exception v0

    #@d
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 2601
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 315
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
    .line 145
    move/from16 v0, p1

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 2597
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v6

    #@9
    return v6

    #@a
    .line 148
    :pswitch_1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@d
    move-object/from16 v0, p2

    #@f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@15
    move-result-object v179

    #@16
    .line 150
    .local v179, "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@19
    move-result-object v7

    #@1a
    .line 151
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    .line 152
    .local v8, "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    move-object/from16 v0, p2

    #@22
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v9

    #@26
    check-cast v9, Landroid/content/Intent;

    #@28
    .line 153
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b
    move-result-object v10

    #@2c
    .line 154
    .local v10, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v11

    #@30
    .line 155
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@33
    move-result-object v12

    #@34
    .line 156
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v13

    #@38
    .line 157
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v14

    #@3c
    .line 158
    .local v14, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v6

    #@40
    if-eqz v6, :cond_0

    #@42
    .line 159
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@44
    move-object/from16 v0, p2

    #@46
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@49
    move-result-object v15

    #@4a
    check-cast v15, Landroid/app/ProfilerInfo;

    #@4c
    .line 160
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v6

    #@50
    if-eqz v6, :cond_1

    #@52
    .line 161
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@54
    move-object/from16 v0, p2

    #@56
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@59
    move-result-object v16

    #@5a
    check-cast v16, Landroid/os/Bundle;

    #@5c
    :goto_1
    move-object/from16 v6, p0

    #@5e
    .line 162
    invoke-virtual/range {v6 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    #@61
    move-result v0

    #@62
    move/16 v279, v0

    #@65
    .line 164
    .local v279, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@68
    .line 165
    move-object/from16 v0, p3

    #@6a
    move/from16 v1, v279

    #@6c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    .line 166
    const/4 v6, 0x1

    #@70
    return v6

    #@71
    .line 159
    .end local v279    # "result":I
    :cond_0
    const/4 v15, 0x0

    #@72
    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_0

    #@73
    .line 161
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1
    const/16 v16, 0x0

    #@75
    .local v16, "options":Landroid/os/Bundle;
    goto :goto_1

    #@76
    .line 171
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@79
    move-object/from16 v0, p2

    #@7b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@81
    move-result-object v179

    #@82
    .line 173
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@85
    move-result-object v7

    #@86
    .line 174
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@89
    move-result-object v8

    #@8a
    .line 175
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8c
    move-object/from16 v0, p2

    #@8e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@91
    move-result-object v9

    #@92
    check-cast v9, Landroid/content/Intent;

    #@94
    .line 176
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@97
    move-result-object v10

    #@98
    .line 177
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9b
    move-result-object v11

    #@9c
    .line 178
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9f
    move-result-object v12

    #@a0
    .line 179
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a3
    move-result v13

    #@a4
    .line 180
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v14

    #@a8
    .line 181
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ab
    move-result v6

    #@ac
    if-eqz v6, :cond_2

    #@ae
    .line 182
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b0
    move-object/from16 v0, p2

    #@b2
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b5
    move-result-object v15

    #@b6
    check-cast v15, Landroid/app/ProfilerInfo;

    #@b8
    .line 183
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bb
    move-result v6

    #@bc
    if-eqz v6, :cond_3

    #@be
    .line 184
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c0
    move-object/from16 v0, p2

    #@c2
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c5
    move-result-object v16

    #@c6
    check-cast v16, Landroid/os/Bundle;

    #@c8
    .line 185
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cb
    move-result v17

    #@cc
    .local v17, "userId":I
    move-object/from16 v6, p0

    #@ce
    .line 186
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    #@d1
    move-result v0

    #@d2
    move/16 v279, v0

    #@d5
    .line 188
    .restart local v279    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d8
    .line 189
    move-object/from16 v0, p3

    #@da
    move/from16 v1, v279

    #@dc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@df
    .line 190
    const/4 v6, 0x1

    #@e0
    return v6

    #@e1
    .line 182
    .end local v17    # "userId":I
    .end local v279    # "result":I
    :cond_2
    const/4 v15, 0x0

    #@e2
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_2

    #@e3
    .line 184
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v16, 0x0

    #@e5
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_3

    #@e6
    .line 195
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@e9
    move-object/from16 v0, p2

    #@eb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ee
    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f1
    move-result-object v179

    #@f2
    .line 197
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@f5
    move-result-object v7

    #@f6
    .line 198
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f9
    move-result-object v8

    #@fa
    .line 199
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fc
    move-object/from16 v0, p2

    #@fe
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@101
    move-result-object v9

    #@102
    check-cast v9, Landroid/content/Intent;

    #@104
    .line 200
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@107
    move-result-object v10

    #@108
    .line 201
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10b
    move-result-object v11

    #@10c
    .line 202
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10f
    move-result-object v12

    #@110
    .line 203
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@113
    move-result v13

    #@114
    .line 204
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@117
    move-result v14

    #@118
    .line 205
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11b
    move-result v6

    #@11c
    if-eqz v6, :cond_4

    #@11e
    .line 206
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@120
    move-object/from16 v0, p2

    #@122
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@125
    move-result-object v15

    #@126
    check-cast v15, Landroid/app/ProfilerInfo;

    #@128
    .line 207
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12b
    move-result v6

    #@12c
    if-eqz v6, :cond_5

    #@12e
    .line 208
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@130
    move-object/from16 v0, p2

    #@132
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@135
    move-result-object v16

    #@136
    check-cast v16, Landroid/os/Bundle;

    #@138
    .line 209
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13b
    move-result v6

    #@13c
    if-eqz v6, :cond_6

    #@13e
    const/16 v29, 0x1

    #@140
    .line 210
    .local v29, "ignoreTargetSecurity":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@143
    move-result v17

    #@144
    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    #@146
    move-object/from16 v19, v7

    #@148
    move-object/from16 v20, v8

    #@14a
    move-object/from16 v21, v9

    #@14c
    move-object/from16 v22, v10

    #@14e
    move-object/from16 v23, v11

    #@150
    move-object/from16 v24, v12

    #@152
    move/from16 v25, v13

    #@154
    move/from16 v26, v14

    #@156
    move-object/from16 v27, v15

    #@158
    move-object/from16 v28, v16

    #@15a
    move/from16 v30, v17

    #@15c
    .line 211
    invoke-virtual/range {v18 .. v30}, Landroid/app/ActivityManagerNative;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    #@15f
    move-result v0

    #@160
    move/16 v279, v0

    #@163
    .line 214
    .restart local v279    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@166
    .line 215
    move-object/from16 v0, p3

    #@168
    move/from16 v1, v279

    #@16a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16d
    .line 216
    const/4 v6, 0x1

    #@16e
    return v6

    #@16f
    .line 206
    .end local v17    # "userId":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v279    # "result":I
    :cond_4
    const/4 v15, 0x0

    #@170
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_4

    #@171
    .line 208
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_5
    const/16 v16, 0x0

    #@173
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_5

    #@174
    .line 209
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_6
    const/16 v29, 0x0

    #@176
    .restart local v29    # "ignoreTargetSecurity":Z
    goto :goto_6

    #@177
    .line 221
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@17a
    move-object/from16 v0, p2

    #@17c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17f
    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@182
    move-result-object v179

    #@183
    .line 223
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@186
    move-result-object v7

    #@187
    .line 224
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18a
    move-result-object v8

    #@18b
    .line 225
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18d
    move-object/from16 v0, p2

    #@18f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@192
    move-result-object v9

    #@193
    check-cast v9, Landroid/content/Intent;

    #@195
    .line 226
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@198
    move-result-object v10

    #@199
    .line 227
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19c
    move-result-object v11

    #@19d
    .line 228
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a0
    move-result-object v12

    #@1a1
    .line 229
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a4
    move-result v13

    #@1a5
    .line 230
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a8
    move-result v14

    #@1a9
    .line 231
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ac
    move-result v6

    #@1ad
    if-eqz v6, :cond_7

    #@1af
    .line 232
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b1
    move-object/from16 v0, p2

    #@1b3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b6
    move-result-object v15

    #@1b7
    check-cast v15, Landroid/app/ProfilerInfo;

    #@1b9
    .line 233
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bc
    move-result v6

    #@1bd
    if-eqz v6, :cond_8

    #@1bf
    .line 234
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c1
    move-object/from16 v0, p2

    #@1c3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c6
    move-result-object v16

    #@1c7
    check-cast v16, Landroid/os/Bundle;

    #@1c9
    .line 235
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cc
    move-result v17

    #@1cd
    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    #@1cf
    .line 236
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    #@1d2
    move-result-object v0

    #@1d3
    move-object/16 v280, v0

    #@1d6
    .line 238
    .local v280, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d9
    .line 239
    const/4 v6, 0x0

    #@1da
    move-object/from16 v0, v280

    #@1dc
    move-object/from16 v1, p3

    #@1de
    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e1
    .line 240
    const/4 v6, 0x1

    #@1e2
    return v6

    #@1e3
    .line 232
    .end local v17    # "userId":I
    .end local v280    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_7
    const/4 v15, 0x0

    #@1e4
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_7

    #@1e5
    .line 234
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v16, 0x0

    #@1e7
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_8

    #@1e8
    .line 245
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1eb
    move-object/from16 v0, p2

    #@1ed
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f0
    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f3
    move-result-object v179

    #@1f4
    .line 247
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@1f7
    move-result-object v7

    #@1f8
    .line 248
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1fb
    move-result-object v8

    #@1fc
    .line 249
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1fe
    move-object/from16 v0, p2

    #@200
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@203
    move-result-object v9

    #@204
    check-cast v9, Landroid/content/Intent;

    #@206
    .line 250
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@209
    move-result-object v10

    #@20a
    .line 251
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@20d
    move-result-object v11

    #@20e
    .line 252
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@211
    move-result-object v12

    #@212
    .line 253
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@215
    move-result v13

    #@216
    .line 254
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@219
    move-result v14

    #@21a
    .line 255
    .restart local v14    # "startFlags":I
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21c
    move-object/from16 v0, p2

    #@21e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@221
    move-result-object v39

    #@222
    check-cast v39, Landroid/content/res/Configuration;

    #@224
    .line 256
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@227
    move-result v6

    #@228
    if-eqz v6, :cond_9

    #@22a
    .line 257
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22c
    move-object/from16 v0, p2

    #@22e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@231
    move-result-object v16

    #@232
    check-cast v16, Landroid/os/Bundle;

    #@234
    .line 258
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@237
    move-result v17

    #@238
    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    #@23a
    move-object/from16 v31, v7

    #@23c
    move-object/from16 v32, v8

    #@23e
    move-object/from16 v33, v9

    #@240
    move-object/from16 v34, v10

    #@242
    move-object/from16 v35, v11

    #@244
    move-object/from16 v36, v12

    #@246
    move/from16 v37, v13

    #@248
    move/from16 v38, v14

    #@24a
    move-object/from16 v40, v16

    #@24c
    move/from16 v41, v17

    #@24e
    .line 259
    invoke-virtual/range {v30 .. v41}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    #@251
    move-result v0

    #@252
    move/16 v279, v0

    #@255
    .line 261
    .restart local v279    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@258
    .line 262
    move-object/from16 v0, p3

    #@25a
    move/from16 v1, v279

    #@25c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@25f
    .line 263
    const/4 v6, 0x1

    #@260
    return v6

    #@261
    .line 257
    .end local v17    # "userId":I
    .end local v279    # "result":I
    :cond_9
    const/16 v16, 0x0

    #@263
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_9

    #@264
    .line 268
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@267
    move-object/from16 v0, p2

    #@269
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26c
    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@26f
    move-result-object v179

    #@270
    .line 270
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@273
    move-result-object v7

    #@274
    .line 271
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    #@276
    move-object/from16 v0, p2

    #@278
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27b
    move-result-object v20

    #@27c
    check-cast v20, Landroid/content/IntentSender;

    #@27e
    .line 272
    .local v20, "intent":Landroid/content/IntentSender;
    const/16 v21, 0x0

    #@280
    .line 273
    .local v21, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@283
    move-result v6

    #@284
    if-eqz v6, :cond_a

    #@286
    .line 274
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@288
    move-object/from16 v0, p2

    #@28a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28d
    move-result-object v21

    #@28e
    .end local v21    # "fillInIntent":Landroid/content/Intent;
    check-cast v21, Landroid/content/Intent;

    #@290
    .line 276
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@293
    move-result-object v10

    #@294
    .line 277
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@297
    move-result-object v11

    #@298
    .line 278
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29b
    move-result-object v12

    #@29c
    .line 279
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29f
    move-result v13

    #@2a0
    .line 280
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a3
    move-result v26

    #@2a4
    .line 281
    .local v26, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a7
    move-result v27

    #@2a8
    .line 282
    .local v27, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ab
    move-result v6

    #@2ac
    if-eqz v6, :cond_b

    #@2ae
    .line 283
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b0
    move-object/from16 v0, p2

    #@2b2
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b5
    move-result-object v16

    #@2b6
    check-cast v16, Landroid/os/Bundle;

    #@2b8
    :goto_a
    move-object/from16 v18, p0

    #@2ba
    move-object/from16 v19, v7

    #@2bc
    move-object/from16 v22, v10

    #@2be
    move-object/from16 v23, v11

    #@2c0
    move-object/from16 v24, v12

    #@2c2
    move/from16 v25, v13

    #@2c4
    move-object/from16 v28, v16

    #@2c6
    .line 284
    invoke-virtual/range {v18 .. v28}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    #@2c9
    move-result v0

    #@2ca
    move/16 v279, v0

    #@2cd
    .line 287
    .restart local v279    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d0
    .line 288
    move-object/from16 v0, p3

    #@2d2
    move/from16 v1, v279

    #@2d4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d7
    .line 289
    const/4 v6, 0x1

    #@2d8
    return v6

    #@2d9
    .line 283
    .end local v279    # "result":I
    :cond_b
    const/16 v16, 0x0

    #@2db
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_a

    #@2dc
    .line 294
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v20    # "intent":Landroid/content/IntentSender;
    .end local v26    # "flagsMask":I
    .end local v27    # "flagsValues":I
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2df
    move-object/from16 v0, p2

    #@2e1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e4
    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e7
    move-result-object v8

    #@2e8
    .line 296
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2eb
    move-result v42

    #@2ec
    .line 297
    .local v42, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ef
    move-result v43

    #@2f0
    .line 298
    .local v43, "callingUid":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f2
    move-object/from16 v0, p2

    #@2f4
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f7
    move-result-object v9

    #@2f8
    check-cast v9, Landroid/content/Intent;

    #@2fa
    .line 299
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2fd
    move-result-object v10

    #@2fe
    .line 301
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@301
    move-result-object v6

    #@302
    .line 300
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    #@305
    move-result-object v46

    #@306
    .line 303
    .local v46, "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@309
    move-result-object v6

    #@30a
    .line 302
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    #@30d
    move-result-object v47

    #@30e
    .line 304
    .local v47, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@311
    move-result v14

    #@312
    .line 305
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@315
    move-result v6

    #@316
    if-eqz v6, :cond_c

    #@318
    .line 306
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31a
    move-object/from16 v0, p2

    #@31c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@31f
    move-result-object v15

    #@320
    check-cast v15, Landroid/app/ProfilerInfo;

    #@322
    .line 307
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@325
    move-result v6

    #@326
    if-eqz v6, :cond_d

    #@328
    .line 308
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32a
    move-object/from16 v0, p2

    #@32c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32f
    move-result-object v16

    #@330
    check-cast v16, Landroid/os/Bundle;

    #@332
    .line 309
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@335
    move-result v17

    #@336
    .restart local v17    # "userId":I
    move-object/from16 v40, p0

    #@338
    move-object/from16 v41, v8

    #@33a
    move-object/from16 v44, v9

    #@33c
    move-object/from16 v45, v10

    #@33e
    move/from16 v48, v14

    #@340
    move-object/from16 v49, v15

    #@342
    move-object/from16 v50, v16

    #@344
    move/from16 v51, v17

    #@346
    .line 310
    invoke-virtual/range {v40 .. v51}, Landroid/app/ActivityManagerNative;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    #@349
    move-result v0

    #@34a
    move/16 v279, v0

    #@34d
    .line 312
    .restart local v279    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@350
    .line 313
    move-object/from16 v0, p3

    #@352
    move/from16 v1, v279

    #@354
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@357
    .line 314
    const/4 v6, 0x1

    #@358
    return v6

    #@359
    .line 306
    .end local v17    # "userId":I
    .end local v279    # "result":I
    :cond_c
    const/4 v15, 0x0

    #@35a
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_b

    #@35b
    .line 308
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_d
    const/16 v16, 0x0

    #@35d
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_c

    #@35e
    .line 319
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v47    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    :pswitch_8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@361
    move-object/from16 v0, p2

    #@363
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@366
    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@369
    move-result-object v185

    #@36a
    .line 321
    .local v185, "callingActivity":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36c
    move-object/from16 v0, p2

    #@36e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@371
    move-result-object v9

    #@372
    check-cast v9, Landroid/content/Intent;

    #@374
    .line 322
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@377
    move-result v6

    #@378
    if-eqz v6, :cond_e

    #@37a
    .line 323
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@37c
    move-object/from16 v0, p2

    #@37e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@381
    move-result-object v16

    #@382
    check-cast v16, Landroid/os/Bundle;

    #@384
    .line 324
    :goto_d
    move-object/from16 v0, p0

    #@386
    move-object/from16 v1, v185

    #@388
    move-object/from16 v2, v16

    #@38a
    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    #@38d
    move-result v0

    #@38e
    move/16 v281, v0

    #@391
    .line 325
    .local v281, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@394
    .line 326
    move/from16 v0, v281

    #@396
    if-eqz v0, :cond_f

    #@398
    const/4 v6, 0x1

    #@399
    :goto_e
    move-object/from16 v0, p3

    #@39b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@39e
    .line 327
    const/4 v6, 0x1

    #@39f
    return v6

    #@3a0
    .line 323
    .end local v281    # "result":Z
    :cond_e
    const/16 v16, 0x0

    #@3a2
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_d

    #@3a3
    .line 326
    .end local v16    # "options":Landroid/os/Bundle;
    .restart local v281    # "result":Z
    :cond_f
    const/4 v6, 0x0

    #@3a4
    goto :goto_e

    #@3a5
    .line 332
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v185    # "callingActivity":Landroid/os/IBinder;
    .end local v281    # "result":Z
    :pswitch_9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@3a8
    move-object/from16 v0, p2

    #@3aa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ad
    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b0
    move-result v0

    #@3b1
    move/16 v302, v0

    #@3b4
    .line 334
    .local v302, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b7
    move-result v6

    #@3b8
    if-nez v6, :cond_10

    #@3ba
    const/16 v16, 0x0

    #@3bc
    .line 335
    :goto_f
    move-object/from16 v0, p0

    #@3be
    move/from16 v1, v302

    #@3c0
    move-object/from16 v2, v16

    #@3c2
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startActivityFromRecents(ILandroid/os/Bundle;)I

    #@3c5
    move-result v0

    #@3c6
    move/16 v279, v0

    #@3c9
    .line 336
    .restart local v279    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3cc
    .line 337
    move-object/from16 v0, p3

    #@3ce
    move/from16 v1, v279

    #@3d0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3d3
    .line 338
    const/4 v6, 0x1

    #@3d4
    return v6

    #@3d5
    .line 334
    .end local v279    # "result":I
    :cond_10
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d7
    move-object/from16 v0, p2

    #@3d9
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3dc
    move-result-object v16

    #@3dd
    check-cast v16, Landroid/os/Bundle;

    #@3df
    .local v16, "options":Landroid/os/Bundle;
    goto :goto_f

    #@3e0
    .line 342
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v302    # "taskId":I
    :pswitch_a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@3e3
    move-object/from16 v0, p2

    #@3e5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e8
    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3eb
    move-result-object v73

    #@3ec
    .line 344
    .local v73, "token":Landroid/os/IBinder;
    const/4 v0, 0x0

    #@3ed
    move-object/16 v283, v0

    #@3f0
    .line 345
    .local v283, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f3
    move-result v53

    #@3f4
    .line 346
    .local v53, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f7
    move-result v6

    #@3f8
    if-eqz v6, :cond_11

    #@3fa
    .line 347
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3fc
    move-object/from16 v0, p2

    #@3fe
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@401
    move-result-object v0

    #@402
    move-object/16 v283, v0

    #@405
    .end local v283    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v283

    #@407
    check-cast v0, Landroid/content/Intent;

    #@409
    move-object/16 v283, v0

    #@40c
    .line 349
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40f
    move-result v6

    #@410
    if-eqz v6, :cond_12

    #@412
    const/16 v202, 0x1

    #@414
    .line 350
    .local v202, "finishTask":Z
    :goto_10
    move-object/from16 v0, p0

    #@416
    move-object/from16 v1, v73

    #@418
    move/from16 v2, v53

    #@41a
    move-object/from16 v3, v283

    #@41c
    move/from16 v4, v202

    #@41e
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    #@421
    move-result v0

    #@422
    move/16 v276, v0

    #@425
    .line 351
    .local v276, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@428
    .line 352
    move/from16 v0, v276

    #@42a
    if-eqz v0, :cond_13

    #@42c
    const/4 v6, 0x1

    #@42d
    :goto_11
    move-object/from16 v0, p3

    #@42f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@432
    .line 353
    const/4 v6, 0x1

    #@433
    return v6

    #@434
    .line 349
    .end local v202    # "finishTask":Z
    .end local v276    # "res":Z
    :cond_12
    const/16 v202, 0x0

    #@436
    .restart local v202    # "finishTask":Z
    goto :goto_10

    #@437
    .line 352
    .restart local v276    # "res":Z
    :cond_13
    const/4 v6, 0x0

    #@438
    goto :goto_11

    #@439
    .line 357
    .end local v53    # "resultCode":I
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v202    # "finishTask":Z
    .end local v276    # "res":Z
    :pswitch_b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@43c
    move-object/from16 v0, p2

    #@43e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@441
    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@444
    move-result-object v73

    #@445
    .line 359
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@448
    move-result-object v12

    #@449
    .line 360
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44c
    move-result v13

    #@44d
    .line 361
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    #@44f
    move-object/from16 v1, v73

    #@451
    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    #@454
    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@457
    .line 363
    const/4 v6, 0x1

    #@458
    return v6

    #@459
    .line 367
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@45c
    move-object/from16 v0, p2

    #@45e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@461
    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@464
    move-result-object v73

    #@465
    .line 369
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@467
    move-object/from16 v1, v73

    #@469
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    #@46c
    move-result v0

    #@46d
    move/16 v276, v0

    #@470
    .line 370
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@473
    .line 371
    move/from16 v0, v276

    #@475
    if-eqz v0, :cond_14

    #@477
    const/4 v6, 0x1

    #@478
    :goto_12
    move-object/from16 v0, p3

    #@47a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@47d
    .line 372
    const/4 v6, 0x1

    #@47e
    return v6

    #@47f
    .line 371
    :cond_14
    const/4 v6, 0x0

    #@480
    goto :goto_12

    #@481
    .line 376
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v276    # "res":Z
    :pswitch_d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@484
    move-object/from16 v0, p2

    #@486
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@489
    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@48c
    move-result-object v6

    #@48d
    .line 377
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    #@490
    move-result-object v46

    #@491
    .line 379
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    #@493
    move-object/from16 v1, v46

    #@495
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    #@498
    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49b
    .line 381
    const/4 v6, 0x1

    #@49c
    return v6

    #@49d
    .line 385
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@4a0
    move-object/from16 v0, p2

    #@4a2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a5
    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4a8
    move-result-object v73

    #@4a9
    .line 387
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@4ab
    move-object/from16 v1, v73

    #@4ad
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->releaseActivityInstance(Landroid/os/IBinder;)Z

    #@4b0
    move-result v0

    #@4b1
    move/16 v276, v0

    #@4b4
    .line 388
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b7
    .line 389
    move/from16 v0, v276

    #@4b9
    if-eqz v0, :cond_15

    #@4bb
    const/4 v6, 0x1

    #@4bc
    :goto_13
    move-object/from16 v0, p3

    #@4be
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@4c1
    .line 390
    const/4 v6, 0x1

    #@4c2
    return v6

    #@4c3
    .line 389
    :cond_15
    const/4 v6, 0x0

    #@4c4
    goto :goto_13

    #@4c5
    .line 394
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v276    # "res":Z
    :pswitch_f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@4c8
    move-object/from16 v0, p2

    #@4ca
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4cd
    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4d0
    move-result-object v6

    #@4d1
    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@4d4
    move-result-object v7

    #@4d5
    .line 396
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    #@4d7
    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    #@4da
    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4dd
    .line 398
    const/4 v6, 0x1

    #@4de
    return v6

    #@4df
    .line 402
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :pswitch_10
    const-string/jumbo v6, "android.app.IActivityManager"

    #@4e2
    move-object/from16 v0, p2

    #@4e4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e7
    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4ea
    move-result-object v73

    #@4eb
    .line 404
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@4ed
    move-object/from16 v1, v73

    #@4ef
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    #@4f2
    move-result v0

    #@4f3
    move/16 v276, v0

    #@4f6
    .line 405
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f9
    .line 406
    move/from16 v0, v276

    #@4fb
    if-eqz v0, :cond_16

    #@4fd
    const/4 v6, 0x1

    #@4fe
    :goto_14
    move-object/from16 v0, p3

    #@500
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@503
    .line 407
    const/4 v6, 0x1

    #@504
    return v6

    #@505
    .line 406
    :cond_16
    const/4 v6, 0x0

    #@506
    goto :goto_14

    #@507
    .line 412
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v276    # "res":Z
    :pswitch_11
    const-string/jumbo v6, "android.app.IActivityManager"

    #@50a
    move-object/from16 v0, p2

    #@50c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50f
    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@512
    move-result-object v179

    #@513
    .line 415
    .restart local v179    # "b":Landroid/os/IBinder;
    if-eqz v179, :cond_17

    #@515
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@518
    move-result-object v7

    #@519
    .line 416
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@51c
    move-result-object v32

    #@51d
    .line 417
    .local v32, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@520
    move-result-object v179

    #@521
    .line 419
    if-eqz v179, :cond_18

    #@523
    invoke-static/range {v179 .. v179}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    #@526
    move-result-object v33

    #@527
    .line 420
    :goto_16
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@529
    move-object/from16 v0, p2

    #@52b
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@52e
    move-result-object v34

    #@52f
    check-cast v34, Landroid/content/IntentFilter;

    #@531
    .line 421
    .local v34, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@534
    move-result-object v35

    #@535
    .line 422
    .local v35, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@538
    move-result v17

    #@539
    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    #@53b
    move-object/from16 v31, v7

    #@53d
    move/from16 v36, v17

    #@53f
    .line 423
    invoke-virtual/range {v30 .. v36}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    #@542
    move-result-object v9

    #@543
    .line 424
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@546
    .line 425
    if-eqz v9, :cond_19

    #@548
    .line 426
    const/4 v6, 0x1

    #@549
    move-object/from16 v0, p3

    #@54b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@54e
    .line 427
    const/4 v6, 0x0

    #@54f
    move-object/from16 v0, p3

    #@551
    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@554
    .line 431
    :goto_17
    const/4 v6, 0x1

    #@555
    return v6

    #@556
    .line 415
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    :cond_17
    const/4 v7, 0x0

    #@557
    .local v7, "app":Landroid/app/IApplicationThread;
    goto :goto_15

    #@558
    .line 419
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v32    # "packageName":Ljava/lang/String;
    :cond_18
    const/16 v33, 0x0

    #@55a
    .local v33, "rec":Landroid/content/IIntentReceiver;
    goto :goto_16

    #@55b
    .line 429
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v34    # "filter":Landroid/content/IntentFilter;
    .restart local v35    # "perm":Ljava/lang/String;
    :cond_19
    const/4 v6, 0x0

    #@55c
    move-object/from16 v0, p3

    #@55e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@561
    goto :goto_17

    #@562
    .line 436
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_12
    const-string/jumbo v6, "android.app.IActivityManager"

    #@565
    move-object/from16 v0, p2

    #@567
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56a
    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@56d
    move-result-object v179

    #@56e
    .line 438
    .restart local v179    # "b":Landroid/os/IBinder;
    if-nez v179, :cond_1a

    #@570
    .line 439
    const/4 v6, 0x1

    #@571
    return v6

    #@572
    .line 441
    :cond_1a
    invoke-static/range {v179 .. v179}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    #@575
    move-result-object v33

    #@576
    .line 442
    .local v33, "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    #@578
    move-object/from16 v1, v33

    #@57a
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    #@57d
    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@580
    .line 444
    const/4 v6, 0x1

    #@581
    return v6

    #@582
    .line 449
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_13
    const-string/jumbo v6, "android.app.IActivityManager"

    #@585
    move-object/from16 v0, p2

    #@587
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58a
    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@58d
    move-result-object v179

    #@58e
    .line 452
    .restart local v179    # "b":Landroid/os/IBinder;
    if-eqz v179, :cond_1b

    #@590
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@593
    move-result-object v7

    #@594
    .line 453
    :goto_18
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@596
    move-object/from16 v0, p2

    #@598
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@59b
    move-result-object v9

    #@59c
    check-cast v9, Landroid/content/Intent;

    #@59e
    .line 454
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5a1
    move-result-object v10

    #@5a2
    .line 455
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5a5
    move-result-object v179

    #@5a6
    .line 457
    if-eqz v179, :cond_1c

    #@5a8
    invoke-static/range {v179 .. v179}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    #@5ab
    move-result-object v52

    #@5ac
    .line 458
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5af
    move-result v53

    #@5b0
    .line 459
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5b3
    move-result-object v54

    #@5b4
    .line 460
    .local v54, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@5b7
    move-result-object v55

    #@5b8
    .line 461
    .local v55, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@5bb
    move-result-object v56

    #@5bc
    .line 462
    .local v56, "perms":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5bf
    move-result v57

    #@5c0
    .line 463
    .local v57, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@5c3
    move-result-object v16

    #@5c4
    .line 464
    .restart local v16    # "options":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c7
    move-result v6

    #@5c8
    if-eqz v6, :cond_1d

    #@5ca
    const/16 v59, 0x1

    #@5cc
    .line 465
    .local v59, "serialized":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5cf
    move-result v6

    #@5d0
    if-eqz v6, :cond_1e

    #@5d2
    const/16 v60, 0x1

    #@5d4
    .line 466
    .local v60, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d7
    move-result v17

    #@5d8
    .restart local v17    # "userId":I
    move-object/from16 v48, p0

    #@5da
    move-object/from16 v49, v7

    #@5dc
    move-object/from16 v50, v9

    #@5de
    move-object/from16 v51, v10

    #@5e0
    move-object/from16 v58, v16

    #@5e2
    move/from16 v61, v17

    #@5e4
    .line 467
    invoke-virtual/range {v48 .. v61}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    #@5e7
    move-result v0

    #@5e8
    move/16 v270, v0

    #@5eb
    .line 470
    .local v270, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ee
    .line 471
    move-object/from16 v0, p3

    #@5f0
    move/from16 v1, v270

    #@5f2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5f5
    .line 472
    const/4 v6, 0x1

    #@5f6
    return v6

    #@5f7
    .line 452
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v270    # "res":I
    :cond_1b
    const/4 v7, 0x0

    #@5f8
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_18

    #@5f9
    .line 457
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    :cond_1c
    const/16 v52, 0x0

    #@5fb
    .local v52, "resultTo":Landroid/content/IIntentReceiver;
    goto :goto_19

    #@5fc
    .line 464
    .end local v52    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v53    # "resultCode":I
    .restart local v54    # "resultData":Ljava/lang/String;
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    .restart local v56    # "perms":[Ljava/lang/String;
    .restart local v57    # "appOp":I
    :cond_1d
    const/16 v59, 0x0

    #@5fe
    .restart local v59    # "serialized":Z
    goto :goto_1a

    #@5ff
    .line 465
    :cond_1e
    const/16 v60, 0x0

    #@601
    .restart local v60    # "sticky":Z
    goto :goto_1b

    #@602
    .line 477
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_14
    const-string/jumbo v6, "android.app.IActivityManager"

    #@605
    move-object/from16 v0, p2

    #@607
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60a
    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@60d
    move-result-object v179

    #@60e
    .line 479
    .restart local v179    # "b":Landroid/os/IBinder;
    if-eqz v179, :cond_1f

    #@610
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@613
    move-result-object v7

    #@614
    .line 480
    :goto_1c
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@616
    move-object/from16 v0, p2

    #@618
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@61b
    move-result-object v9

    #@61c
    check-cast v9, Landroid/content/Intent;

    #@61e
    .line 481
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@621
    move-result v17

    #@622
    .line 482
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@624
    move/from16 v1, v17

    #@626
    invoke-virtual {v0, v7, v9, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    #@629
    .line 483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@62c
    .line 484
    const/4 v6, 0x1

    #@62d
    return v6

    #@62e
    .line 479
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_1f
    const/4 v7, 0x0

    #@62f
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_1c

    #@630
    .line 488
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_15
    const-string/jumbo v6, "android.app.IActivityManager"

    #@633
    move-object/from16 v0, p2

    #@635
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@638
    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@63b
    move-result-object v62

    #@63c
    .line 490
    .local v62, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63f
    move-result v53

    #@640
    .line 491
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@643
    move-result-object v54

    #@644
    .line 492
    .restart local v54    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@647
    move-result-object v55

    #@648
    .line 493
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@64b
    move-result v6

    #@64c
    if-eqz v6, :cond_21

    #@64e
    const/16 v66, 0x1

    #@650
    .line 494
    .local v66, "resultAbort":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@653
    move-result v67

    #@654
    .line 495
    .local v67, "intentFlags":I
    if-eqz v62, :cond_20

    #@656
    move-object/from16 v61, p0

    #@658
    move/from16 v63, v53

    #@65a
    move-object/from16 v64, v54

    #@65c
    move-object/from16 v65, v55

    #@65e
    .line 496
    invoke-virtual/range {v61 .. v67}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    #@661
    .line 498
    :cond_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@664
    .line 499
    const/4 v6, 0x1

    #@665
    return v6

    #@666
    .line 493
    .end local v66    # "resultAbort":Z
    .end local v67    # "intentFlags":I
    :cond_21
    const/16 v66, 0x0

    #@668
    .restart local v66    # "resultAbort":Z
    goto :goto_1d

    #@669
    .line 503
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v62    # "who":Landroid/os/IBinder;
    .end local v66    # "resultAbort":Z
    :pswitch_16
    const-string/jumbo v6, "android.app.IActivityManager"

    #@66c
    move-object/from16 v0, p2

    #@66e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@671
    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@674
    move-result-object v6

    #@675
    .line 504
    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@678
    move-result-object v7

    #@679
    .line 506
    .local v7, "app":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_22

    #@67b
    .line 507
    move-object/from16 v0, p0

    #@67d
    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    #@680
    .line 509
    :cond_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@683
    .line 510
    const/4 v6, 0x1

    #@684
    return v6

    #@685
    .line 514
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :pswitch_17
    const-string/jumbo v6, "android.app.IActivityManager"

    #@688
    move-object/from16 v0, p2

    #@68a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68d
    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@690
    move-result-object v73

    #@691
    .line 516
    .restart local v73    # "token":Landroid/os/IBinder;
    const/16 v39, 0x0

    #@693
    .line 517
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@696
    move-result v6

    #@697
    if-eqz v6, :cond_23

    #@699
    .line 518
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@69b
    move-object/from16 v0, p2

    #@69d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6a0
    move-result-object v39

    #@6a1
    .end local v39    # "config":Landroid/content/res/Configuration;
    check-cast v39, Landroid/content/res/Configuration;

    #@6a3
    .line 520
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a6
    move-result v6

    #@6a7
    if-eqz v6, :cond_25

    #@6a9
    const/4 v0, 0x1

    #@6aa
    move/16 v295, v0

    #@6ad
    .line 521
    .local v295, "stopProfiling":Z
    :goto_1e
    if-eqz v73, :cond_24

    #@6af
    .line 522
    move-object/from16 v0, p0

    #@6b1
    move-object/from16 v1, v73

    #@6b3
    move-object/from16 v2, v39

    #@6b5
    move/from16 v3, v295

    #@6b7
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    #@6ba
    .line 524
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6bd
    .line 525
    const/4 v6, 0x1

    #@6be
    return v6

    #@6bf
    .line 520
    .end local v295    # "stopProfiling":Z
    :cond_25
    const/4 v0, 0x0

    #@6c0
    move/16 v295, v0

    #@6c3
    .restart local v295    # "stopProfiling":Z
    goto :goto_1e

    #@6c4
    .line 529
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v295    # "stopProfiling":Z
    :pswitch_18
    const-string/jumbo v6, "android.app.IActivityManager"

    #@6c7
    move-object/from16 v0, p2

    #@6c9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6cc
    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6cf
    move-result-object v73

    #@6d0
    .line 531
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@6d2
    move-object/from16 v1, v73

    #@6d4
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    #@6d7
    .line 532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6da
    .line 533
    const/4 v6, 0x1

    #@6db
    return v6

    #@6dc
    .line 537
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_19
    const-string/jumbo v6, "android.app.IActivityManager"

    #@6df
    move-object/from16 v0, p2

    #@6e1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e4
    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6e7
    move-result-object v73

    #@6e8
    .line 539
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@6ea
    move-object/from16 v1, v73

    #@6ec
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    #@6ef
    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f2
    .line 541
    const/4 v6, 0x1

    #@6f3
    return v6

    #@6f4
    .line 545
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_1a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@6f7
    move-object/from16 v0, p2

    #@6f9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6fc
    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6ff
    move-result-object v73

    #@700
    .line 547
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@703
    move-result-object v234

    #@704
    .line 548
    .local v234, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    #@707
    move-result-object v254

    #@708
    .line 549
    .local v254, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@70a
    move-object/from16 v0, p2

    #@70c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@70f
    move-result-object v193

    #@710
    check-cast v193, Ljava/lang/CharSequence;

    #@712
    .line 550
    .local v193, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    #@714
    move-object/from16 v1, v73

    #@716
    move-object/from16 v2, v234

    #@718
    move-object/from16 v3, v254

    #@71a
    move-object/from16 v4, v193

    #@71c
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    #@71f
    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@722
    .line 552
    const/4 v6, 0x1

    #@723
    return v6

    #@724
    .line 556
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v193    # "description":Ljava/lang/CharSequence;
    .end local v234    # "map":Landroid/os/Bundle;
    .end local v254    # "persistentState":Landroid/os/PersistableBundle;
    :pswitch_1b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@727
    move-object/from16 v0, p2

    #@729
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72c
    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@72f
    move-result-object v73

    #@730
    .line 558
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@732
    move-object/from16 v1, v73

    #@734
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    #@737
    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@73a
    .line 560
    const/4 v6, 0x1

    #@73b
    return v6

    #@73c
    .line 564
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_1c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@73f
    move-object/from16 v0, p2

    #@741
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@744
    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@747
    move-result-object v73

    #@748
    .line 566
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@74a
    move-object/from16 v1, v73

    #@74c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    #@74f
    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@752
    .line 568
    const/4 v6, 0x1

    #@753
    return v6

    #@754
    .line 572
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_1d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@757
    move-object/from16 v0, p2

    #@759
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@75c
    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@75f
    move-result-object v73

    #@760
    .line 574
    .restart local v73    # "token":Landroid/os/IBinder;
    if-eqz v73, :cond_26

    #@762
    move-object/from16 v0, p0

    #@764
    move-object/from16 v1, v73

    #@766
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    #@769
    move-result-object v0

    #@76a
    move-object/16 v275, v0

    #@76d
    .line 575
    :goto_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@770
    .line 576
    move-object/from16 v0, p3

    #@772
    move-object/from16 v1, v275

    #@774
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@777
    .line 577
    const/4 v6, 0x1

    #@778
    return v6

    #@779
    .line 574
    :cond_26
    const/4 v0, 0x0

    #@77a
    move-object/16 v275, v0

    #@77d
    .local v275, "res":Ljava/lang/String;
    goto :goto_1f

    #@77e
    .line 581
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v275    # "res":Ljava/lang/String;
    :pswitch_1e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@781
    move-object/from16 v0, p2

    #@783
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@786
    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@789
    move-result-object v73

    #@78a
    .line 583
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@78c
    move-object/from16 v1, v73

    #@78e
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    #@791
    move-result-object v187

    #@792
    .line 584
    .local v187, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@795
    .line 585
    move-object/from16 v0, v187

    #@797
    move-object/from16 v1, p3

    #@799
    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@79c
    .line 586
    const/4 v6, 0x1

    #@79d
    return v6

    #@79e
    .line 590
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v187    # "cn":Landroid/content/ComponentName;
    :pswitch_1f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@7a1
    move-object/from16 v0, p2

    #@7a3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a6
    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7a9
    move-result-object v8

    #@7aa
    .line 592
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7ac
    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerNative;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    #@7af
    move-result-object v231

    #@7b0
    .line 593
    .local v231, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b3
    .line 594
    if-eqz v231, :cond_27

    #@7b5
    invoke-interface/range {v231 .. v231}, Ljava/util/List;->size()I

    #@7b8
    move-result v167

    #@7b9
    .line 595
    .local v167, "N":I
    :goto_20
    move-object/from16 v0, p3

    #@7bb
    move/from16 v1, v167

    #@7bd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7c0
    .line 597
    const/16 v205, 0x0

    #@7c2
    .local v205, "i":I
    :goto_21
    move/from16 v0, v205

    #@7c4
    move/from16 v1, v167

    #@7c6
    if-ge v0, v1, :cond_28

    #@7c8
    .line 598
    move-object/from16 v0, v231

    #@7ca
    move/from16 v1, v205

    #@7cc
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7cf
    move-result-object v0

    #@7d0
    move-object/16 v301, v0

    #@7d3
    move-object/from16 v0, v301

    #@7d5
    check-cast v0, Landroid/app/IAppTask;

    #@7d7
    move-object/16 v301, v0

    #@7da
    .line 599
    .local v301, "task":Landroid/app/IAppTask;
    invoke-interface/range {v301 .. v301}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    #@7dd
    move-result-object v6

    #@7de
    move-object/from16 v0, p3

    #@7e0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@7e3
    .line 597
    add-int/lit8 v205, v205, 0x1

    #@7e5
    goto :goto_21

    #@7e6
    .line 594
    .end local v167    # "N":I
    .end local v205    # "i":I
    .end local v301    # "task":Landroid/app/IAppTask;
    :cond_27
    const/16 v167, -0x1

    #@7e8
    .restart local v167    # "N":I
    goto :goto_20

    #@7e9
    .line 601
    .restart local v205    # "i":I
    :cond_28
    const/4 v6, 0x1

    #@7ea
    return v6

    #@7eb
    .line 605
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v167    # "N":I
    .end local v205    # "i":I
    .end local v231    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    :pswitch_20
    const-string/jumbo v6, "android.app.IActivityManager"

    #@7ee
    move-object/from16 v0, p2

    #@7f0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f3
    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7f6
    move-result-object v170

    #@7f7
    .line 607
    .local v170, "activityToken":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7f9
    move-object/from16 v0, p2

    #@7fb
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7fe
    move-result-object v9

    #@7ff
    check-cast v9, Landroid/content/Intent;

    #@801
    .line 609
    .restart local v9    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@803
    move-object/from16 v0, p2

    #@805
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@808
    move-result-object v192

    #@809
    check-cast v192, Landroid/app/ActivityManager$TaskDescription;

    #@80b
    .line 610
    .local v192, "descr":Landroid/app/ActivityManager$TaskDescription;
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@80d
    move-object/from16 v0, p2

    #@80f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@812
    move-result-object v0

    #@813
    move-object/16 v304, v0

    #@816
    move-object/from16 v0, v304

    #@818
    check-cast v0, Landroid/graphics/Bitmap;

    #@81a
    move-object/16 v304, v0

    #@81d
    .line 611
    .local v304, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    #@81f
    move-object/from16 v1, v170

    #@821
    move-object/from16 v2, v192

    #@823
    move-object/from16 v3, v304

    #@825
    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    #@828
    move-result v0

    #@829
    move/16 v270, v0

    #@82c
    .line 612
    .restart local v270    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@82f
    .line 613
    move-object/from16 v0, p3

    #@831
    move/from16 v1, v270

    #@833
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@836
    .line 614
    const/4 v6, 0x1

    #@837
    return v6

    #@838
    .line 618
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v170    # "activityToken":Landroid/os/IBinder;
    .end local v192    # "descr":Landroid/app/ActivityManager$TaskDescription;
    .end local v270    # "res":I
    .end local v304    # "thumbnail":Landroid/graphics/Bitmap;
    :pswitch_21
    const-string/jumbo v6, "android.app.IActivityManager"

    #@83b
    move-object/from16 v0, p2

    #@83d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@840
    .line 619
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    #@843
    move-result-object v0

    #@844
    move-object/16 v288, v0

    #@847
    .line 620
    .local v288, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@84a
    .line 621
    const/4 v6, 0x0

    #@84b
    move-object/from16 v0, v288

    #@84d
    move-object/from16 v1, p3

    #@84f
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    #@852
    .line 622
    const/4 v6, 0x1

    #@853
    return v6

    #@854
    .line 626
    .end local v288    # "size":Landroid/graphics/Point;
    :pswitch_22
    const-string/jumbo v6, "android.app.IActivityManager"

    #@857
    move-object/from16 v0, p2

    #@859
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@85c
    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@85f
    move-result v236

    #@860
    .line 628
    .local v236, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@863
    move-result v83

    #@864
    .line 629
    .local v83, "fl":I
    move-object/from16 v0, p0

    #@866
    move/from16 v1, v236

    #@868
    move/from16 v2, v83

    #@86a
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    #@86d
    move-result-object v229

    #@86e
    .line 630
    .local v229, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@871
    .line 631
    if-eqz v229, :cond_29

    #@873
    invoke-interface/range {v229 .. v229}, Ljava/util/List;->size()I

    #@876
    move-result v167

    #@877
    .line 632
    .restart local v167    # "N":I
    :goto_22
    move-object/from16 v0, p3

    #@879
    move/from16 v1, v167

    #@87b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@87e
    .line 634
    const/16 v205, 0x0

    #@880
    .restart local v205    # "i":I
    :goto_23
    move/from16 v0, v205

    #@882
    move/from16 v1, v167

    #@884
    if-ge v0, v1, :cond_2a

    #@886
    .line 635
    move-object/from16 v0, v229

    #@888
    move/from16 v1, v205

    #@88a
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@88d
    move-result-object v211

    #@88e
    check-cast v211, Landroid/app/ActivityManager$RunningTaskInfo;

    #@890
    .line 636
    .local v211, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    #@891
    move-object/from16 v0, v211

    #@893
    move-object/from16 v1, p3

    #@895
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@898
    .line 634
    add-int/lit8 v205, v205, 0x1

    #@89a
    goto :goto_23

    #@89b
    .line 631
    .end local v167    # "N":I
    .end local v205    # "i":I
    .end local v211    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_29
    const/16 v167, -0x1

    #@89d
    .restart local v167    # "N":I
    goto :goto_22

    #@89e
    .line 638
    .restart local v205    # "i":I
    :cond_2a
    const/4 v6, 0x1

    #@89f
    return v6

    #@8a0
    .line 642
    .end local v83    # "fl":I
    .end local v167    # "N":I
    .end local v205    # "i":I
    .end local v229    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v236    # "maxNum":I
    :pswitch_23
    const-string/jumbo v6, "android.app.IActivityManager"

    #@8a3
    move-object/from16 v0, p2

    #@8a5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8a8
    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8ab
    move-result v236

    #@8ac
    .line 644
    .restart local v236    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8af
    move-result v83

    #@8b0
    .line 645
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b3
    move-result v17

    #@8b4
    .line 646
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@8b6
    move/from16 v1, v236

    #@8b8
    move/from16 v2, v83

    #@8ba
    move/from16 v3, v17

    #@8bc
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Ljava/util/List;

    #@8bf
    move-result-object v226

    #@8c0
    .line 648
    .local v226, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c3
    .line 649
    move-object/from16 v0, p3

    #@8c5
    move-object/from16 v1, v226

    #@8c7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@8ca
    .line 650
    const/4 v6, 0x1

    #@8cb
    return v6

    #@8cc
    .line 654
    .end local v17    # "userId":I
    .end local v83    # "fl":I
    .end local v226    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v236    # "maxNum":I
    :pswitch_24
    const-string/jumbo v6, "android.app.IActivityManager"

    #@8cf
    move-object/from16 v0, p2

    #@8d1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d4
    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d7
    move-result v74

    #@8d8
    .line 656
    .local v74, "id":I
    move-object/from16 v0, p0

    #@8da
    move/from16 v1, v74

    #@8dc
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    #@8df
    move-result-object v0

    #@8e0
    move-object/16 v303, v0

    #@8e3
    .line 657
    .local v303, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8e6
    .line 658
    move-object/from16 v0, v303

    #@8e8
    if-eqz v0, :cond_2b

    #@8ea
    .line 659
    const/4 v6, 0x1

    #@8eb
    move-object/from16 v0, p3

    #@8ed
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@8f0
    .line 660
    const/4 v6, 0x1

    #@8f1
    move-object/from16 v0, v303

    #@8f3
    move-object/from16 v1, p3

    #@8f5
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    #@8f8
    .line 664
    :goto_24
    const/4 v6, 0x1

    #@8f9
    return v6

    #@8fa
    .line 662
    :cond_2b
    const/4 v6, 0x0

    #@8fb
    move-object/from16 v0, p3

    #@8fd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@900
    goto :goto_24

    #@901
    .line 668
    .end local v74    # "id":I
    .end local v303    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :pswitch_25
    const-string/jumbo v6, "android.app.IActivityManager"

    #@904
    move-object/from16 v0, p2

    #@906
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@909
    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@90c
    move-result v236

    #@90d
    .line 670
    .restart local v236    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@910
    move-result v83

    #@911
    .line 671
    .restart local v83    # "fl":I
    move-object/from16 v0, p0

    #@913
    move/from16 v1, v236

    #@915
    move/from16 v2, v83

    #@917
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    #@91a
    move-result-object v228

    #@91b
    .line 672
    .local v228, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@91e
    .line 673
    if-eqz v228, :cond_2c

    #@920
    invoke-interface/range {v228 .. v228}, Ljava/util/List;->size()I

    #@923
    move-result v167

    #@924
    .line 674
    .restart local v167    # "N":I
    :goto_25
    move-object/from16 v0, p3

    #@926
    move/from16 v1, v167

    #@928
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@92b
    .line 676
    const/16 v205, 0x0

    #@92d
    .restart local v205    # "i":I
    :goto_26
    move/from16 v0, v205

    #@92f
    move/from16 v1, v167

    #@931
    if-ge v0, v1, :cond_2d

    #@933
    .line 677
    move-object/from16 v0, v228

    #@935
    move/from16 v1, v205

    #@937
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@93a
    move-result-object v210

    #@93b
    check-cast v210, Landroid/app/ActivityManager$RunningServiceInfo;

    #@93d
    .line 678
    .local v210, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    #@93e
    move-object/from16 v0, v210

    #@940
    move-object/from16 v1, p3

    #@942
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@945
    .line 676
    add-int/lit8 v205, v205, 0x1

    #@947
    goto :goto_26

    #@948
    .line 673
    .end local v167    # "N":I
    .end local v205    # "i":I
    .end local v210    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2c
    const/16 v167, -0x1

    #@94a
    .restart local v167    # "N":I
    goto :goto_25

    #@94b
    .line 680
    .restart local v205    # "i":I
    :cond_2d
    const/4 v6, 0x1

    #@94c
    return v6

    #@94d
    .line 684
    .end local v83    # "fl":I
    .end local v167    # "N":I
    .end local v205    # "i":I
    .end local v228    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v236    # "maxNum":I
    :pswitch_26
    const-string/jumbo v6, "android.app.IActivityManager"

    #@950
    move-object/from16 v0, p2

    #@952
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@955
    .line 685
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    #@958
    move-result-object v225

    #@959
    .line 686
    .local v225, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@95c
    .line 687
    move-object/from16 v0, p3

    #@95e
    move-object/from16 v1, v225

    #@960
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@963
    .line 688
    const/4 v6, 0x1

    #@964
    return v6

    #@965
    .line 692
    .end local v225    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_27
    const-string/jumbo v6, "android.app.IActivityManager"

    #@968
    move-object/from16 v0, p2

    #@96a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96d
    .line 693
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    #@970
    move-result-object v227

    #@971
    .line 694
    .local v227, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@974
    .line 695
    move-object/from16 v0, p3

    #@976
    move-object/from16 v1, v227

    #@978
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@97b
    .line 696
    const/4 v6, 0x1

    #@97c
    return v6

    #@97d
    .line 700
    .end local v227    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_28
    const-string/jumbo v6, "android.app.IActivityManager"

    #@980
    move-object/from16 v0, p2

    #@982
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@985
    .line 701
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    #@988
    move-result-object v232

    #@989
    .line 702
    .local v232, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@98c
    .line 703
    move-object/from16 v0, p3

    #@98e
    move-object/from16 v1, v232

    #@990
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@993
    .line 704
    const/4 v6, 0x1

    #@994
    return v6

    #@995
    .line 708
    .end local v232    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_29
    const-string/jumbo v6, "android.app.IActivityManager"

    #@998
    move-object/from16 v0, p2

    #@99a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@99d
    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9a0
    move-result v0

    #@9a1
    move/16 v300, v0

    #@9a4
    .line 710
    .local v300, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9a7
    move-result v83

    #@9a8
    .line 711
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9ab
    move-result v6

    #@9ac
    if-eqz v6, :cond_2e

    #@9ae
    .line 712
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9b0
    move-object/from16 v0, p2

    #@9b2
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9b5
    move-result-object v16

    #@9b6
    check-cast v16, Landroid/os/Bundle;

    #@9b8
    .line 713
    :goto_27
    move-object/from16 v0, p0

    #@9ba
    move/from16 v1, v300

    #@9bc
    move/from16 v2, v83

    #@9be
    move-object/from16 v3, v16

    #@9c0
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    #@9c3
    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c6
    .line 715
    const/4 v6, 0x1

    #@9c7
    return v6

    #@9c8
    .line 712
    :cond_2e
    const/16 v16, 0x0

    #@9ca
    .local v16, "options":Landroid/os/Bundle;
    goto :goto_27

    #@9cb
    .line 719
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v83    # "fl":I
    .end local v300    # "task":I
    :pswitch_2a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@9ce
    move-object/from16 v0, p2

    #@9d0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d3
    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9d6
    move-result-object v73

    #@9d7
    .line 721
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9da
    move-result v6

    #@9db
    if-eqz v6, :cond_2f

    #@9dd
    const/16 v241, 0x1

    #@9df
    .line 722
    .local v241, "nonRoot":Z
    :goto_28
    move-object/from16 v0, p0

    #@9e1
    move-object/from16 v1, v73

    #@9e3
    move/from16 v2, v241

    #@9e5
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    #@9e8
    move-result v0

    #@9e9
    move/16 v276, v0

    #@9ec
    .line 723
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9ef
    .line 724
    move/from16 v0, v276

    #@9f1
    if-eqz v0, :cond_30

    #@9f3
    const/4 v6, 0x1

    #@9f4
    :goto_29
    move-object/from16 v0, p3

    #@9f6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@9f9
    .line 725
    const/4 v6, 0x1

    #@9fa
    return v6

    #@9fb
    .line 721
    .end local v241    # "nonRoot":Z
    .end local v276    # "res":Z
    :cond_2f
    const/16 v241, 0x0

    #@9fd
    .restart local v241    # "nonRoot":Z
    goto :goto_28

    #@9fe
    .line 724
    .restart local v276    # "res":Z
    :cond_30
    const/4 v6, 0x0

    #@9ff
    goto :goto_29

    #@a00
    .line 729
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v241    # "nonRoot":Z
    .end local v276    # "res":Z
    :pswitch_2b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@a03
    move-object/from16 v0, p2

    #@a05
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a08
    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a0b
    move-result v0

    #@a0c
    move/16 v300, v0

    #@a0f
    .line 731
    .restart local v300    # "task":I
    move-object/from16 v0, p0

    #@a11
    move/from16 v1, v300

    #@a13
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    #@a16
    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a19
    .line 733
    const/4 v6, 0x1

    #@a1a
    return v6

    #@a1b
    .line 737
    .end local v300    # "task":I
    :pswitch_2c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@a1e
    move-object/from16 v0, p2

    #@a20
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a23
    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a26
    move-result v0

    #@a27
    move/16 v302, v0

    #@a2a
    .line 739
    .restart local v302    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a2d
    move-result v0

    #@a2e
    move/16 v293, v0

    #@a31
    .line 740
    .local v293, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a34
    move-result v6

    #@a35
    if-eqz v6, :cond_31

    #@a37
    const/4 v0, 0x1

    #@a38
    move/16 v305, v0

    #@a3b
    .line 741
    .local v305, "toTop":Z
    :goto_2a
    move-object/from16 v0, p0

    #@a3d
    move/from16 v1, v302

    #@a3f
    move/from16 v2, v293

    #@a41
    move/from16 v3, v305

    #@a43
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    #@a46
    .line 742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a49
    .line 743
    const/4 v6, 0x1

    #@a4a
    return v6

    #@a4b
    .line 740
    .end local v305    # "toTop":Z
    :cond_31
    const/4 v0, 0x0

    #@a4c
    move/16 v305, v0

    #@a4f
    .restart local v305    # "toTop":Z
    goto :goto_2a

    #@a50
    .line 747
    .end local v293    # "stackId":I
    .end local v302    # "taskId":I
    .end local v305    # "toTop":Z
    :pswitch_2d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@a53
    move-object/from16 v0, p2

    #@a55
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a58
    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a5b
    move-result v0

    #@a5c
    move/16 v293, v0

    #@a5f
    .line 749
    .restart local v293    # "stackId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a61
    move-object/from16 v0, p2

    #@a63
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a66
    move-result-object v0

    #@a67
    move-object/16 v265, v0

    #@a6a
    move-object/from16 v0, v265

    #@a6c
    check-cast v0, Landroid/graphics/Rect;

    #@a6e
    move-object/16 v265, v0

    #@a71
    .line 750
    .local v265, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@a73
    move/from16 v1, v293

    #@a75
    move-object/from16 v2, v265

    #@a77
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeStack(ILandroid/graphics/Rect;)V

    #@a7a
    .line 751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a7d
    .line 752
    const/4 v6, 0x1

    #@a7e
    return v6

    #@a7f
    .line 756
    .end local v265    # "r":Landroid/graphics/Rect;
    .end local v293    # "stackId":I
    :pswitch_2e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@a82
    move-object/from16 v0, p2

    #@a84
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a87
    .line 757
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAllStackInfos()Ljava/util/List;

    #@a8a
    move-result-object v230

    #@a8b
    .line 758
    .local v230, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8e
    .line 759
    move-object/from16 v0, p3

    #@a90
    move-object/from16 v1, v230

    #@a92
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a95
    .line 760
    const/4 v6, 0x1

    #@a96
    return v6

    #@a97
    .line 764
    .end local v230    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :pswitch_2f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@a9a
    move-object/from16 v0, p2

    #@a9c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a9f
    .line 765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aa2
    move-result v0

    #@aa3
    move/16 v293, v0

    #@aa6
    .line 766
    .restart local v293    # "stackId":I
    move-object/from16 v0, p0

    #@aa8
    move/from16 v1, v293

    #@aaa
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    #@aad
    move-result-object v212

    #@aae
    .line 767
    .local v212, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ab1
    .line 768
    if-eqz v212, :cond_32

    #@ab3
    .line 769
    const/4 v6, 0x1

    #@ab4
    move-object/from16 v0, p3

    #@ab6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@ab9
    .line 770
    const/4 v6, 0x0

    #@aba
    move-object/from16 v0, v212

    #@abc
    move-object/from16 v1, p3

    #@abe
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@ac1
    .line 774
    :goto_2b
    const/4 v6, 0x1

    #@ac2
    return v6

    #@ac3
    .line 772
    :cond_32
    const/4 v6, 0x0

    #@ac4
    move-object/from16 v0, p3

    #@ac6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@ac9
    goto :goto_2b

    #@aca
    .line 778
    .end local v212    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v293    # "stackId":I
    :pswitch_30
    const-string/jumbo v6, "android.app.IActivityManager"

    #@acd
    move-object/from16 v0, p2

    #@acf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ad2
    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad5
    move-result v0

    #@ad6
    move/16 v302, v0

    #@ad9
    .line 780
    .restart local v302    # "taskId":I
    move-object/from16 v0, p0

    #@adb
    move/from16 v1, v302

    #@add
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInHomeStack(I)Z

    #@ae0
    move-result v218

    #@ae1
    .line 781
    .local v218, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ae4
    .line 782
    if-eqz v218, :cond_33

    #@ae6
    const/4 v6, 0x1

    #@ae7
    :goto_2c
    move-object/from16 v0, p3

    #@ae9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@aec
    .line 783
    const/4 v6, 0x1

    #@aed
    return v6

    #@aee
    .line 782
    :cond_33
    const/4 v6, 0x0

    #@aef
    goto :goto_2c

    #@af0
    .line 787
    .end local v218    # "isInHomeStack":Z
    .end local v302    # "taskId":I
    :pswitch_31
    const-string/jumbo v6, "android.app.IActivityManager"

    #@af3
    move-object/from16 v0, p2

    #@af5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af8
    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@afb
    move-result v0

    #@afc
    move/16 v293, v0

    #@aff
    .line 789
    .restart local v293    # "stackId":I
    move-object/from16 v0, p0

    #@b01
    move/from16 v1, v293

    #@b03
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    #@b06
    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b09
    .line 791
    const/4 v6, 0x1

    #@b0a
    return v6

    #@b0b
    .line 795
    .end local v293    # "stackId":I
    :pswitch_32
    const-string/jumbo v6, "android.app.IActivityManager"

    #@b0e
    move-object/from16 v0, p2

    #@b10
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b13
    .line 796
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFocusedStackId()I

    #@b16
    move-result v204

    #@b17
    .line 797
    .local v204, "focusedStackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b1a
    .line 798
    move-object/from16 v0, p3

    #@b1c
    move/from16 v1, v204

    #@b1e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b21
    .line 799
    const/4 v6, 0x1

    #@b22
    return v6

    #@b23
    .line 803
    .end local v204    # "focusedStackId":I
    :pswitch_33
    const-string/jumbo v6, "android.app.IActivityManager"

    #@b26
    move-object/from16 v0, p2

    #@b28
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2b
    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b2e
    move-result-object v73

    #@b2f
    .line 805
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-static/range {v73 .. v73}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    #@b32
    move-result-object v6

    #@b33
    move-object/from16 v0, p0

    #@b35
    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    #@b38
    .line 806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b3b
    .line 807
    const/4 v6, 0x1

    #@b3c
    return v6

    #@b3d
    .line 811
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_34
    const-string/jumbo v6, "android.app.IActivityManager"

    #@b40
    move-object/from16 v0, p2

    #@b42
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b45
    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b48
    move-result-object v73

    #@b49
    .line 813
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b4c
    move-result v6

    #@b4d
    if-eqz v6, :cond_34

    #@b4f
    const/16 v246, 0x1

    #@b51
    .line 814
    .local v246, "onlyRoot":Z
    :goto_2d
    if-eqz v73, :cond_35

    #@b53
    .line 815
    move-object/from16 v0, p0

    #@b55
    move-object/from16 v1, v73

    #@b57
    move/from16 v2, v246

    #@b59
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    #@b5c
    move-result v0

    #@b5d
    move/16 v270, v0

    #@b60
    .line 816
    .restart local v270    # "res":I
    :goto_2e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b63
    .line 817
    move-object/from16 v0, p3

    #@b65
    move/from16 v1, v270

    #@b67
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b6a
    .line 818
    const/4 v6, 0x1

    #@b6b
    return v6

    #@b6c
    .line 813
    .end local v246    # "onlyRoot":Z
    .end local v270    # "res":I
    :cond_34
    const/16 v246, 0x0

    #@b6e
    .restart local v246    # "onlyRoot":Z
    goto :goto_2d

    #@b6f
    .line 815
    :cond_35
    const/4 v0, -0x1

    #@b70
    move/16 v270, v0

    #@b73
    .restart local v270    # "res":I
    goto :goto_2e

    #@b74
    .line 822
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v246    # "onlyRoot":Z
    .end local v270    # "res":I
    :pswitch_35
    const-string/jumbo v6, "android.app.IActivityManager"

    #@b77
    move-object/from16 v0, p2

    #@b79
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b7c
    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b7f
    move-result-object v179

    #@b80
    .line 824
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@b83
    move-result-object v7

    #@b84
    .line 825
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b87
    move-result-object v107

    #@b88
    .line 826
    .local v107, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b8b
    move-result v17

    #@b8c
    .line 827
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b8f
    move-result v6

    #@b90
    if-eqz v6, :cond_36

    #@b92
    const/4 v0, 0x1

    #@b93
    move/16 v292, v0

    #@b96
    .line 828
    .local v292, "stable":Z
    :goto_2f
    move-object/from16 v0, p0

    #@b98
    move-object/from16 v1, v107

    #@b9a
    move/from16 v2, v17

    #@b9c
    move/from16 v3, v292

    #@b9e
    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    #@ba1
    move-result-object v191

    #@ba2
    .line 829
    .local v191, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ba5
    .line 830
    if-eqz v191, :cond_37

    #@ba7
    .line 831
    const/4 v6, 0x1

    #@ba8
    move-object/from16 v0, p3

    #@baa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@bad
    .line 832
    const/4 v6, 0x0

    #@bae
    move-object/from16 v0, v191

    #@bb0
    move-object/from16 v1, p3

    #@bb2
    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@bb5
    .line 836
    :goto_30
    const/4 v6, 0x1

    #@bb6
    return v6

    #@bb7
    .line 827
    .end local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v292    # "stable":Z
    :cond_36
    const/4 v0, 0x0

    #@bb8
    move/16 v292, v0

    #@bbb
    .restart local v292    # "stable":Z
    goto :goto_2f

    #@bbc
    .line 834
    .restart local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_37
    const/4 v6, 0x0

    #@bbd
    move-object/from16 v0, p3

    #@bbf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@bc2
    goto :goto_30

    #@bc3
    .line 840
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v107    # "name":Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v292    # "stable":Z
    :pswitch_36
    const-string/jumbo v6, "android.app.IActivityManager"

    #@bc6
    move-object/from16 v0, p2

    #@bc8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bcb
    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bce
    move-result-object v107

    #@bcf
    .line 842
    .restart local v107    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bd2
    move-result v17

    #@bd3
    .line 843
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@bd6
    move-result-object v73

    #@bd7
    .line 844
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@bd9
    move-object/from16 v1, v107

    #@bdb
    move/from16 v2, v17

    #@bdd
    move-object/from16 v3, v73

    #@bdf
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    #@be2
    move-result-object v191

    #@be3
    .line 845
    .restart local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@be6
    .line 846
    if-eqz v191, :cond_38

    #@be8
    .line 847
    const/4 v6, 0x1

    #@be9
    move-object/from16 v0, p3

    #@beb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@bee
    .line 848
    const/4 v6, 0x0

    #@bef
    move-object/from16 v0, v191

    #@bf1
    move-object/from16 v1, p3

    #@bf3
    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@bf6
    .line 852
    :goto_31
    const/4 v6, 0x1

    #@bf7
    return v6

    #@bf8
    .line 850
    :cond_38
    const/4 v6, 0x0

    #@bf9
    move-object/from16 v0, p3

    #@bfb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@bfe
    goto :goto_31

    #@bff
    .line 856
    .end local v17    # "userId":I
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v107    # "name":Ljava/lang/String;
    .end local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :pswitch_37
    const-string/jumbo v6, "android.app.IActivityManager"

    #@c02
    move-object/from16 v0, p2

    #@c04
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c07
    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c0a
    move-result-object v179

    #@c0b
    .line 858
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@c0e
    move-result-object v7

    #@c0f
    .line 860
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c11
    move-object/from16 v0, p2

    #@c13
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@c16
    move-result-object v0

    #@c17
    move-object/16 v262, v0

    #@c1a
    .line 861
    .local v262, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    #@c1c
    move-object/from16 v1, v262

    #@c1e
    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    #@c21
    .line 862
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c24
    .line 863
    const/4 v6, 0x1

    #@c25
    return v6

    #@c26
    .line 867
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v262    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_38
    const-string/jumbo v6, "android.app.IActivityManager"

    #@c29
    move-object/from16 v0, p2

    #@c2b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c2e
    .line 868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c31
    move-result-object v179

    #@c32
    .line 869
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c35
    move-result v0

    #@c36
    move/16 v291, v0

    #@c39
    .line 870
    .local v291, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c3c
    move-result v0

    #@c3d
    move/16 v307, v0

    #@c40
    .line 871
    .local v307, "unstable":I
    move-object/from16 v0, p0

    #@c42
    move-object/from16 v1, v179

    #@c44
    move/from16 v2, v291

    #@c46
    move/from16 v3, v307

    #@c48
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    #@c4b
    move-result v0

    #@c4c
    move/16 v276, v0

    #@c4f
    .line 872
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c52
    .line 873
    move/from16 v0, v276

    #@c54
    if-eqz v0, :cond_39

    #@c56
    const/4 v6, 0x1

    #@c57
    :goto_32
    move-object/from16 v0, p3

    #@c59
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@c5c
    .line 874
    const/4 v6, 0x1

    #@c5d
    return v6

    #@c5e
    .line 873
    :cond_39
    const/4 v6, 0x0

    #@c5f
    goto :goto_32

    #@c60
    .line 878
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v276    # "res":Z
    .end local v291    # "stable":I
    .end local v307    # "unstable":I
    :pswitch_39
    const-string/jumbo v6, "android.app.IActivityManager"

    #@c63
    move-object/from16 v0, p2

    #@c65
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c68
    .line 879
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c6b
    move-result-object v179

    #@c6c
    .line 880
    .restart local v179    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@c6e
    move-object/from16 v1, v179

    #@c70
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    #@c73
    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c76
    .line 882
    const/4 v6, 0x1

    #@c77
    return v6

    #@c78
    .line 886
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_3a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@c7b
    move-object/from16 v0, p2

    #@c7d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c80
    .line 887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c83
    move-result-object v179

    #@c84
    .line 888
    .restart local v179    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@c86
    move-object/from16 v1, v179

    #@c88
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    #@c8b
    .line 889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c8e
    .line 890
    const/4 v6, 0x1

    #@c8f
    return v6

    #@c90
    .line 894
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_3b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@c93
    move-object/from16 v0, p2

    #@c95
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c98
    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c9b
    move-result-object v179

    #@c9c
    .line 896
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c9f
    move-result v6

    #@ca0
    if-eqz v6, :cond_3a

    #@ca2
    const/4 v0, 0x1

    #@ca3
    move/16 v292, v0

    #@ca6
    .line 897
    .restart local v292    # "stable":Z
    :goto_33
    move-object/from16 v0, p0

    #@ca8
    move-object/from16 v1, v179

    #@caa
    move/from16 v2, v292

    #@cac
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    #@caf
    .line 898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cb2
    .line 899
    const/4 v6, 0x1

    #@cb3
    return v6

    #@cb4
    .line 896
    .end local v292    # "stable":Z
    :cond_3a
    const/4 v0, 0x0

    #@cb5
    move/16 v292, v0

    #@cb8
    .restart local v292    # "stable":Z
    goto :goto_33

    #@cb9
    .line 903
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v292    # "stable":Z
    :pswitch_3c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@cbc
    move-object/from16 v0, p2

    #@cbe
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cc1
    .line 904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cc4
    move-result-object v107

    #@cc5
    .line 905
    .restart local v107    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@cc8
    move-result-object v73

    #@cc9
    .line 906
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@ccb
    move-object/from16 v1, v107

    #@ccd
    move-object/from16 v2, v73

    #@ccf
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    #@cd2
    .line 907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cd5
    .line 908
    const/4 v6, 0x1

    #@cd6
    return v6

    #@cd7
    .line 912
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v107    # "name":Ljava/lang/String;
    :pswitch_3d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@cda
    move-object/from16 v0, p2

    #@cdc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cdf
    .line 913
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ce1
    move-object/from16 v0, p2

    #@ce3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ce6
    move-result-object v188

    #@ce7
    check-cast v188, Landroid/content/ComponentName;

    #@ce9
    .line 914
    .local v188, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@ceb
    move-object/from16 v1, v188

    #@ced
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    #@cf0
    move-result-object v0

    #@cf1
    move-object/16 v256, v0

    #@cf4
    .line 915
    .local v256, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cf7
    .line 916
    move-object/from16 v0, v256

    #@cf9
    move-object/from16 v1, p3

    #@cfb
    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    #@cfe
    .line 917
    const/4 v6, 0x1

    #@cff
    return v6

    #@d00
    .line 921
    .end local v188    # "comp":Landroid/content/ComponentName;
    .end local v256    # "pi":Landroid/app/PendingIntent;
    :pswitch_3e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@d03
    move-object/from16 v0, p2

    #@d05
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d08
    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d0b
    move-result-object v179

    #@d0c
    .line 923
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@d0f
    move-result-object v7

    #@d10
    .line 924
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d12
    move-object/from16 v0, p2

    #@d14
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d17
    move-result-object v70

    #@d18
    check-cast v70, Landroid/content/Intent;

    #@d1a
    .line 925
    .local v70, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d1d
    move-result-object v10

    #@d1e
    .line 926
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d21
    move-result-object v8

    #@d22
    .line 927
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d25
    move-result v17

    #@d26
    .restart local v17    # "userId":I
    move-object/from16 v68, p0

    #@d28
    move-object/from16 v69, v7

    #@d2a
    move-object/from16 v71, v10

    #@d2c
    move-object/from16 v72, v8

    #@d2e
    move/from16 v73, v17

    #@d30
    .line 928
    invoke-virtual/range {v68 .. v73}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    #@d33
    move-result-object v187

    #@d34
    .line 929
    .restart local v187    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d37
    .line 930
    move-object/from16 v0, v187

    #@d39
    move-object/from16 v1, p3

    #@d3b
    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@d3e
    .line 931
    const/4 v6, 0x1

    #@d3f
    return v6

    #@d40
    .line 935
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v187    # "cn":Landroid/content/ComponentName;
    :pswitch_3f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@d43
    move-object/from16 v0, p2

    #@d45
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d48
    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d4b
    move-result-object v179

    #@d4c
    .line 937
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@d4f
    move-result-object v7

    #@d50
    .line 938
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d52
    move-object/from16 v0, p2

    #@d54
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d57
    move-result-object v70

    #@d58
    check-cast v70, Landroid/content/Intent;

    #@d5a
    .line 939
    .restart local v70    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d5d
    move-result-object v10

    #@d5e
    .line 940
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d61
    move-result v17

    #@d62
    .line 941
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@d64
    move-object/from16 v1, v70

    #@d66
    move/from16 v2, v17

    #@d68
    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    #@d6b
    move-result v0

    #@d6c
    move/16 v270, v0

    #@d6f
    .line 942
    .restart local v270    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d72
    .line 943
    move-object/from16 v0, p3

    #@d74
    move/from16 v1, v270

    #@d76
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d79
    .line 944
    const/4 v6, 0x1

    #@d7a
    return v6

    #@d7b
    .line 948
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v270    # "res":I
    :pswitch_40
    const-string/jumbo v6, "android.app.IActivityManager"

    #@d7e
    move-object/from16 v0, p2

    #@d80
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d83
    .line 949
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@d86
    move-result-object v72

    #@d87
    .line 950
    .local v72, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d8a
    move-result-object v73

    #@d8b
    .line 951
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d8e
    move-result v0

    #@d8f
    move/16 v294, v0

    #@d92
    .line 952
    .local v294, "startId":I
    move-object/from16 v0, p0

    #@d94
    move-object/from16 v1, v72

    #@d96
    move-object/from16 v2, v73

    #@d98
    move/from16 v3, v294

    #@d9a
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    #@d9d
    move-result v0

    #@d9e
    move/16 v276, v0

    #@da1
    .line 953
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@da4
    .line 954
    move/from16 v0, v276

    #@da6
    if-eqz v0, :cond_3b

    #@da8
    const/4 v6, 0x1

    #@da9
    :goto_34
    move-object/from16 v0, p3

    #@dab
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@dae
    .line 955
    const/4 v6, 0x1

    #@daf
    return v6

    #@db0
    .line 954
    :cond_3b
    const/4 v6, 0x0

    #@db1
    goto :goto_34

    #@db2
    .line 959
    .end local v72    # "className":Landroid/content/ComponentName;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v276    # "res":Z
    .end local v294    # "startId":I
    :pswitch_41
    const-string/jumbo v6, "android.app.IActivityManager"

    #@db5
    move-object/from16 v0, p2

    #@db7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dba
    .line 960
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@dbd
    move-result-object v72

    #@dbe
    .line 961
    .restart local v72    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@dc1
    move-result-object v73

    #@dc2
    .line 962
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dc5
    move-result v74

    #@dc6
    .line 963
    .restart local v74    # "id":I
    const/16 v75, 0x0

    #@dc8
    .line 964
    .local v75, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dcb
    move-result v6

    #@dcc
    if-eqz v6, :cond_3c

    #@dce
    .line 965
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dd0
    move-object/from16 v0, p2

    #@dd2
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@dd5
    move-result-object v75

    #@dd6
    .end local v75    # "notification":Landroid/app/Notification;
    check-cast v75, Landroid/app/Notification;

    #@dd8
    .line 967
    :cond_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ddb
    move-result v6

    #@ddc
    if-eqz v6, :cond_3d

    #@dde
    const/16 v76, 0x1

    #@de0
    .local v76, "removeNotification":Z
    :goto_35
    move-object/from16 v71, p0

    #@de2
    .line 968
    invoke-virtual/range {v71 .. v76}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    #@de5
    .line 969
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@de8
    .line 970
    const/4 v6, 0x1

    #@de9
    return v6

    #@dea
    .line 967
    .end local v76    # "removeNotification":Z
    :cond_3d
    const/16 v76, 0x0

    #@dec
    .restart local v76    # "removeNotification":Z
    goto :goto_35

    #@ded
    .line 974
    .end local v72    # "className":Landroid/content/ComponentName;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v74    # "id":I
    .end local v76    # "removeNotification":Z
    :pswitch_42
    const-string/jumbo v6, "android.app.IActivityManager"

    #@df0
    move-object/from16 v0, p2

    #@df2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@df5
    .line 975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@df8
    move-result-object v179

    #@df9
    .line 976
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@dfc
    move-result-object v7

    #@dfd
    .line 977
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e00
    move-result-object v73

    #@e01
    .line 978
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e03
    move-object/from16 v0, p2

    #@e05
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e08
    move-result-object v70

    #@e09
    check-cast v70, Landroid/content/Intent;

    #@e0b
    .line 979
    .restart local v70    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e0e
    move-result-object v10

    #@e0f
    .line 980
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e12
    move-result-object v179

    #@e13
    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e16
    move-result v83

    #@e17
    .line 982
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e1a
    move-result-object v8

    #@e1b
    .line 983
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e1e
    move-result v17

    #@e1f
    .line 984
    .restart local v17    # "userId":I
    invoke-static/range {v179 .. v179}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    #@e22
    move-result-object v82

    #@e23
    .local v82, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v77, p0

    #@e25
    move-object/from16 v78, v7

    #@e27
    move-object/from16 v79, v73

    #@e29
    move-object/from16 v80, v70

    #@e2b
    move-object/from16 v81, v10

    #@e2d
    move-object/from16 v84, v8

    #@e2f
    move/from16 v85, v17

    #@e31
    .line 985
    invoke-virtual/range {v77 .. v85}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    #@e34
    move-result v0

    #@e35
    move/16 v270, v0

    #@e38
    .line 987
    .restart local v270    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e3b
    .line 988
    move-object/from16 v0, p3

    #@e3d
    move/from16 v1, v270

    #@e3f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e42
    .line 989
    const/4 v6, 0x1

    #@e43
    return v6

    #@e44
    .line 993
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v82    # "conn":Landroid/app/IServiceConnection;
    .end local v83    # "fl":I
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v270    # "res":I
    :pswitch_43
    const-string/jumbo v6, "android.app.IActivityManager"

    #@e47
    move-object/from16 v0, p2

    #@e49
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e4c
    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e4f
    move-result-object v179

    #@e50
    .line 995
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    #@e53
    move-result-object v82

    #@e54
    .line 996
    .restart local v82    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    #@e56
    move-object/from16 v1, v82

    #@e58
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    #@e5b
    move-result v0

    #@e5c
    move/16 v276, v0

    #@e5f
    .line 997
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e62
    .line 998
    move/from16 v0, v276

    #@e64
    if-eqz v0, :cond_3e

    #@e66
    const/4 v6, 0x1

    #@e67
    :goto_36
    move-object/from16 v0, p3

    #@e69
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@e6c
    .line 999
    const/4 v6, 0x1

    #@e6d
    return v6

    #@e6e
    .line 998
    :cond_3e
    const/4 v6, 0x0

    #@e6f
    goto :goto_36

    #@e70
    .line 1003
    .end local v82    # "conn":Landroid/app/IServiceConnection;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v276    # "res":Z
    :pswitch_44
    const-string/jumbo v6, "android.app.IActivityManager"

    #@e73
    move-object/from16 v0, p2

    #@e75
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e78
    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e7b
    move-result-object v73

    #@e7c
    .line 1005
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e7e
    move-object/from16 v0, p2

    #@e80
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e83
    move-result-object v9

    #@e84
    check-cast v9, Landroid/content/Intent;

    #@e86
    .line 1006
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e89
    move-result-object v0

    #@e8a
    move-object/16 v286, v0

    #@e8d
    .line 1007
    .local v286, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@e8f
    move-object/from16 v1, v73

    #@e91
    move-object/from16 v2, v286

    #@e93
    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    #@e96
    .line 1008
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e99
    .line 1009
    const/4 v6, 0x1

    #@e9a
    return v6

    #@e9b
    .line 1013
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v286    # "service":Landroid/os/IBinder;
    :pswitch_45
    const-string/jumbo v6, "android.app.IActivityManager"

    #@e9e
    move-object/from16 v0, p2

    #@ea0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ea3
    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ea6
    move-result-object v73

    #@ea7
    .line 1015
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ea9
    move-object/from16 v0, p2

    #@eab
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@eae
    move-result-object v9

    #@eaf
    check-cast v9, Landroid/content/Intent;

    #@eb1
    .line 1016
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@eb4
    move-result v6

    #@eb5
    if-eqz v6, :cond_3f

    #@eb7
    const/16 v196, 0x1

    #@eb9
    .line 1017
    .local v196, "doRebind":Z
    :goto_37
    move-object/from16 v0, p0

    #@ebb
    move-object/from16 v1, v73

    #@ebd
    move/from16 v2, v196

    #@ebf
    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    #@ec2
    .line 1018
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ec5
    .line 1019
    const/4 v6, 0x1

    #@ec6
    return v6

    #@ec7
    .line 1016
    .end local v196    # "doRebind":Z
    :cond_3f
    const/16 v196, 0x0

    #@ec9
    .restart local v196    # "doRebind":Z
    goto :goto_37

    #@eca
    .line 1023
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v196    # "doRebind":Z
    :pswitch_46
    const-string/jumbo v6, "android.app.IActivityManager"

    #@ecd
    move-object/from16 v0, p2

    #@ecf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ed2
    .line 1024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ed5
    move-result-object v73

    #@ed6
    .line 1025
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ed9
    move-result v94

    #@eda
    .line 1026
    .local v94, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@edd
    move-result v0

    #@ede
    move/16 v294, v0

    #@ee1
    .line 1027
    .restart local v294    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ee4
    move-result v0

    #@ee5
    move/16 v270, v0

    #@ee8
    .line 1028
    .restart local v270    # "res":I
    move-object/from16 v0, p0

    #@eea
    move-object/from16 v1, v73

    #@eec
    move/from16 v2, v94

    #@eee
    move/from16 v3, v294

    #@ef0
    move/from16 v4, v270

    #@ef2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    #@ef5
    .line 1029
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ef8
    .line 1030
    const/4 v6, 0x1

    #@ef9
    return v6

    #@efa
    .line 1034
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v94    # "type":I
    .end local v270    # "res":I
    .end local v294    # "startId":I
    :pswitch_47
    const-string/jumbo v6, "android.app.IActivityManager"

    #@efd
    move-object/from16 v0, p2

    #@eff
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f02
    .line 1035
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@f05
    move-result-object v72

    #@f06
    .line 1036
    .restart local v72    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f09
    move-result-object v86

    #@f0a
    .line 1037
    .local v86, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f0d
    move-result v83

    #@f0e
    .line 1038
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@f11
    move-result-object v88

    #@f12
    .line 1039
    .local v88, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f15
    move-result-object v179

    #@f16
    .line 1040
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    #@f19
    move-result-object v89

    #@f1a
    .line 1041
    .local v89, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f1d
    move-result-object v179

    #@f1e
    .line 1042
    invoke-static/range {v179 .. v179}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    #@f21
    move-result-object v90

    #@f22
    .line 1043
    .local v90, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f25
    move-result v17

    #@f26
    .line 1044
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f29
    move-result-object v92

    #@f2a
    .local v92, "abiOverride":Ljava/lang/String;
    move-object/from16 v84, p0

    #@f2c
    move-object/from16 v85, v72

    #@f2e
    move/from16 v87, v83

    #@f30
    move/from16 v91, v17

    #@f32
    .line 1045
    invoke-virtual/range {v84 .. v92}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    #@f35
    move-result v0

    #@f36
    move/16 v276, v0

    #@f39
    .line 1047
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f3c
    .line 1048
    move/from16 v0, v276

    #@f3e
    if-eqz v0, :cond_40

    #@f40
    const/4 v6, 0x1

    #@f41
    :goto_38
    move-object/from16 v0, p3

    #@f43
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@f46
    .line 1049
    const/4 v6, 0x1

    #@f47
    return v6

    #@f48
    .line 1048
    :cond_40
    const/4 v6, 0x0

    #@f49
    goto :goto_38

    #@f4a
    .line 1054
    .end local v17    # "userId":I
    .end local v72    # "className":Landroid/content/ComponentName;
    .end local v83    # "fl":I
    .end local v86    # "profileFile":Ljava/lang/String;
    .end local v88    # "arguments":Landroid/os/Bundle;
    .end local v89    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v90    # "c":Landroid/app/IUiAutomationConnection;
    .end local v92    # "abiOverride":Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v276    # "res":Z
    :pswitch_48
    const-string/jumbo v6, "android.app.IActivityManager"

    #@f4d
    move-object/from16 v0, p2

    #@f4f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f52
    .line 1055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f55
    move-result-object v179

    #@f56
    .line 1056
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@f59
    move-result-object v7

    #@f5a
    .line 1057
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f5d
    move-result v53

    #@f5e
    .line 1058
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@f61
    move-result-object v0

    #@f62
    move-object/16 v284, v0

    #@f65
    .line 1059
    .local v284, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@f67
    move/from16 v1, v53

    #@f69
    move-object/from16 v2, v284

    #@f6b
    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    #@f6e
    .line 1060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f71
    .line 1061
    const/4 v6, 0x1

    #@f72
    return v6

    #@f73
    .line 1065
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v53    # "resultCode":I
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v284    # "results":Landroid/os/Bundle;
    :pswitch_49
    const-string/jumbo v6, "android.app.IActivityManager"

    #@f76
    move-object/from16 v0, p2

    #@f78
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f7b
    .line 1066
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    #@f7e
    move-result-object v39

    #@f7f
    .line 1067
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f82
    .line 1068
    const/4 v6, 0x0

    #@f83
    move-object/from16 v0, v39

    #@f85
    move-object/from16 v1, p3

    #@f87
    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@f8a
    .line 1069
    const/4 v6, 0x1

    #@f8b
    return v6

    #@f8c
    .line 1073
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_4a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@f8f
    move-object/from16 v0, p2

    #@f91
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f94
    .line 1074
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f96
    move-object/from16 v0, p2

    #@f98
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f9b
    move-result-object v39

    #@f9c
    check-cast v39, Landroid/content/res/Configuration;

    #@f9e
    .line 1075
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    #@fa0
    move-object/from16 v1, v39

    #@fa2
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    #@fa5
    .line 1076
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fa8
    .line 1077
    const/4 v6, 0x1

    #@fa9
    return v6

    #@faa
    .line 1081
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_4b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@fad
    move-object/from16 v0, p2

    #@faf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fb2
    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@fb5
    move-result-object v73

    #@fb6
    .line 1083
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fb9
    move-result v0

    #@fba
    move/16 v269, v0

    #@fbd
    .line 1084
    .local v269, "requestedOrientation":I
    move-object/from16 v0, p0

    #@fbf
    move-object/from16 v1, v73

    #@fc1
    move/from16 v2, v269

    #@fc3
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    #@fc6
    .line 1085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fc9
    .line 1086
    const/4 v6, 0x1

    #@fca
    return v6

    #@fcb
    .line 1090
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v269    # "requestedOrientation":I
    :pswitch_4c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@fce
    move-object/from16 v0, p2

    #@fd0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fd3
    .line 1091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@fd6
    move-result-object v73

    #@fd7
    .line 1092
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@fd9
    move-object/from16 v1, v73

    #@fdb
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    #@fde
    move-result v0

    #@fdf
    move/16 v268, v0

    #@fe2
    .line 1093
    .local v268, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fe5
    .line 1094
    move-object/from16 v0, p3

    #@fe7
    move/from16 v1, v268

    #@fe9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@fec
    .line 1095
    const/4 v6, 0x1

    #@fed
    return v6

    #@fee
    .line 1099
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v268    # "req":I
    :pswitch_4d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@ff1
    move-object/from16 v0, p2

    #@ff3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ff6
    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ff9
    move-result-object v73

    #@ffa
    .line 1101
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@ffc
    move-object/from16 v1, v73

    #@ffe
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    #@1001
    move-result-object v187

    #@1002
    .line 1102
    .restart local v187    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1005
    .line 1103
    move-object/from16 v0, v187

    #@1007
    move-object/from16 v1, p3

    #@1009
    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@100c
    .line 1104
    const/4 v6, 0x1

    #@100d
    return v6

    #@100e
    .line 1108
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v187    # "cn":Landroid/content/ComponentName;
    :pswitch_4e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1011
    move-object/from16 v0, p2

    #@1013
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1016
    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1019
    move-result-object v73

    #@101a
    .line 1110
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@101d
    .line 1111
    move-object/from16 v0, p0

    #@101f
    move-object/from16 v1, v73

    #@1021
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    #@1024
    move-result-object v6

    #@1025
    move-object/from16 v0, p3

    #@1027
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@102a
    .line 1112
    const/4 v6, 0x1

    #@102b
    return v6

    #@102c
    .line 1116
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_4f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@102f
    move-object/from16 v0, p2

    #@1031
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1034
    .line 1117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1037
    move-result v94

    #@1038
    .line 1118
    .restart local v94    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@103b
    move-result-object v32

    #@103c
    .line 1119
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@103f
    move-result-object v73

    #@1040
    .line 1120
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1043
    move-result-object v12

    #@1044
    .line 1121
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1047
    move-result v13

    #@1048
    .line 1124
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@104b
    move-result v6

    #@104c
    if-eqz v6, :cond_41

    #@104e
    .line 1125
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1050
    move-object/from16 v0, p2

    #@1052
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1055
    move-result-object v99

    #@1056
    check-cast v99, [Landroid/content/Intent;

    #@1058
    .line 1126
    .local v99, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@105b
    move-result-object v100

    #@105c
    .line 1131
    .end local v99    # "requestIntents":[Landroid/content/Intent;
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@105f
    move-result v83

    #@1060
    .line 1132
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1063
    move-result v6

    #@1064
    if-eqz v6, :cond_42

    #@1066
    .line 1133
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1068
    move-object/from16 v0, p2

    #@106a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@106d
    move-result-object v16

    #@106e
    check-cast v16, Landroid/os/Bundle;

    #@1070
    .line 1134
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1073
    move-result v17

    #@1074
    .restart local v17    # "userId":I
    move-object/from16 v93, p0

    #@1076
    move-object/from16 v95, v32

    #@1078
    move-object/from16 v96, v73

    #@107a
    move-object/from16 v97, v12

    #@107c
    move/from16 v98, v13

    #@107e
    move/from16 v101, v83

    #@1080
    move-object/from16 v102, v16

    #@1082
    move/from16 v103, v17

    #@1084
    .line 1135
    invoke-virtual/range {v93 .. v103}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@1087
    move-result-object v0

    #@1088
    move-object/16 v271, v0

    #@108b
    .line 1138
    .local v271, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@108e
    .line 1139
    move-object/from16 v0, v271

    #@1090
    if-eqz v0, :cond_43

    #@1092
    invoke-interface/range {v271 .. v271}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@1095
    move-result-object v6

    #@1096
    :goto_3b
    move-object/from16 v0, p3

    #@1098
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@109b
    .line 1140
    const/4 v6, 0x1

    #@109c
    return v6

    #@109d
    .line 1128
    .end local v17    # "userId":I
    .end local v83    # "fl":I
    .end local v271    # "res":Landroid/content/IIntentSender;
    :cond_41
    const/16 v99, 0x0

    #@109f
    .line 1129
    .local v99, "requestIntents":[Landroid/content/Intent;
    const/16 v100, 0x0

    #@10a1
    .local v100, "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_39

    #@10a2
    .line 1133
    .end local v99    # "requestIntents":[Landroid/content/Intent;
    .end local v100    # "requestResolvedTypes":[Ljava/lang/String;
    .restart local v83    # "fl":I
    :cond_42
    const/16 v16, 0x0

    #@10a4
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_3a

    #@10a5
    .line 1139
    .end local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v271    # "res":Landroid/content/IIntentSender;
    :cond_43
    const/4 v6, 0x0

    #@10a6
    goto :goto_3b

    #@10a7
    .line 1144
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v83    # "fl":I
    .end local v94    # "type":I
    .end local v271    # "res":Landroid/content/IIntentSender;
    :pswitch_50
    const-string/jumbo v6, "android.app.IActivityManager"

    #@10aa
    move-object/from16 v0, p2

    #@10ac
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10af
    .line 1146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10b2
    move-result-object v6

    #@10b3
    .line 1145
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@10b6
    move-result-object v0

    #@10b7
    move-object/16 v264, v0

    #@10ba
    .line 1147
    .local v264, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@10bc
    move-object/from16 v1, v264

    #@10be
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    #@10c1
    .line 1148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10c4
    .line 1149
    const/4 v6, 0x1

    #@10c5
    return v6

    #@10c6
    .line 1153
    .end local v264    # "r":Landroid/content/IIntentSender;
    :pswitch_51
    const-string/jumbo v6, "android.app.IActivityManager"

    #@10c9
    move-object/from16 v0, p2

    #@10cb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10ce
    .line 1155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10d1
    move-result-object v6

    #@10d2
    .line 1154
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@10d5
    move-result-object v0

    #@10d6
    move-object/16 v264, v0

    #@10d9
    .line 1156
    .restart local v264    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@10db
    move-object/from16 v1, v264

    #@10dd
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    #@10e0
    move-result-object v0

    #@10e1
    move-object/16 v275, v0

    #@10e4
    .line 1157
    .local v275, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10e7
    .line 1158
    move-object/from16 v0, p3

    #@10e9
    move-object/from16 v1, v275

    #@10eb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10ee
    .line 1159
    const/4 v6, 0x1

    #@10ef
    return v6

    #@10f0
    .line 1163
    .end local v264    # "r":Landroid/content/IIntentSender;
    .end local v275    # "res":Ljava/lang/String;
    :pswitch_52
    const-string/jumbo v6, "android.app.IActivityManager"

    #@10f3
    move-object/from16 v0, p2

    #@10f5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10f8
    .line 1165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10fb
    move-result-object v6

    #@10fc
    .line 1164
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@10ff
    move-result-object v0

    #@1100
    move-object/16 v264, v0

    #@1103
    .line 1166
    .restart local v264    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@1105
    move-object/from16 v1, v264

    #@1107
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    #@110a
    move-result v0

    #@110b
    move/16 v270, v0

    #@110e
    .line 1167
    .restart local v270    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1111
    .line 1168
    move-object/from16 v0, p3

    #@1113
    move/from16 v1, v270

    #@1115
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1118
    .line 1169
    const/4 v6, 0x1

    #@1119
    return v6

    #@111a
    .line 1173
    .end local v264    # "r":Landroid/content/IIntentSender;
    .end local v270    # "res":I
    :pswitch_53
    const-string/jumbo v6, "android.app.IActivityManager"

    #@111d
    move-object/from16 v0, p2

    #@111f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1122
    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1125
    move-result v42

    #@1126
    .line 1175
    .restart local v42    # "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1129
    move-result v43

    #@112a
    .line 1176
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@112d
    move-result v17

    #@112e
    .line 1177
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1131
    move-result v6

    #@1132
    if-eqz v6, :cond_44

    #@1134
    const/16 v105, 0x1

    #@1136
    .line 1178
    .local v105, "allowAll":Z
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1139
    move-result v6

    #@113a
    if-eqz v6, :cond_45

    #@113c
    const/16 v106, 0x1

    #@113e
    .line 1179
    .local v106, "requireFull":Z
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1141
    move-result-object v107

    #@1142
    .line 1180
    .restart local v107    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1145
    move-result-object v108

    #@1146
    .local v108, "callerPackage":Ljava/lang/String;
    move-object/from16 v101, p0

    #@1148
    move/from16 v102, v42

    #@114a
    move/from16 v103, v43

    #@114c
    move/from16 v104, v17

    #@114e
    .line 1181
    invoke-virtual/range {v101 .. v108}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@1151
    move-result v0

    #@1152
    move/16 v270, v0

    #@1155
    .line 1183
    .restart local v270    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1158
    .line 1184
    move-object/from16 v0, p3

    #@115a
    move/from16 v1, v270

    #@115c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@115f
    .line 1185
    const/4 v6, 0x1

    #@1160
    return v6

    #@1161
    .line 1177
    .end local v105    # "allowAll":Z
    .end local v106    # "requireFull":Z
    .end local v107    # "name":Ljava/lang/String;
    .end local v108    # "callerPackage":Ljava/lang/String;
    .end local v270    # "res":I
    :cond_44
    const/16 v105, 0x0

    #@1163
    .restart local v105    # "allowAll":Z
    goto :goto_3c

    #@1164
    .line 1178
    :cond_45
    const/16 v106, 0x0

    #@1166
    .restart local v106    # "requireFull":Z
    goto :goto_3d

    #@1167
    .line 1189
    .end local v17    # "userId":I
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v105    # "allowAll":Z
    .end local v106    # "requireFull":Z
    :pswitch_54
    const-string/jumbo v6, "android.app.IActivityManager"

    #@116a
    move-object/from16 v0, p2

    #@116c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@116f
    .line 1190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1172
    move-result v235

    #@1173
    .line 1191
    .local v235, "max":I
    move-object/from16 v0, p0

    #@1175
    move/from16 v1, v235

    #@1177
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    #@117a
    .line 1192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@117d
    .line 1193
    const/4 v6, 0x1

    #@117e
    return v6

    #@117f
    .line 1197
    .end local v235    # "max":I
    :pswitch_55
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1182
    move-object/from16 v0, p2

    #@1184
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1187
    .line 1198
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    #@118a
    move-result v224

    #@118b
    .line 1199
    .local v224, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@118e
    .line 1200
    move-object/from16 v0, p3

    #@1190
    move/from16 v1, v224

    #@1192
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1195
    .line 1201
    const/4 v6, 0x1

    #@1196
    return v6

    #@1197
    .line 1205
    .end local v224    # "limit":I
    :pswitch_56
    const-string/jumbo v6, "android.app.IActivityManager"

    #@119a
    move-object/from16 v0, p2

    #@119c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@119f
    .line 1206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@11a2
    move-result-object v73

    #@11a3
    .line 1207
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11a6
    move-result v111

    #@11a7
    .line 1208
    .local v111, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11aa
    move-result v6

    #@11ab
    if-eqz v6, :cond_46

    #@11ad
    const/16 v217, 0x1

    #@11af
    .line 1209
    .local v217, "isForeground":Z
    :goto_3e
    move-object/from16 v0, p0

    #@11b1
    move-object/from16 v1, v73

    #@11b3
    move/from16 v2, v111

    #@11b5
    move/from16 v3, v217

    #@11b7
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    #@11ba
    .line 1210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11bd
    .line 1211
    const/4 v6, 0x1

    #@11be
    return v6

    #@11bf
    .line 1208
    .end local v217    # "isForeground":Z
    :cond_46
    const/16 v217, 0x0

    #@11c1
    .restart local v217    # "isForeground":Z
    goto :goto_3e

    #@11c2
    .line 1215
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v111    # "pid":I
    .end local v217    # "isForeground":Z
    :pswitch_57
    const-string/jumbo v6, "android.app.IActivityManager"

    #@11c5
    move-object/from16 v0, p2

    #@11c7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11ca
    .line 1216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11cd
    move-result-object v35

    #@11ce
    .line 1217
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11d1
    move-result v111

    #@11d2
    .line 1218
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11d5
    move-result v112

    #@11d6
    .line 1219
    .local v112, "uid":I
    move-object/from16 v0, p0

    #@11d8
    move-object/from16 v1, v35

    #@11da
    move/from16 v2, v111

    #@11dc
    move/from16 v3, v112

    #@11de
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    #@11e1
    move-result v0

    #@11e2
    move/16 v270, v0

    #@11e5
    .line 1220
    .restart local v270    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11e8
    .line 1221
    move-object/from16 v0, p3

    #@11ea
    move/from16 v1, v270

    #@11ec
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11ef
    .line 1222
    const/4 v6, 0x1

    #@11f0
    return v6

    #@11f1
    .line 1226
    .end local v35    # "perm":Ljava/lang/String;
    .end local v111    # "pid":I
    .end local v112    # "uid":I
    .end local v270    # "res":I
    :pswitch_58
    const-string/jumbo v6, "android.app.IActivityManager"

    #@11f4
    move-object/from16 v0, p2

    #@11f6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f9
    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11fc
    move-result-object v35

    #@11fd
    .line 1228
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1200
    move-result v111

    #@1201
    .line 1229
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1204
    move-result v112

    #@1205
    .line 1230
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1208
    move-result-object v73

    #@1209
    .line 1231
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@120b
    move-object/from16 v1, v35

    #@120d
    move/from16 v2, v111

    #@120f
    move/from16 v3, v112

    #@1211
    move-object/from16 v4, v73

    #@1213
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    #@1216
    move-result v0

    #@1217
    move/16 v270, v0

    #@121a
    .line 1232
    .restart local v270    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@121d
    .line 1233
    move-object/from16 v0, p3

    #@121f
    move/from16 v1, v270

    #@1221
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1224
    .line 1234
    const/4 v6, 0x1

    #@1225
    return v6

    #@1226
    .line 1238
    .end local v35    # "perm":Ljava/lang/String;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v111    # "pid":I
    .end local v112    # "uid":I
    .end local v270    # "res":I
    :pswitch_59
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1229
    move-object/from16 v0, p2

    #@122b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@122e
    .line 1239
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1230
    move-object/from16 v0, p2

    #@1232
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1235
    move-result-object v110

    #@1236
    check-cast v110, Landroid/net/Uri;

    #@1238
    .line 1240
    .local v110, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@123b
    move-result v111

    #@123c
    .line 1241
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@123f
    move-result v112

    #@1240
    .line 1242
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1243
    move-result v113

    #@1244
    .line 1243
    .local v113, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1247
    move-result v17

    #@1248
    .line 1244
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@124b
    move-result-object v115

    #@124c
    .local v115, "callerToken":Landroid/os/IBinder;
    move-object/from16 v109, p0

    #@124e
    move/from16 v114, v17

    #@1250
    .line 1245
    invoke-virtual/range {v109 .. v115}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    #@1253
    move-result v0

    #@1254
    move/16 v270, v0

    #@1257
    .line 1246
    .restart local v270    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@125a
    .line 1247
    move-object/from16 v0, p3

    #@125c
    move/from16 v1, v270

    #@125e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1261
    .line 1248
    const/4 v6, 0x1

    #@1262
    return v6

    #@1263
    .line 1252
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v111    # "pid":I
    .end local v112    # "uid":I
    .end local v113    # "mode":I
    .end local v115    # "callerToken":Landroid/os/IBinder;
    .end local v270    # "res":I
    :pswitch_5a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1266
    move-object/from16 v0, p2

    #@1268
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@126b
    .line 1253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@126e
    move-result-object v32

    #@126f
    .line 1255
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1272
    move-result-object v6

    #@1273
    .line 1254
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    #@1276
    move-result-object v245

    #@1277
    .line 1256
    .local v245, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@127a
    move-result v17

    #@127b
    .line 1257
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@127d
    move-object/from16 v1, v32

    #@127f
    move-object/from16 v2, v245

    #@1281
    move/from16 v3, v17

    #@1283
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    #@1286
    move-result v0

    #@1287
    move/16 v276, v0

    #@128a
    .line 1258
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@128d
    .line 1259
    move/from16 v0, v276

    #@128f
    if-eqz v0, :cond_47

    #@1291
    const/4 v6, 0x1

    #@1292
    :goto_3f
    move-object/from16 v0, p3

    #@1294
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1297
    .line 1260
    const/4 v6, 0x1

    #@1298
    return v6

    #@1299
    .line 1259
    :cond_47
    const/4 v6, 0x0

    #@129a
    goto :goto_3f

    #@129b
    .line 1264
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v245    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v276    # "res":Z
    :pswitch_5b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@129e
    move-object/from16 v0, p2

    #@12a0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12a3
    .line 1265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@12a6
    move-result-object v179

    #@12a7
    .line 1266
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@12aa
    move-result-object v7

    #@12ab
    .line 1267
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12ae
    move-result-object v118

    #@12af
    .line 1268
    .local v118, "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12b1
    move-object/from16 v0, p2

    #@12b3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12b6
    move-result-object v110

    #@12b7
    check-cast v110, Landroid/net/Uri;

    #@12b9
    .line 1269
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12bc
    move-result v113

    #@12bd
    .line 1270
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12c0
    move-result v17

    #@12c1
    .restart local v17    # "userId":I
    move-object/from16 v116, p0

    #@12c3
    move-object/from16 v117, v7

    #@12c5
    move-object/from16 v119, v110

    #@12c7
    move/from16 v120, v113

    #@12c9
    move/from16 v121, v17

    #@12cb
    .line 1271
    invoke-virtual/range {v116 .. v121}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    #@12ce
    .line 1272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12d1
    .line 1273
    const/4 v6, 0x1

    #@12d2
    return v6

    #@12d3
    .line 1277
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    .end local v118    # "targetPkg":Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_5c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@12d6
    move-object/from16 v0, p2

    #@12d8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12db
    .line 1278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@12de
    move-result-object v179

    #@12df
    .line 1279
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@12e2
    move-result-object v7

    #@12e3
    .line 1280
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12e5
    move-object/from16 v0, p2

    #@12e7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12ea
    move-result-object v110

    #@12eb
    check-cast v110, Landroid/net/Uri;

    #@12ed
    .line 1281
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12f0
    move-result v113

    #@12f1
    .line 1282
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12f4
    move-result v17

    #@12f5
    .line 1283
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@12f7
    move-object/from16 v1, v110

    #@12f9
    move/from16 v2, v113

    #@12fb
    move/from16 v3, v17

    #@12fd
    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    #@1300
    .line 1284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1303
    .line 1285
    const/4 v6, 0x1

    #@1304
    return v6

    #@1305
    .line 1289
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_5d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1308
    move-object/from16 v0, p2

    #@130a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@130d
    .line 1290
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@130f
    move-object/from16 v0, p2

    #@1311
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1314
    move-result-object v110

    #@1315
    check-cast v110, Landroid/net/Uri;

    #@1317
    .line 1291
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@131a
    move-result v113

    #@131b
    .line 1292
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@131e
    move-result v17

    #@131f
    .line 1293
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1321
    move-object/from16 v1, v110

    #@1323
    move/from16 v2, v113

    #@1325
    move/from16 v3, v17

    #@1327
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;II)V

    #@132a
    .line 1294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@132d
    .line 1295
    const/4 v6, 0x1

    #@132e
    return v6

    #@132f
    .line 1299
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    :pswitch_5e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1332
    move-object/from16 v0, p2

    #@1334
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1337
    .line 1300
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1339
    move-object/from16 v0, p2

    #@133b
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@133e
    move-result-object v110

    #@133f
    check-cast v110, Landroid/net/Uri;

    #@1341
    .line 1301
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1344
    move-result v113

    #@1345
    .line 1302
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1348
    move-result v17

    #@1349
    .line 1303
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@134b
    move-object/from16 v1, v110

    #@134d
    move/from16 v2, v113

    #@134f
    move/from16 v3, v17

    #@1351
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    #@1354
    .line 1304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1357
    .line 1305
    const/4 v6, 0x1

    #@1358
    return v6

    #@1359
    .line 1309
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    :pswitch_5f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@135c
    move-object/from16 v0, p2

    #@135e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1361
    .line 1310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1364
    move-result-object v32

    #@1365
    .line 1311
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1368
    move-result v6

    #@1369
    if-eqz v6, :cond_48

    #@136b
    const/16 v208, 0x1

    #@136d
    .line 1312
    .local v208, "incoming":Z
    :goto_40
    move-object/from16 v0, p0

    #@136f
    move-object/from16 v1, v32

    #@1371
    move/from16 v2, v208

    #@1373
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    #@1376
    move-result-object v253

    #@1377
    .line 1314
    .local v253, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@137a
    .line 1315
    const/4 v6, 0x1

    #@137b
    move-object/from16 v0, v253

    #@137d
    move-object/from16 v1, p3

    #@137f
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@1382
    .line 1316
    const/4 v6, 0x1

    #@1383
    return v6

    #@1384
    .line 1311
    .end local v208    # "incoming":Z
    .end local v253    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_48
    const/16 v208, 0x0

    #@1386
    .restart local v208    # "incoming":Z
    goto :goto_40

    #@1387
    .line 1320
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v208    # "incoming":Z
    :pswitch_60
    const-string/jumbo v6, "android.app.IActivityManager"

    #@138a
    move-object/from16 v0, p2

    #@138c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@138f
    .line 1321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1392
    move-result-object v179

    #@1393
    .line 1322
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@1396
    move-result-object v7

    #@1397
    .line 1323
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@139a
    move-result v6

    #@139b
    if-eqz v6, :cond_49

    #@139d
    const/4 v0, 0x1

    #@139e
    move/16 v312, v0

    #@13a1
    .line 1324
    .local v312, "waiting":Z
    :goto_41
    move-object/from16 v0, p0

    #@13a3
    move/from16 v1, v312

    #@13a5
    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    #@13a8
    .line 1325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13ab
    .line 1326
    const/4 v6, 0x1

    #@13ac
    return v6

    #@13ad
    .line 1323
    .end local v312    # "waiting":Z
    :cond_49
    const/4 v0, 0x0

    #@13ae
    move/16 v312, v0

    #@13b1
    .restart local v312    # "waiting":Z
    goto :goto_41

    #@13b2
    .line 1330
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v312    # "waiting":Z
    :pswitch_61
    const-string/jumbo v6, "android.app.IActivityManager"

    #@13b5
    move-object/from16 v0, p2

    #@13b7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13ba
    .line 1331
    new-instance v238, Landroid/app/ActivityManager$MemoryInfo;

    #@13bc
    invoke-direct/range {v238 .. v238}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    #@13bf
    .line 1332
    .local v238, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    #@13c1
    move-object/from16 v1, v238

    #@13c3
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    #@13c6
    .line 1333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13c9
    .line 1334
    const/4 v6, 0x0

    #@13ca
    move-object/from16 v0, v238

    #@13cc
    move-object/from16 v1, p3

    #@13ce
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@13d1
    .line 1335
    const/4 v6, 0x1

    #@13d2
    return v6

    #@13d3
    .line 1339
    .end local v238    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_62
    const-string/jumbo v6, "android.app.IActivityManager"

    #@13d6
    move-object/from16 v0, p2

    #@13d8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13db
    .line 1340
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    #@13de
    .line 1341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13e1
    .line 1342
    const/4 v6, 0x1

    #@13e2
    return v6

    #@13e3
    .line 1346
    :pswitch_63
    const-string/jumbo v6, "android.app.IActivityManager"

    #@13e6
    move-object/from16 v0, p2

    #@13e8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13eb
    .line 1347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13ee
    move-result-object v6

    #@13ef
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@13f2
    move-result-object v110

    #@13f3
    .line 1348
    .restart local v110    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@13f5
    move-object/from16 v1, v110

    #@13f7
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    #@13fa
    move-result-object v255

    #@13fb
    .line 1349
    .local v255, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13fe
    .line 1350
    if-eqz v255, :cond_4a

    #@1400
    .line 1351
    const/4 v6, 0x1

    #@1401
    move-object/from16 v0, p3

    #@1403
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1406
    .line 1352
    const/4 v6, 0x1

    #@1407
    move-object/from16 v0, v255

    #@1409
    move-object/from16 v1, p3

    #@140b
    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@140e
    .line 1356
    :goto_42
    const/4 v6, 0x1

    #@140f
    return v6

    #@1410
    .line 1354
    :cond_4a
    const/4 v6, 0x0

    #@1411
    move-object/from16 v0, p3

    #@1413
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1416
    goto :goto_42

    #@1417
    .line 1360
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v255    # "pfd":Landroid/os/ParcelFileDescriptor;
    :pswitch_64
    const-string/jumbo v6, "android.app.IActivityManager"

    #@141a
    move-object/from16 v0, p2

    #@141c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@141f
    .line 1361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1422
    move-result v6

    #@1423
    if-eqz v6, :cond_4b

    #@1425
    const/4 v6, 0x1

    #@1426
    :goto_43
    move-object/from16 v0, p0

    #@1428
    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    #@142b
    .line 1362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@142e
    .line 1363
    const/4 v6, 0x1

    #@142f
    return v6

    #@1430
    .line 1361
    :cond_4b
    const/4 v6, 0x0

    #@1431
    goto :goto_43

    #@1432
    .line 1367
    :pswitch_65
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1435
    move-object/from16 v0, p2

    #@1437
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@143a
    .line 1368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@143d
    move-result-object v0

    #@143e
    move-object/16 v259, v0

    #@1441
    .line 1369
    .local v259, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1444
    move-result v6

    #@1445
    if-eqz v6, :cond_4c

    #@1447
    const/4 v0, 0x1

    #@1448
    move/16 v314, v0

    #@144b
    .line 1370
    .local v314, "wfd":Z
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@144e
    move-result v6

    #@144f
    if-eqz v6, :cond_4d

    #@1451
    const/16 v251, 0x1

    #@1453
    .line 1371
    .local v251, "per":Z
    :goto_45
    move-object/from16 v0, p0

    #@1455
    move-object/from16 v1, v259

    #@1457
    move/from16 v2, v314

    #@1459
    move/from16 v3, v251

    #@145b
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    #@145e
    .line 1372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1461
    .line 1373
    const/4 v6, 0x1

    #@1462
    return v6

    #@1463
    .line 1369
    .end local v251    # "per":Z
    .end local v314    # "wfd":Z
    :cond_4c
    const/4 v0, 0x0

    #@1464
    move/16 v314, v0

    #@1467
    .restart local v314    # "wfd":Z
    goto :goto_44

    #@1468
    .line 1370
    :cond_4d
    const/16 v251, 0x0

    #@146a
    .restart local v251    # "per":Z
    goto :goto_45

    #@146b
    .line 1377
    .end local v251    # "per":Z
    .end local v259    # "pn":Ljava/lang/String;
    .end local v314    # "wfd":Z
    :pswitch_66
    const-string/jumbo v6, "android.app.IActivityManager"

    #@146e
    move-object/from16 v0, p2

    #@1470
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1473
    .line 1378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1476
    move-result v6

    #@1477
    if-eqz v6, :cond_4e

    #@1479
    const/16 v198, 0x1

    #@147b
    .line 1379
    .local v198, "enabled":Z
    :goto_46
    move-object/from16 v0, p0

    #@147d
    move/from16 v1, v198

    #@147f
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    #@1482
    .line 1380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1485
    .line 1381
    const/4 v6, 0x1

    #@1486
    return v6

    #@1487
    .line 1378
    .end local v198    # "enabled":Z
    :cond_4e
    const/16 v198, 0x0

    #@1489
    .restart local v198    # "enabled":Z
    goto :goto_46

    #@148a
    .line 1385
    .end local v198    # "enabled":Z
    :pswitch_67
    const-string/jumbo v6, "android.app.IActivityManager"

    #@148d
    move-object/from16 v0, p2

    #@148f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1492
    .line 1387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1495
    move-result-object v6

    #@1496
    .line 1386
    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    #@1499
    move-result-object v0

    #@149a
    move-object/16 v313, v0

    #@149d
    .line 1388
    .local v313, "watcher":Landroid/app/IActivityController;
    move-object/from16 v0, p0

    #@149f
    move-object/from16 v1, v313

    #@14a1
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    #@14a4
    .line 1389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14a7
    .line 1390
    const/4 v6, 0x1

    #@14a8
    return v6

    #@14a9
    .line 1394
    .end local v313    # "watcher":Landroid/app/IActivityController;
    :pswitch_68
    const-string/jumbo v6, "android.app.IActivityManager"

    #@14ac
    move-object/from16 v0, p2

    #@14ae
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14b1
    .line 1395
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    #@14b4
    .line 1396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14b7
    .line 1397
    const/4 v6, 0x1

    #@14b8
    return v6

    #@14b9
    .line 1401
    :pswitch_69
    const-string/jumbo v6, "android.app.IActivityManager"

    #@14bc
    move-object/from16 v0, p2

    #@14be
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14c1
    .line 1403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14c4
    move-result-object v6

    #@14c5
    .line 1402
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@14c8
    move-result-object v216

    #@14c9
    .line 1404
    .local v216, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14cc
    move-result v0

    #@14cd
    move/16 v290, v0

    #@14d0
    .line 1405
    .local v290, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14d3
    move-result-object v0

    #@14d4
    move-object/16 v289, v0

    #@14d7
    .line 1406
    .local v289, "sourcePkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14da
    move-result-object v0

    #@14db
    move-object/16 v298, v0

    #@14de
    .line 1407
    .local v298, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    #@14e0
    move-object/from16 v1, v216

    #@14e2
    move/from16 v2, v290

    #@14e4
    move-object/from16 v3, v289

    #@14e6
    move-object/from16 v4, v298

    #@14e8
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    #@14eb
    .line 1408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14ee
    .line 1409
    const/4 v6, 0x1

    #@14ef
    return v6

    #@14f0
    .line 1413
    .end local v216    # "is":Landroid/content/IIntentSender;
    .end local v289    # "sourcePkg":Ljava/lang/String;
    .end local v290    # "sourceUid":I
    .end local v298    # "tag":Ljava/lang/String;
    :pswitch_6a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@14f3
    move-object/from16 v0, p2

    #@14f5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14f8
    .line 1415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14fb
    move-result-object v6

    #@14fc
    .line 1414
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@14ff
    move-result-object v216

    #@1500
    .line 1416
    .restart local v216    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1503
    move-result v0

    #@1504
    move/16 v290, v0

    #@1507
    .line 1417
    .restart local v290    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@150a
    move-result-object v0

    #@150b
    move-object/16 v298, v0

    #@150e
    .line 1418
    .restart local v298    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1510
    move-object/from16 v1, v216

    #@1512
    move/from16 v2, v290

    #@1514
    move-object/from16 v3, v298

    #@1516
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    #@1519
    .line 1419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@151c
    .line 1420
    const/4 v6, 0x1

    #@151d
    return v6

    #@151e
    .line 1424
    .end local v216    # "is":Landroid/content/IIntentSender;
    .end local v290    # "sourceUid":I
    .end local v298    # "tag":Ljava/lang/String;
    :pswitch_6b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1521
    move-object/from16 v0, p2

    #@1523
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1526
    .line 1426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1529
    move-result-object v6

    #@152a
    .line 1425
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@152d
    move-result-object v216

    #@152e
    .line 1427
    .restart local v216    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1531
    move-result v0

    #@1532
    move/16 v290, v0

    #@1535
    .line 1428
    .restart local v290    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1538
    move-result-object v0

    #@1539
    move-object/16 v298, v0

    #@153c
    .line 1429
    .restart local v298    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    #@153e
    move-object/from16 v1, v216

    #@1540
    move/from16 v2, v290

    #@1542
    move-object/from16 v3, v298

    #@1544
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    #@1547
    .line 1430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@154a
    .line 1431
    const/4 v6, 0x1

    #@154b
    return v6

    #@154c
    .line 1435
    .end local v216    # "is":Landroid/content/IIntentSender;
    .end local v290    # "sourceUid":I
    .end local v298    # "tag":Ljava/lang/String;
    :pswitch_6c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@154f
    move-object/from16 v0, p2

    #@1551
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1554
    .line 1436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@1557
    move-result-object v0

    #@1558
    move-object/16 v257, v0

    #@155b
    .line 1437
    .local v257, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@155e
    move-result-object v0

    #@155f
    move-object/16 v266, v0

    #@1562
    .line 1438
    .local v266, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1565
    move-result v6

    #@1566
    if-eqz v6, :cond_4f

    #@1568
    const/4 v0, 0x1

    #@1569
    move/16 v285, v0

    #@156c
    .line 1439
    .local v285, "secure":Z
    :goto_47
    move-object/from16 v0, p0

    #@156e
    move-object/from16 v1, v257

    #@1570
    move-object/from16 v2, v266

    #@1572
    move/from16 v3, v285

    #@1574
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    #@1577
    move-result v0

    #@1578
    move/16 v276, v0

    #@157b
    .line 1440
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@157e
    .line 1441
    move/from16 v0, v276

    #@1580
    if-eqz v0, :cond_50

    #@1582
    const/4 v6, 0x1

    #@1583
    :goto_48
    move-object/from16 v0, p3

    #@1585
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1588
    .line 1442
    const/4 v6, 0x1

    #@1589
    return v6

    #@158a
    .line 1438
    .end local v276    # "res":Z
    .end local v285    # "secure":Z
    :cond_4f
    const/4 v0, 0x0

    #@158b
    move/16 v285, v0

    #@158e
    .restart local v285    # "secure":Z
    goto :goto_47

    #@158f
    .line 1441
    .restart local v276    # "res":Z
    :cond_50
    const/4 v6, 0x0

    #@1590
    goto :goto_48

    #@1591
    .line 1446
    .end local v257    # "pids":[I
    .end local v266    # "reason":Ljava/lang/String;
    .end local v276    # "res":Z
    .end local v285    # "secure":Z
    :pswitch_6d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1594
    move-object/from16 v0, p2

    #@1596
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1599
    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@159c
    move-result-object v0

    #@159d
    move-object/16 v266, v0

    #@15a0
    .line 1448
    .restart local v266    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@15a2
    move-object/from16 v1, v266

    #@15a4
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    #@15a7
    move-result v0

    #@15a8
    move/16 v276, v0

    #@15ab
    .line 1449
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15ae
    .line 1450
    move/from16 v0, v276

    #@15b0
    if-eqz v0, :cond_51

    #@15b2
    const/4 v6, 0x1

    #@15b3
    :goto_49
    move-object/from16 v0, p3

    #@15b5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@15b8
    .line 1451
    const/4 v6, 0x1

    #@15b9
    return v6

    #@15ba
    .line 1450
    :cond_51
    const/4 v6, 0x0

    #@15bb
    goto :goto_49

    #@15bc
    .line 1455
    .end local v266    # "reason":Ljava/lang/String;
    .end local v276    # "res":Z
    :pswitch_6e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@15bf
    move-object/from16 v0, p2

    #@15c1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15c4
    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@15c7
    move-result-object v174

    #@15c8
    .line 1457
    .local v174, "app":Landroid/os/IBinder;
    new-instance v186, Landroid/app/ApplicationErrorReport$CrashInfo;

    #@15ca
    move-object/from16 v0, v186

    #@15cc
    move-object/from16 v1, p2

    #@15ce
    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    #@15d1
    .line 1458
    .local v186, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    #@15d3
    move-object/from16 v1, v174

    #@15d5
    move-object/from16 v2, v186

    #@15d7
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    #@15da
    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15dd
    .line 1460
    const/4 v6, 0x1

    #@15de
    return v6

    #@15df
    .line 1464
    .end local v174    # "app":Landroid/os/IBinder;
    .end local v186    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_6f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@15e2
    move-object/from16 v0, p2

    #@15e4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15e7
    .line 1465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@15ea
    move-result-object v174

    #@15eb
    .line 1466
    .restart local v174    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15ee
    move-result-object v0

    #@15ef
    move-object/16 v298, v0

    #@15f2
    .line 1467
    .restart local v298    # "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15f5
    move-result v6

    #@15f6
    if-eqz v6, :cond_52

    #@15f8
    const/4 v0, 0x1

    #@15f9
    move/16 v297, v0

    #@15fc
    .line 1468
    .local v297, "system":Z
    :goto_4a
    new-instance v186, Landroid/app/ApplicationErrorReport$CrashInfo;

    #@15fe
    move-object/from16 v0, v186

    #@1600
    move-object/from16 v1, p2

    #@1602
    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    #@1605
    .line 1469
    .restart local v186    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    #@1607
    move-object/from16 v1, v174

    #@1609
    move-object/from16 v2, v298

    #@160b
    move/from16 v3, v297

    #@160d
    move-object/from16 v4, v186

    #@160f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    #@1612
    move-result v0

    #@1613
    move/16 v276, v0

    #@1616
    .line 1470
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1619
    .line 1471
    move/from16 v0, v276

    #@161b
    if-eqz v0, :cond_53

    #@161d
    const/4 v6, 0x1

    #@161e
    :goto_4b
    move-object/from16 v0, p3

    #@1620
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1623
    .line 1472
    const/4 v6, 0x1

    #@1624
    return v6

    #@1625
    .line 1467
    .end local v186    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v276    # "res":Z
    .end local v297    # "system":Z
    :cond_52
    const/4 v0, 0x0

    #@1626
    move/16 v297, v0

    #@1629
    .restart local v297    # "system":Z
    goto :goto_4a

    #@162a
    .line 1471
    .restart local v186    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v276    # "res":Z
    :cond_53
    const/4 v6, 0x0

    #@162b
    goto :goto_4b

    #@162c
    .line 1476
    .end local v174    # "app":Landroid/os/IBinder;
    .end local v186    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v276    # "res":Z
    .end local v297    # "system":Z
    .end local v298    # "tag":Ljava/lang/String;
    :pswitch_70
    const-string/jumbo v6, "android.app.IActivityManager"

    #@162f
    move-object/from16 v0, p2

    #@1631
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1634
    .line 1477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1637
    move-result-object v174

    #@1638
    .line 1478
    .restart local v174    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@163b
    move-result v0

    #@163c
    move/16 v311, v0

    #@163f
    .line 1479
    .local v311, "violationMask":I
    new-instance v214, Landroid/os/StrictMode$ViolationInfo;

    #@1641
    move-object/from16 v0, v214

    #@1643
    move-object/from16 v1, p2

    #@1645
    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    #@1648
    .line 1480
    .local v214, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    #@164a
    move-object/from16 v1, v174

    #@164c
    move/from16 v2, v311

    #@164e
    move-object/from16 v3, v214

    #@1650
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    #@1653
    .line 1481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1656
    .line 1482
    const/4 v6, 0x1

    #@1657
    return v6

    #@1658
    .line 1486
    .end local v174    # "app":Landroid/os/IBinder;
    .end local v214    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v311    # "violationMask":I
    :pswitch_71
    const-string/jumbo v6, "android.app.IActivityManager"

    #@165b
    move-object/from16 v0, p2

    #@165d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1660
    .line 1487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1663
    move-result v0

    #@1664
    move/16 v287, v0

    #@1667
    .line 1488
    .local v287, "sig":I
    move-object/from16 v0, p0

    #@1669
    move/from16 v1, v287

    #@166b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    #@166e
    .line 1489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1671
    .line 1490
    const/4 v6, 0x1

    #@1672
    return v6

    #@1673
    .line 1494
    .end local v287    # "sig":I
    :pswitch_72
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1676
    move-object/from16 v0, p2

    #@1678
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@167b
    .line 1495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@167e
    move-result-object v32

    #@167f
    .line 1496
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1682
    move-result v17

    #@1683
    .line 1497
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1685
    move-object/from16 v1, v32

    #@1687
    move/from16 v2, v17

    #@1689
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    #@168c
    .line 1498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@168f
    .line 1499
    const/4 v6, 0x1

    #@1690
    return v6

    #@1691
    .line 1503
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_73
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1694
    move-object/from16 v0, p2

    #@1696
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1699
    .line 1504
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    #@169c
    .line 1505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@169f
    .line 1506
    const/4 v6, 0x1

    #@16a0
    return v6

    #@16a1
    .line 1510
    :pswitch_74
    const-string/jumbo v6, "android.app.IActivityManager"

    #@16a4
    move-object/from16 v0, p2

    #@16a6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16a9
    .line 1511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16ac
    move-result-object v32

    #@16ad
    .line 1512
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16b0
    move-result v17

    #@16b1
    .line 1513
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@16b3
    move-object/from16 v1, v32

    #@16b5
    move/from16 v2, v17

    #@16b7
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    #@16ba
    .line 1514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16bd
    .line 1515
    const/4 v6, 0x1

    #@16be
    return v6

    #@16bf
    .line 1519
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_75
    const-string/jumbo v6, "android.app.IActivityManager"

    #@16c2
    move-object/from16 v0, p2

    #@16c4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16c7
    .line 1521
    new-instance v209, Landroid/app/ActivityManager$RunningAppProcessInfo;

    #@16c9
    invoke-direct/range {v209 .. v209}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    #@16cc
    .line 1522
    .local v209, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    #@16ce
    move-object/from16 v1, v209

    #@16d0
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    #@16d3
    .line 1523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16d6
    .line 1524
    const/4 v6, 0x0

    #@16d7
    move-object/from16 v0, v209

    #@16d9
    move-object/from16 v1, p3

    #@16db
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@16de
    .line 1525
    const/4 v6, 0x1

    #@16df
    return v6

    #@16e0
    .line 1529
    .end local v209    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_76
    const-string/jumbo v6, "android.app.IActivityManager"

    #@16e3
    move-object/from16 v0, p2

    #@16e5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16e8
    .line 1530
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    #@16eb
    move-result-object v189

    #@16ec
    .line 1531
    .local v189, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16ef
    .line 1532
    const/4 v6, 0x0

    #@16f0
    move-object/from16 v0, v189

    #@16f2
    move-object/from16 v1, p3

    #@16f4
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@16f7
    .line 1533
    const/4 v6, 0x1

    #@16f8
    return v6

    #@16f9
    .line 1537
    .end local v189    # "config":Landroid/content/pm/ConfigurationInfo;
    :pswitch_77
    const-string/jumbo v6, "android.app.IActivityManager"

    #@16fc
    move-object/from16 v0, p2

    #@16fe
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1701
    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1704
    move-result-object v120

    #@1705
    .line 1539
    .local v120, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1708
    move-result v17

    #@1709
    .line 1540
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@170c
    move-result v6

    #@170d
    if-eqz v6, :cond_54

    #@170f
    const/16 v122, 0x1

    #@1711
    .line 1541
    .local v122, "start":Z
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1714
    move-result v124

    #@1715
    .line 1542
    .local v124, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1718
    move-result v6

    #@1719
    if-eqz v6, :cond_55

    #@171b
    .line 1543
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@171d
    move-object/from16 v0, p2

    #@171f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1722
    move-result-object v15

    #@1723
    check-cast v15, Landroid/app/ProfilerInfo;

    #@1725
    :goto_4d
    move-object/from16 v119, p0

    #@1727
    move/from16 v121, v17

    #@1729
    move-object/from16 v123, v15

    #@172b
    .line 1544
    invoke-virtual/range {v119 .. v124}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    #@172e
    move-result v0

    #@172f
    move/16 v276, v0

    #@1732
    .line 1545
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1735
    .line 1546
    move/from16 v0, v276

    #@1737
    if-eqz v0, :cond_56

    #@1739
    const/4 v6, 0x1

    #@173a
    :goto_4e
    move-object/from16 v0, p3

    #@173c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@173f
    .line 1547
    const/4 v6, 0x1

    #@1740
    return v6

    #@1741
    .line 1540
    .end local v122    # "start":Z
    .end local v124    # "profileType":I
    .end local v276    # "res":Z
    :cond_54
    const/16 v122, 0x0

    #@1743
    .restart local v122    # "start":Z
    goto :goto_4c

    #@1744
    .line 1543
    .restart local v124    # "profileType":I
    :cond_55
    const/4 v15, 0x0

    #@1745
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_4d

    #@1746
    .line 1546
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v276    # "res":Z
    :cond_56
    const/4 v6, 0x0

    #@1747
    goto :goto_4e

    #@1748
    .line 1551
    .end local v17    # "userId":I
    .end local v120    # "process":Ljava/lang/String;
    .end local v122    # "start":Z
    .end local v124    # "profileType":I
    .end local v276    # "res":Z
    :pswitch_78
    const-string/jumbo v6, "android.app.IActivityManager"

    #@174b
    move-object/from16 v0, p2

    #@174d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1750
    .line 1552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1753
    move-result v6

    #@1754
    move-object/from16 v0, p0

    #@1756
    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    #@1759
    move-result v0

    #@175a
    move/16 v276, v0

    #@175d
    .line 1553
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1760
    .line 1554
    move/from16 v0, v276

    #@1762
    if-eqz v0, :cond_57

    #@1764
    const/4 v6, 0x1

    #@1765
    :goto_4f
    move-object/from16 v0, p3

    #@1767
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@176a
    .line 1555
    const/4 v6, 0x1

    #@176b
    return v6

    #@176c
    .line 1554
    :cond_57
    const/4 v6, 0x0

    #@176d
    goto :goto_4f

    #@176e
    .line 1559
    .end local v276    # "res":Z
    :pswitch_79
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1771
    move-object/from16 v0, p2

    #@1773
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1776
    .line 1560
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    #@1779
    .line 1561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@177c
    .line 1562
    const/4 v6, 0x1

    #@177d
    return v6

    #@177e
    .line 1566
    :pswitch_7a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1781
    move-object/from16 v0, p2

    #@1783
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1786
    .line 1567
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    #@1789
    .line 1568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@178c
    .line 1569
    const/4 v6, 0x1

    #@178d
    return v6

    #@178e
    .line 1573
    :pswitch_7b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1791
    move-object/from16 v0, p2

    #@1793
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1796
    .line 1574
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1798
    move-object/from16 v0, p2

    #@179a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@179d
    move-result-object v70

    #@179e
    check-cast v70, Landroid/content/Intent;

    #@17a0
    .line 1575
    .restart local v70    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17a3
    move-result-object v10

    #@17a4
    .line 1576
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17a7
    move-result-object v8

    #@17a8
    .line 1577
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    #@17aa
    move-object/from16 v1, v70

    #@17ac
    invoke-virtual {v0, v1, v10, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    #@17af
    move-result-object v181

    #@17b0
    .line 1578
    .local v181, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17b3
    .line 1579
    move-object/from16 v0, p3

    #@17b5
    move-object/from16 v1, v181

    #@17b7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17ba
    .line 1580
    const/4 v6, 0x1

    #@17bb
    return v6

    #@17bc
    .line 1584
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v70    # "service":Landroid/content/Intent;
    .end local v181    # "binder":Landroid/os/IBinder;
    :pswitch_7c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@17bf
    move-object/from16 v0, p2

    #@17c1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17c4
    .line 1585
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17c6
    move-object/from16 v0, p2

    #@17c8
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17cb
    move-result-object v213

    #@17cc
    check-cast v213, Landroid/content/pm/ApplicationInfo;

    #@17ce
    .line 1586
    .local v213, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17d1
    move-result v180

    #@17d2
    .line 1587
    .local v180, "backupRestoreMode":I
    move-object/from16 v0, p0

    #@17d4
    move-object/from16 v1, v213

    #@17d6
    move/from16 v2, v180

    #@17d8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    #@17db
    move-result v0

    #@17dc
    move/16 v296, v0

    #@17df
    .line 1588
    .local v296, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17e2
    .line 1589
    move/from16 v0, v296

    #@17e4
    if-eqz v0, :cond_58

    #@17e6
    const/4 v6, 0x1

    #@17e7
    :goto_50
    move-object/from16 v0, p3

    #@17e9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@17ec
    .line 1590
    const/4 v6, 0x1

    #@17ed
    return v6

    #@17ee
    .line 1589
    :cond_58
    const/4 v6, 0x0

    #@17ef
    goto :goto_50

    #@17f0
    .line 1594
    .end local v180    # "backupRestoreMode":I
    .end local v213    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v296    # "success":Z
    :pswitch_7d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@17f3
    move-object/from16 v0, p2

    #@17f5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17f8
    .line 1595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17fb
    move-result-object v32

    #@17fc
    .line 1596
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@17ff
    move-result-object v171

    #@1800
    .line 1597
    .local v171, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1802
    move-object/from16 v1, v32

    #@1804
    move-object/from16 v2, v171

    #@1806
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    #@1809
    .line 1598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@180c
    .line 1599
    const/4 v6, 0x1

    #@180d
    return v6

    #@180e
    .line 1603
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v171    # "agent":Landroid/os/IBinder;
    :pswitch_7e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1811
    move-object/from16 v0, p2

    #@1813
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1816
    .line 1604
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1818
    move-object/from16 v0, p2

    #@181a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@181d
    move-result-object v213

    #@181e
    check-cast v213, Landroid/content/pm/ApplicationInfo;

    #@1820
    .line 1605
    .restart local v213    # "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    #@1822
    move-object/from16 v1, v213

    #@1824
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    #@1827
    .line 1606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@182a
    .line 1607
    const/4 v6, 0x1

    #@182b
    return v6

    #@182c
    .line 1611
    .end local v213    # "info":Landroid/content/pm/ApplicationInfo;
    :pswitch_7f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@182f
    move-object/from16 v0, p2

    #@1831
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1834
    .line 1612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1837
    move-result-object v32

    #@1838
    .line 1613
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@183a
    move-object/from16 v1, v32

    #@183c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    #@183f
    .line 1614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1842
    .line 1615
    const/4 v6, 0x1

    #@1843
    return v6

    #@1844
    .line 1619
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_80
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1847
    move-object/from16 v0, p2

    #@1849
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@184c
    .line 1620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@184f
    move-result-object v0

    #@1850
    move-object/16 v258, v0

    #@1853
    .line 1621
    .local v258, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1856
    move-result v176

    #@1857
    .line 1622
    .local v176, "appid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@185a
    move-result-object v0

    #@185b
    move-object/16 v266, v0

    #@185e
    .line 1623
    .restart local v266    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1860
    move-object/from16 v1, v258

    #@1862
    move/from16 v2, v176

    #@1864
    move-object/from16 v3, v266

    #@1866
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V

    #@1869
    .line 1624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@186c
    .line 1625
    const/4 v6, 0x1

    #@186d
    return v6

    #@186e
    .line 1629
    .end local v176    # "appid":I
    .end local v258    # "pkg":Ljava/lang/String;
    .end local v266    # "reason":Ljava/lang/String;
    :pswitch_81
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1871
    move-object/from16 v0, p2

    #@1873
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1876
    .line 1630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1879
    move-result-object v0

    #@187a
    move-object/16 v266, v0

    #@187d
    .line 1631
    .restart local v266    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@187f
    move-object/from16 v1, v266

    #@1881
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    #@1884
    .line 1632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1887
    .line 1633
    const/4 v6, 0x1

    #@1888
    return v6

    #@1889
    .line 1637
    .end local v266    # "reason":Ljava/lang/String;
    :pswitch_82
    const-string/jumbo v6, "android.app.IActivityManager"

    #@188c
    move-object/from16 v0, p2

    #@188e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1891
    .line 1638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@1894
    move-result-object v0

    #@1895
    move-object/16 v257, v0

    #@1898
    .line 1639
    .restart local v257    # "pids":[I
    move-object/from16 v0, p0

    #@189a
    move-object/from16 v1, v257

    #@189c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    #@189f
    move-result-object v0

    #@18a0
    move-object/16 v277, v0

    #@18a3
    .line 1640
    .local v277, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18a6
    .line 1641
    const/4 v6, 0x1

    #@18a7
    move-object/from16 v0, p3

    #@18a9
    move-object/from16 v1, v277

    #@18ab
    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@18ae
    .line 1642
    const/4 v6, 0x1

    #@18af
    return v6

    #@18b0
    .line 1646
    .end local v257    # "pids":[I
    .end local v277    # "res":[Landroid/os/Debug$MemoryInfo;
    :pswitch_83
    const-string/jumbo v6, "android.app.IActivityManager"

    #@18b3
    move-object/from16 v0, p2

    #@18b5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18b8
    .line 1647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18bb
    move-result-object v0

    #@18bc
    move-object/16 v261, v0

    #@18bf
    .line 1648
    .local v261, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18c2
    move-result v112

    #@18c3
    .line 1649
    .restart local v112    # "uid":I
    move-object/from16 v0, p0

    #@18c5
    move-object/from16 v1, v261

    #@18c7
    move/from16 v2, v112

    #@18c9
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    #@18cc
    .line 1650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18cf
    .line 1651
    const/4 v6, 0x1

    #@18d0
    return v6

    #@18d1
    .line 1655
    .end local v112    # "uid":I
    .end local v261    # "processName":Ljava/lang/String;
    :pswitch_84
    const-string/jumbo v6, "android.app.IActivityManager"

    #@18d4
    move-object/from16 v0, p2

    #@18d6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18d9
    .line 1656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@18dc
    move-result-object v73

    #@18dd
    .line 1657
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18e0
    move-result-object v32

    #@18e1
    .line 1658
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18e4
    move-result v199

    #@18e5
    .line 1659
    .local v199, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18e8
    move-result v200

    #@18e9
    .line 1660
    .local v200, "exitAnim":I
    move-object/from16 v0, p0

    #@18eb
    move-object/from16 v1, v73

    #@18ed
    move-object/from16 v2, v32

    #@18ef
    move/from16 v3, v199

    #@18f1
    move/from16 v4, v200

    #@18f3
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    #@18f6
    .line 1661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18f9
    .line 1662
    const/4 v6, 0x1

    #@18fa
    return v6

    #@18fb
    .line 1666
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v199    # "enterAnim":I
    .end local v200    # "exitAnim":I
    :pswitch_85
    const-string/jumbo v6, "android.app.IActivityManager"

    #@18fe
    move-object/from16 v0, p2

    #@1900
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1903
    .line 1667
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    #@1906
    move-result v177

    #@1907
    .line 1668
    .local v177, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@190a
    .line 1669
    if-eqz v177, :cond_59

    #@190c
    const/4 v6, 0x1

    #@190d
    :goto_51
    move-object/from16 v0, p3

    #@190f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1912
    .line 1670
    const/4 v6, 0x1

    #@1913
    return v6

    #@1914
    .line 1669
    :cond_59
    const/4 v6, 0x0

    #@1915
    goto :goto_51

    #@1916
    .line 1674
    .end local v177    # "areThey":Z
    :pswitch_86
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1919
    move-object/from16 v0, p2

    #@191b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@191e
    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1921
    move-result v6

    #@1922
    const/16 v18, 0x1

    #@1924
    move/from16 v0, v18

    #@1926
    if-ne v6, v0, :cond_5a

    #@1928
    const/16 v239, 0x1

    #@192a
    .line 1676
    .local v239, "monkey":Z
    :goto_52
    move-object/from16 v0, p0

    #@192c
    move/from16 v1, v239

    #@192e
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    #@1931
    .line 1677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1934
    .line 1678
    const/4 v6, 0x1

    #@1935
    return v6

    #@1936
    .line 1675
    .end local v239    # "monkey":Z
    :cond_5a
    const/16 v239, 0x0

    #@1938
    .restart local v239    # "monkey":Z
    goto :goto_52

    #@1939
    .line 1682
    .end local v239    # "monkey":Z
    :pswitch_87
    const-string/jumbo v6, "android.app.IActivityManager"

    #@193c
    move-object/from16 v0, p2

    #@193e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1941
    .line 1683
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    #@1944
    .line 1684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1947
    .line 1685
    const/4 v6, 0x1

    #@1948
    return v6

    #@1949
    .line 1689
    :pswitch_88
    const-string/jumbo v6, "android.app.IActivityManager"

    #@194c
    move-object/from16 v0, p2

    #@194e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1951
    .line 1690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1954
    move-result-object v73

    #@1955
    .line 1691
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1957
    move-object/from16 v1, v73

    #@1959
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    #@195c
    move-result v221

    #@195d
    .line 1692
    .local v221, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1960
    .line 1693
    if-eqz v221, :cond_5b

    #@1962
    const/4 v6, 0x1

    #@1963
    :goto_53
    move-object/from16 v0, p3

    #@1965
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1968
    .line 1694
    const/4 v6, 0x1

    #@1969
    return v6

    #@196a
    .line 1693
    :cond_5b
    const/4 v6, 0x0

    #@196b
    goto :goto_53

    #@196c
    .line 1698
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v221    # "isit":Z
    :pswitch_89
    const-string/jumbo v6, "android.app.IActivityManager"

    #@196f
    move-object/from16 v0, p2

    #@1971
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1974
    .line 1699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1977
    move-result-object v73

    #@1978
    .line 1700
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@197a
    move-object/from16 v1, v73

    #@197c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    #@197f
    move-result v220

    #@1980
    .line 1701
    .local v220, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1983
    .line 1702
    if-eqz v220, :cond_5c

    #@1985
    const/4 v6, 0x1

    #@1986
    :goto_54
    move-object/from16 v0, p3

    #@1988
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@198b
    .line 1703
    const/4 v6, 0x1

    #@198c
    return v6

    #@198d
    .line 1702
    :cond_5c
    const/4 v6, 0x0

    #@198e
    goto :goto_54

    #@198f
    .line 1707
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v220    # "isTopOfTask":Z
    :pswitch_8a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1992
    move-object/from16 v0, p2

    #@1994
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1997
    .line 1708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@199a
    move-result-object v73

    #@199b
    .line 1709
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@199d
    move-object/from16 v1, v73

    #@199f
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    #@19a2
    move-result v190

    #@19a3
    .line 1710
    .local v190, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19a6
    .line 1711
    if-eqz v190, :cond_5d

    #@19a8
    const/4 v6, 0x1

    #@19a9
    :goto_55
    move-object/from16 v0, p3

    #@19ab
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@19ae
    .line 1712
    const/4 v6, 0x1

    #@19af
    return v6

    #@19b0
    .line 1711
    :cond_5d
    const/4 v6, 0x0

    #@19b1
    goto :goto_55

    #@19b2
    .line 1716
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v190    # "converted":Z
    :pswitch_8b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@19b5
    move-object/from16 v0, p2

    #@19b7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19ba
    .line 1717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19bd
    move-result-object v73

    #@19be
    .line 1719
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19c1
    move-result v6

    #@19c2
    if-nez v6, :cond_5e

    #@19c4
    .line 1720
    const/16 v182, 0x0

    #@19c6
    .line 1724
    :goto_56
    if-nez v182, :cond_5f

    #@19c8
    const/16 v247, 0x0

    #@19ca
    .line 1725
    :goto_57
    move-object/from16 v0, p0

    #@19cc
    move-object/from16 v1, v73

    #@19ce
    move-object/from16 v2, v247

    #@19d0
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    #@19d3
    move-result v190

    #@19d4
    .line 1726
    .restart local v190    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19d7
    .line 1727
    if-eqz v190, :cond_60

    #@19d9
    const/4 v6, 0x1

    #@19da
    :goto_58
    move-object/from16 v0, p3

    #@19dc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@19df
    .line 1728
    const/4 v6, 0x1

    #@19e0
    return v6

    #@19e1
    .line 1722
    .end local v190    # "converted":Z
    :cond_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@19e4
    move-result-object v182

    #@19e5
    .local v182, "bundle":Landroid/os/Bundle;
    goto :goto_56

    #@19e6
    .line 1724
    .end local v182    # "bundle":Landroid/os/Bundle;
    :cond_5f
    new-instance v247, Landroid/app/ActivityOptions;

    #@19e8
    move-object/from16 v0, v247

    #@19ea
    move-object/from16 v1, v182

    #@19ec
    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    #@19ef
    .local v247, "options":Landroid/app/ActivityOptions;
    goto :goto_57

    #@19f0
    .line 1727
    .end local v247    # "options":Landroid/app/ActivityOptions;
    .restart local v190    # "converted":Z
    :cond_60
    const/4 v6, 0x0

    #@19f1
    goto :goto_58

    #@19f2
    .line 1732
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v190    # "converted":Z
    :pswitch_8c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@19f5
    move-object/from16 v0, p2

    #@19f7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19fa
    .line 1733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19fd
    move-result-object v73

    #@19fe
    .line 1734
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1a00
    move-object/from16 v1, v73

    #@1a02
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    #@1a05
    move-result-object v247

    #@1a06
    .line 1735
    .restart local v247    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a09
    .line 1736
    if-nez v247, :cond_61

    #@1a0b
    const/4 v6, 0x0

    #@1a0c
    :goto_59
    move-object/from16 v0, p3

    #@1a0e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@1a11
    .line 1737
    const/4 v6, 0x1

    #@1a12
    return v6

    #@1a13
    .line 1736
    :cond_61
    invoke-virtual/range {v247 .. v247}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@1a16
    move-result-object v6

    #@1a17
    goto :goto_59

    #@1a18
    .line 1741
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v247    # "options":Landroid/app/ActivityOptions;
    :pswitch_8d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a1b
    move-object/from16 v0, p2

    #@1a1d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a20
    .line 1742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a23
    move-result-object v73

    #@1a24
    .line 1743
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a27
    move-result v6

    #@1a28
    const/16 v18, 0x1

    #@1a2a
    move/from16 v0, v18

    #@1a2c
    if-ne v6, v0, :cond_62

    #@1a2e
    const/16 v207, 0x1

    #@1a30
    .line 1744
    .local v207, "imm":Z
    :goto_5a
    move-object/from16 v0, p0

    #@1a32
    move-object/from16 v1, v73

    #@1a34
    move/from16 v2, v207

    #@1a36
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    #@1a39
    .line 1745
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a3c
    .line 1746
    const/4 v6, 0x1

    #@1a3d
    return v6

    #@1a3e
    .line 1743
    .end local v207    # "imm":Z
    :cond_62
    const/16 v207, 0x0

    #@1a40
    .restart local v207    # "imm":Z
    goto :goto_5a

    #@1a41
    .line 1750
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v207    # "imm":Z
    :pswitch_8e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a44
    move-object/from16 v0, p2

    #@1a46
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a49
    .line 1751
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    #@1a4c
    move-result v221

    #@1a4d
    .line 1752
    .restart local v221    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a50
    .line 1753
    if-eqz v221, :cond_63

    #@1a52
    const/4 v6, 0x1

    #@1a53
    :goto_5b
    move-object/from16 v0, p3

    #@1a55
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1a58
    .line 1754
    const/4 v6, 0x1

    #@1a59
    return v6

    #@1a5a
    .line 1753
    :cond_63
    const/4 v6, 0x0

    #@1a5b
    goto :goto_5b

    #@1a5c
    .line 1758
    .end local v221    # "isit":Z
    :pswitch_8f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a5f
    move-object/from16 v0, p2

    #@1a61
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a64
    .line 1759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a67
    move-result v112

    #@1a68
    .line 1760
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a6b
    move-result v215

    #@1a6c
    .line 1761
    .local v215, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a6f
    move-result-object v32

    #@1a70
    .line 1762
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a73
    move-result-object v237

    #@1a74
    .line 1763
    .local v237, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a76
    move/from16 v1, v112

    #@1a78
    move/from16 v2, v215

    #@1a7a
    move-object/from16 v3, v32

    #@1a7c
    move-object/from16 v4, v237

    #@1a7e
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    #@1a81
    .line 1764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a84
    .line 1765
    const/4 v6, 0x1

    #@1a85
    return v6

    #@1a86
    .line 1769
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v112    # "uid":I
    .end local v215    # "initialPid":I
    .end local v237    # "message":Ljava/lang/String;
    :pswitch_90
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a89
    move-object/from16 v0, p2

    #@1a8b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a8e
    .line 1770
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a90
    move-object/from16 v0, p2

    #@1a92
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a95
    move-result-object v110

    #@1a96
    check-cast v110, Landroid/net/Uri;

    #@1a98
    .line 1771
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a9b
    move-result v17

    #@1a9c
    .line 1772
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1a9e
    move-object/from16 v1, v110

    #@1aa0
    move/from16 v2, v17

    #@1aa2
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    #@1aa5
    move-result-object v0

    #@1aa6
    move-object/16 v306, v0

    #@1aa9
    .line 1773
    .local v306, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1aac
    .line 1774
    move-object/from16 v0, p3

    #@1aae
    move-object/from16 v1, v306

    #@1ab0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1ab3
    .line 1775
    const/4 v6, 0x1

    #@1ab4
    return v6

    #@1ab5
    .line 1779
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v306    # "type":Ljava/lang/String;
    :pswitch_91
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1ab8
    move-object/from16 v0, p2

    #@1aba
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1abd
    .line 1780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ac0
    move-result-object v107

    #@1ac1
    .line 1781
    .restart local v107    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1ac3
    move-object/from16 v1, v107

    #@1ac5
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    #@1ac8
    move-result-object v252

    #@1ac9
    .line 1782
    .local v252, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1acc
    .line 1783
    move-object/from16 v0, p3

    #@1ace
    move-object/from16 v1, v252

    #@1ad0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1ad3
    .line 1784
    const/4 v6, 0x1

    #@1ad4
    return v6

    #@1ad5
    .line 1788
    .end local v107    # "name":Ljava/lang/String;
    .end local v252    # "perm":Landroid/os/IBinder;
    :pswitch_92
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1ad8
    move-object/from16 v0, p2

    #@1ada
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1add
    .line 1789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1ae0
    move-result-object v126

    #@1ae1
    .line 1790
    .local v126, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ae4
    move-result v127

    #@1ae5
    .line 1791
    .local v127, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ae8
    move-result-object v118

    #@1ae9
    .line 1792
    .restart local v118    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1aeb
    move-object/from16 v0, p2

    #@1aed
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1af0
    move-result-object v110

    #@1af1
    check-cast v110, Landroid/net/Uri;

    #@1af3
    .line 1793
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1af6
    move-result v113

    #@1af7
    .line 1794
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1afa
    move-result v131

    #@1afb
    .line 1795
    .local v131, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1afe
    move-result v132

    #@1aff
    .local v132, "targetUserId":I
    move-object/from16 v125, p0

    #@1b01
    move-object/from16 v128, v118

    #@1b03
    move-object/from16 v129, v110

    #@1b05
    move/from16 v130, v113

    #@1b07
    .line 1796
    invoke-virtual/range {v125 .. v132}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    #@1b0a
    .line 1798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b0d
    .line 1799
    const/4 v6, 0x1

    #@1b0e
    return v6

    #@1b0f
    .line 1803
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    .end local v118    # "targetPkg":Ljava/lang/String;
    .end local v126    # "owner":Landroid/os/IBinder;
    .end local v127    # "fromUid":I
    .end local v131    # "sourceUserId":I
    .end local v132    # "targetUserId":I
    :pswitch_93
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1b12
    move-object/from16 v0, p2

    #@1b14
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b17
    .line 1804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b1a
    move-result-object v126

    #@1b1b
    .line 1805
    .restart local v126    # "owner":Landroid/os/IBinder;
    const/16 v110, 0x0

    #@1b1d
    .line 1806
    .local v110, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b20
    move-result v6

    #@1b21
    if-eqz v6, :cond_64

    #@1b23
    .line 1807
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b25
    move-object/from16 v0, p2

    #@1b27
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b2a
    move-result-object v110

    #@1b2b
    .end local v110    # "uri":Landroid/net/Uri;
    check-cast v110, Landroid/net/Uri;

    #@1b2d
    .line 1809
    :cond_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b30
    move-result v113

    #@1b31
    .line 1810
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b34
    move-result v17

    #@1b35
    .line 1811
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1b37
    move-object/from16 v1, v126

    #@1b39
    move-object/from16 v2, v110

    #@1b3b
    move/from16 v3, v113

    #@1b3d
    move/from16 v4, v17

    #@1b3f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    #@1b42
    .line 1812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b45
    .line 1813
    const/4 v6, 0x1

    #@1b46
    return v6

    #@1b47
    .line 1817
    .end local v17    # "userId":I
    .end local v113    # "mode":I
    .end local v126    # "owner":Landroid/os/IBinder;
    :pswitch_94
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1b4a
    move-object/from16 v0, p2

    #@1b4c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b4f
    .line 1818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b52
    move-result v43

    #@1b53
    .line 1819
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b56
    move-result-object v118

    #@1b57
    .line 1820
    .restart local v118    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b59
    move-object/from16 v0, p2

    #@1b5b
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b5e
    move-result-object v110

    #@1b5f
    check-cast v110, Landroid/net/Uri;

    #@1b61
    .line 1821
    .local v110, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b64
    move-result v137

    #@1b65
    .line 1822
    .local v137, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b68
    move-result v17

    #@1b69
    .restart local v17    # "userId":I
    move-object/from16 v133, p0

    #@1b6b
    move/from16 v134, v43

    #@1b6d
    move-object/from16 v135, v118

    #@1b6f
    move-object/from16 v136, v110

    #@1b71
    move/from16 v138, v17

    #@1b73
    .line 1823
    invoke-virtual/range {v133 .. v138}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    #@1b76
    move-result v0

    #@1b77
    move/16 v270, v0

    #@1b7a
    .line 1824
    .restart local v270    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b7d
    .line 1825
    move-object/from16 v0, p3

    #@1b7f
    move/from16 v1, v270

    #@1b81
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b84
    .line 1826
    const/4 v6, 0x1

    #@1b85
    return v6

    #@1b86
    .line 1830
    .end local v17    # "userId":I
    .end local v43    # "callingUid":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v118    # "targetPkg":Ljava/lang/String;
    .end local v137    # "modeFlags":I
    .end local v270    # "res":I
    :pswitch_95
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1b89
    move-object/from16 v0, p2

    #@1b8b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b8e
    .line 1831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b91
    move-result-object v120

    #@1b92
    .line 1832
    .restart local v120    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b95
    move-result v17

    #@1b96
    .line 1833
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b99
    move-result v6

    #@1b9a
    if-eqz v6, :cond_65

    #@1b9c
    const/16 v141, 0x1

    #@1b9e
    .line 1834
    .local v141, "managed":Z
    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ba1
    move-result-object v142

    #@1ba2
    .line 1835
    .local v142, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ba5
    move-result v6

    #@1ba6
    if-eqz v6, :cond_66

    #@1ba8
    .line 1836
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1baa
    move-object/from16 v0, p2

    #@1bac
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1baf
    move-result-object v143

    #@1bb0
    check-cast v143, Landroid/os/ParcelFileDescriptor;

    #@1bb2
    :goto_5d
    move-object/from16 v138, p0

    #@1bb4
    move-object/from16 v139, v120

    #@1bb6
    move/from16 v140, v17

    #@1bb8
    .line 1837
    invoke-virtual/range {v138 .. v143}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    #@1bbb
    move-result v0

    #@1bbc
    move/16 v276, v0

    #@1bbf
    .line 1838
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bc2
    .line 1839
    move/from16 v0, v276

    #@1bc4
    if-eqz v0, :cond_67

    #@1bc6
    const/4 v6, 0x1

    #@1bc7
    :goto_5e
    move-object/from16 v0, p3

    #@1bc9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1bcc
    .line 1840
    const/4 v6, 0x1

    #@1bcd
    return v6

    #@1bce
    .line 1833
    .end local v141    # "managed":Z
    .end local v142    # "path":Ljava/lang/String;
    .end local v276    # "res":Z
    :cond_65
    const/16 v141, 0x0

    #@1bd0
    .restart local v141    # "managed":Z
    goto :goto_5c

    #@1bd1
    .line 1836
    .restart local v142    # "path":Ljava/lang/String;
    :cond_66
    const/16 v143, 0x0

    #@1bd3
    .local v143, "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_5d

    #@1bd4
    .line 1839
    .end local v143    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v276    # "res":Z
    :cond_67
    const/4 v6, 0x0

    #@1bd5
    goto :goto_5e

    #@1bd6
    .line 1845
    .end local v17    # "userId":I
    .end local v120    # "process":Ljava/lang/String;
    .end local v141    # "managed":Z
    .end local v142    # "path":Ljava/lang/String;
    .end local v276    # "res":Z
    :pswitch_96
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1bd9
    move-object/from16 v0, p2

    #@1bdb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bde
    .line 1846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1be1
    move-result-object v179

    #@1be2
    .line 1847
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@1be5
    move-result-object v7

    #@1be6
    .line 1848
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1be9
    move-result-object v8

    #@1bea
    .line 1849
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1bec
    move-object/from16 v0, p2

    #@1bee
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1bf1
    move-result-object v147

    #@1bf2
    check-cast v147, [Landroid/content/Intent;

    #@1bf4
    .line 1850
    .local v147, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1bf7
    move-result-object v148

    #@1bf8
    .line 1851
    .local v148, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1bfb
    move-result-object v11

    #@1bfc
    .line 1852
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bff
    move-result v6

    #@1c00
    if-eqz v6, :cond_68

    #@1c02
    .line 1853
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c04
    move-object/from16 v0, p2

    #@1c06
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c09
    move-result-object v16

    #@1c0a
    check-cast v16, Landroid/os/Bundle;

    #@1c0c
    .line 1854
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c0f
    move-result v17

    #@1c10
    .restart local v17    # "userId":I
    move-object/from16 v144, p0

    #@1c12
    move-object/from16 v145, v7

    #@1c14
    move-object/from16 v146, v8

    #@1c16
    move-object/from16 v149, v11

    #@1c18
    move-object/from16 v150, v16

    #@1c1a
    move/from16 v151, v17

    #@1c1c
    .line 1855
    invoke-virtual/range {v144 .. v151}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    #@1c1f
    move-result v0

    #@1c20
    move/16 v279, v0

    #@1c23
    .line 1857
    .restart local v279    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c26
    .line 1858
    move-object/from16 v0, p3

    #@1c28
    move/from16 v1, v279

    #@1c2a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c2d
    .line 1859
    const/4 v6, 0x1

    #@1c2e
    return v6

    #@1c2f
    .line 1853
    .end local v17    # "userId":I
    .end local v279    # "result":I
    :cond_68
    const/16 v16, 0x0

    #@1c31
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_5f

    #@1c32
    .line 1864
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v147    # "intents":[Landroid/content/Intent;
    .end local v148    # "resolvedTypes":[Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_97
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1c35
    move-object/from16 v0, p2

    #@1c37
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c3a
    .line 1865
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    #@1c3d
    move-result v113

    #@1c3e
    .line 1866
    .restart local v113    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c41
    .line 1867
    move-object/from16 v0, p3

    #@1c43
    move/from16 v1, v113

    #@1c45
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c48
    .line 1868
    const/4 v6, 0x1

    #@1c49
    return v6

    #@1c4a
    .line 1873
    .end local v113    # "mode":I
    :pswitch_98
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1c4d
    move-object/from16 v0, p2

    #@1c4f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c52
    .line 1874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c55
    move-result v113

    #@1c56
    .line 1875
    .restart local v113    # "mode":I
    move-object/from16 v0, p0

    #@1c58
    move/from16 v1, v113

    #@1c5a
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    #@1c5d
    .line 1876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c60
    .line 1877
    move-object/from16 v0, p3

    #@1c62
    move/from16 v1, v113

    #@1c64
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c67
    .line 1878
    const/4 v6, 0x1

    #@1c68
    return v6

    #@1c69
    .line 1883
    .end local v113    # "mode":I
    :pswitch_99
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1c6c
    move-object/from16 v0, p2

    #@1c6e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c71
    .line 1884
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c74
    move-result-object v0

    #@1c75
    move-object/16 v258, v0

    #@1c78
    .line 1885
    .restart local v258    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1c7a
    move-object/from16 v1, v258

    #@1c7c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    #@1c7f
    move-result v113

    #@1c80
    .line 1886
    .restart local v113    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c83
    .line 1887
    move-object/from16 v0, p3

    #@1c85
    move/from16 v1, v113

    #@1c87
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c8a
    .line 1888
    const/4 v6, 0x1

    #@1c8b
    return v6

    #@1c8c
    .line 1893
    .end local v113    # "mode":I
    .end local v258    # "pkg":Ljava/lang/String;
    :pswitch_9a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1c8f
    move-object/from16 v0, p2

    #@1c91
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c94
    .line 1894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c97
    move-result-object v0

    #@1c98
    move-object/16 v258, v0

    #@1c9b
    .line 1895
    .restart local v258    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c9e
    move-result v113

    #@1c9f
    .line 1896
    .restart local v113    # "mode":I
    move-object/from16 v0, p0

    #@1ca1
    move-object/from16 v1, v258

    #@1ca3
    move/from16 v2, v113

    #@1ca5
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    #@1ca8
    .line 1897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cab
    .line 1898
    const/4 v6, 0x1

    #@1cac
    return v6

    #@1cad
    .line 1902
    .end local v113    # "mode":I
    .end local v258    # "pkg":Ljava/lang/String;
    :pswitch_9b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1cb0
    move-object/from16 v0, p2

    #@1cb2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cb5
    .line 1903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cb8
    move-result v0

    #@1cb9
    move/16 v309, v0

    #@1cbc
    .line 1904
    .local v309, "userid":I
    move-object/from16 v0, p0

    #@1cbe
    move/from16 v1, v309

    #@1cc0
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    #@1cc3
    move-result v0

    #@1cc4
    move/16 v281, v0

    #@1cc7
    .line 1905
    .restart local v281    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cca
    .line 1906
    move/from16 v0, v281

    #@1ccc
    if-eqz v0, :cond_69

    #@1cce
    const/4 v6, 0x1

    #@1ccf
    :goto_60
    move-object/from16 v0, p3

    #@1cd1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1cd4
    .line 1907
    const/4 v6, 0x1

    #@1cd5
    return v6

    #@1cd6
    .line 1906
    :cond_69
    const/4 v6, 0x0

    #@1cd7
    goto :goto_60

    #@1cd8
    .line 1911
    .end local v281    # "result":Z
    .end local v309    # "userid":I
    :pswitch_9c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1cdb
    move-object/from16 v0, p2

    #@1cdd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ce0
    .line 1912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ce3
    move-result v0

    #@1ce4
    move/16 v309, v0

    #@1ce7
    .line 1913
    .restart local v309    # "userid":I
    move-object/from16 v0, p0

    #@1ce9
    move/from16 v1, v309

    #@1ceb
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    #@1cee
    move-result v0

    #@1cef
    move/16 v281, v0

    #@1cf2
    .line 1914
    .restart local v281    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cf5
    .line 1915
    move/from16 v0, v281

    #@1cf7
    if-eqz v0, :cond_6a

    #@1cf9
    const/4 v6, 0x1

    #@1cfa
    :goto_61
    move-object/from16 v0, p3

    #@1cfc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1cff
    .line 1916
    const/4 v6, 0x1

    #@1d00
    return v6

    #@1d01
    .line 1915
    :cond_6a
    const/4 v6, 0x0

    #@1d02
    goto :goto_61

    #@1d03
    .line 1920
    .end local v281    # "result":Z
    .end local v309    # "userid":I
    :pswitch_9d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1d06
    move-object/from16 v0, p2

    #@1d08
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d0b
    .line 1921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d0e
    move-result v0

    #@1d0f
    move/16 v309, v0

    #@1d12
    .line 1923
    .restart local v309    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d15
    move-result-object v6

    #@1d16
    .line 1922
    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    #@1d19
    move-result-object v184

    #@1d1a
    .line 1924
    .local v184, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    #@1d1c
    move/from16 v1, v309

    #@1d1e
    move-object/from16 v2, v184

    #@1d20
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopUser(ILandroid/app/IStopUserCallback;)I

    #@1d23
    move-result v0

    #@1d24
    move/16 v279, v0

    #@1d27
    .line 1925
    .restart local v279    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d2a
    .line 1926
    move-object/from16 v0, p3

    #@1d2c
    move/from16 v1, v279

    #@1d2e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d31
    .line 1927
    const/4 v6, 0x1

    #@1d32
    return v6

    #@1d33
    .line 1931
    .end local v184    # "callback":Landroid/app/IStopUserCallback;
    .end local v279    # "result":I
    .end local v309    # "userid":I
    :pswitch_9e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1d36
    move-object/from16 v0, p2

    #@1d38
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d3b
    .line 1932
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@1d3e
    move-result-object v0

    #@1d3f
    move-object/16 v308, v0

    #@1d42
    .line 1933
    .local v308, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d45
    .line 1934
    const/4 v6, 0x0

    #@1d46
    move-object/from16 v0, v308

    #@1d48
    move-object/from16 v1, p3

    #@1d4a
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d4d
    .line 1935
    const/4 v6, 0x1

    #@1d4e
    return v6

    #@1d4f
    .line 1939
    .end local v308    # "userInfo":Landroid/content/pm/UserInfo;
    :pswitch_9f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1d52
    move-object/from16 v0, p2

    #@1d54
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d57
    .line 1940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d5a
    move-result v0

    #@1d5b
    move/16 v309, v0

    #@1d5e
    .line 1941
    .restart local v309    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d61
    move-result v6

    #@1d62
    if-eqz v6, :cond_6b

    #@1d64
    const/16 v248, 0x1

    #@1d66
    .line 1942
    .local v248, "orStopping":Z
    :goto_62
    move-object/from16 v0, p0

    #@1d68
    move/from16 v1, v309

    #@1d6a
    move/from16 v2, v248

    #@1d6c
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(IZ)Z

    #@1d6f
    move-result v0

    #@1d70
    move/16 v281, v0

    #@1d73
    .line 1943
    .restart local v281    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d76
    .line 1944
    move/from16 v0, v281

    #@1d78
    if-eqz v0, :cond_6c

    #@1d7a
    const/4 v6, 0x1

    #@1d7b
    :goto_63
    move-object/from16 v0, p3

    #@1d7d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1d80
    .line 1945
    const/4 v6, 0x1

    #@1d81
    return v6

    #@1d82
    .line 1941
    .end local v248    # "orStopping":Z
    .end local v281    # "result":Z
    :cond_6b
    const/16 v248, 0x0

    #@1d84
    .restart local v248    # "orStopping":Z
    goto :goto_62

    #@1d85
    .line 1944
    .restart local v281    # "result":Z
    :cond_6c
    const/4 v6, 0x0

    #@1d86
    goto :goto_63

    #@1d87
    .line 1949
    .end local v248    # "orStopping":Z
    .end local v281    # "result":Z
    .end local v309    # "userid":I
    :pswitch_a0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1d8a
    move-object/from16 v0, p2

    #@1d8c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d8f
    .line 1950
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    #@1d92
    move-result-object v0

    #@1d93
    move-object/16 v282, v0

    #@1d96
    .line 1951
    .local v282, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d99
    .line 1952
    move-object/from16 v0, p3

    #@1d9b
    move-object/from16 v1, v282

    #@1d9d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1da0
    .line 1953
    const/4 v6, 0x1

    #@1da1
    return v6

    #@1da2
    .line 1958
    .end local v282    # "result":[I
    :pswitch_a1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1da5
    move-object/from16 v0, p2

    #@1da7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1daa
    .line 1959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1dad
    move-result v0

    #@1dae
    move/16 v302, v0

    #@1db1
    .line 1960
    .restart local v302    # "taskId":I
    move-object/from16 v0, p0

    #@1db3
    move/from16 v1, v302

    #@1db5
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeTask(I)Z

    #@1db8
    move-result v0

    #@1db9
    move/16 v281, v0

    #@1dbc
    .line 1961
    .restart local v281    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1dbf
    .line 1962
    move/from16 v0, v281

    #@1dc1
    if-eqz v0, :cond_6d

    #@1dc3
    const/4 v6, 0x1

    #@1dc4
    :goto_64
    move-object/from16 v0, p3

    #@1dc6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1dc9
    .line 1963
    const/4 v6, 0x1

    #@1dca
    return v6

    #@1dcb
    .line 1962
    :cond_6d
    const/4 v6, 0x0

    #@1dcc
    goto :goto_64

    #@1dcd
    .line 1967
    .end local v281    # "result":Z
    .end local v302    # "taskId":I
    :pswitch_a2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1dd0
    move-object/from16 v0, p2

    #@1dd2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1dd5
    .line 1969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1dd8
    move-result-object v6

    #@1dd9
    .line 1968
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    #@1ddc
    move-result-object v242

    #@1ddd
    .line 1970
    .local v242, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    #@1ddf
    move-object/from16 v1, v242

    #@1de1
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    #@1de4
    .line 1971
    const/4 v6, 0x1

    #@1de5
    return v6

    #@1de6
    .line 1975
    .end local v242    # "observer":Landroid/app/IProcessObserver;
    :pswitch_a3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1de9
    move-object/from16 v0, p2

    #@1deb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1dee
    .line 1977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1df1
    move-result-object v6

    #@1df2
    .line 1976
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    #@1df5
    move-result-object v242

    #@1df6
    .line 1978
    .restart local v242    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    #@1df8
    move-object/from16 v1, v242

    #@1dfa
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    #@1dfd
    .line 1979
    const/4 v6, 0x1

    #@1dfe
    return v6

    #@1dff
    .line 1983
    .end local v242    # "observer":Landroid/app/IProcessObserver;
    :pswitch_a4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1e02
    move-object/from16 v0, p2

    #@1e04
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e07
    .line 1985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1e0a
    move-result-object v6

    #@1e0b
    .line 1984
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    #@1e0e
    move-result-object v243

    #@1e0f
    .line 1986
    .local v243, "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    #@1e11
    move-object/from16 v1, v243

    #@1e13
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUidObserver(Landroid/app/IUidObserver;)V

    #@1e16
    .line 1987
    const/4 v6, 0x1

    #@1e17
    return v6

    #@1e18
    .line 1991
    .end local v243    # "observer":Landroid/app/IUidObserver;
    :pswitch_a5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1e1b
    move-object/from16 v0, p2

    #@1e1d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e20
    .line 1993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1e23
    move-result-object v6

    #@1e24
    .line 1992
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    #@1e27
    move-result-object v243

    #@1e28
    .line 1994
    .restart local v243    # "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    #@1e2a
    move-object/from16 v1, v243

    #@1e2c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    #@1e2f
    .line 1995
    const/4 v6, 0x1

    #@1e30
    return v6

    #@1e31
    .line 2000
    .end local v243    # "observer":Landroid/app/IUidObserver;
    :pswitch_a6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1e34
    move-object/from16 v0, p2

    #@1e36
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e39
    .line 2001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e3c
    move-result-object v0

    #@1e3d
    move-object/16 v258, v0

    #@1e40
    .line 2002
    .restart local v258    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1e42
    move-object/from16 v1, v258

    #@1e44
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    #@1e47
    move-result v178

    #@1e48
    .line 2003
    .local v178, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e4b
    .line 2004
    if-eqz v178, :cond_6e

    #@1e4d
    const/4 v6, 0x1

    #@1e4e
    :goto_65
    move-object/from16 v0, p3

    #@1e50
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1e53
    .line 2005
    const/4 v6, 0x1

    #@1e54
    return v6

    #@1e55
    .line 2004
    :cond_6e
    const/4 v6, 0x0

    #@1e56
    goto :goto_65

    #@1e57
    .line 2010
    .end local v178    # "ask":Z
    .end local v258    # "pkg":Ljava/lang/String;
    :pswitch_a7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1e5a
    move-object/from16 v0, p2

    #@1e5c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e5f
    .line 2011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e62
    move-result-object v0

    #@1e63
    move-object/16 v258, v0

    #@1e66
    .line 2012
    .restart local v258    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e69
    move-result v6

    #@1e6a
    if-eqz v6, :cond_6f

    #@1e6c
    const/16 v178, 0x1

    #@1e6e
    .line 2013
    .local v178, "ask":Z
    :goto_66
    move-object/from16 v0, p0

    #@1e70
    move-object/from16 v1, v258

    #@1e72
    move/from16 v2, v178

    #@1e74
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    #@1e77
    .line 2014
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e7a
    .line 2015
    const/4 v6, 0x1

    #@1e7b
    return v6

    #@1e7c
    .line 2012
    .end local v178    # "ask":Z
    :cond_6f
    const/16 v178, 0x0

    #@1e7e
    .restart local v178    # "ask":Z
    goto :goto_66

    #@1e7f
    .line 2019
    .end local v178    # "ask":Z
    .end local v258    # "pkg":Ljava/lang/String;
    :pswitch_a8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1e82
    move-object/from16 v0, p2

    #@1e84
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e87
    .line 2021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1e8a
    move-result-object v6

    #@1e8b
    .line 2020
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@1e8e
    move-result-object v0

    #@1e8f
    move-object/16 v264, v0

    #@1e92
    .line 2022
    .restart local v264    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@1e94
    move-object/from16 v1, v264

    #@1e96
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    #@1e99
    move-result v0

    #@1e9a
    move/16 v276, v0

    #@1e9d
    .line 2023
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ea0
    .line 2024
    move/from16 v0, v276

    #@1ea2
    if-eqz v0, :cond_70

    #@1ea4
    const/4 v6, 0x1

    #@1ea5
    :goto_67
    move-object/from16 v0, p3

    #@1ea7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1eaa
    .line 2025
    const/4 v6, 0x1

    #@1eab
    return v6

    #@1eac
    .line 2024
    :cond_70
    const/4 v6, 0x0

    #@1ead
    goto :goto_67

    #@1eae
    .line 2029
    .end local v264    # "r":Landroid/content/IIntentSender;
    .end local v276    # "res":Z
    :pswitch_a9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1eb1
    move-object/from16 v0, p2

    #@1eb3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1eb6
    .line 2031
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1eb9
    move-result-object v6

    #@1eba
    .line 2030
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@1ebd
    move-result-object v0

    #@1ebe
    move-object/16 v264, v0

    #@1ec1
    .line 2032
    .restart local v264    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@1ec3
    move-object/from16 v1, v264

    #@1ec5
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    #@1ec8
    move-result v0

    #@1ec9
    move/16 v276, v0

    #@1ecc
    .line 2033
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ecf
    .line 2034
    move/from16 v0, v276

    #@1ed1
    if-eqz v0, :cond_71

    #@1ed3
    const/4 v6, 0x1

    #@1ed4
    :goto_68
    move-object/from16 v0, p3

    #@1ed6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1ed9
    .line 2035
    const/4 v6, 0x1

    #@1eda
    return v6

    #@1edb
    .line 2034
    :cond_71
    const/4 v6, 0x0

    #@1edc
    goto :goto_68

    #@1edd
    .line 2039
    .end local v264    # "r":Landroid/content/IIntentSender;
    .end local v276    # "res":Z
    :pswitch_aa
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1ee0
    move-object/from16 v0, p2

    #@1ee2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ee5
    .line 2041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1ee8
    move-result-object v6

    #@1ee9
    .line 2040
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@1eec
    move-result-object v0

    #@1eed
    move-object/16 v264, v0

    #@1ef0
    .line 2042
    .restart local v264    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@1ef2
    move-object/from16 v1, v264

    #@1ef4
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    #@1ef7
    move-result-object v9

    #@1ef8
    .line 2043
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1efb
    .line 2044
    if-eqz v9, :cond_72

    #@1efd
    .line 2045
    const/4 v6, 0x1

    #@1efe
    move-object/from16 v0, p3

    #@1f00
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1f03
    .line 2046
    const/4 v6, 0x1

    #@1f04
    move-object/from16 v0, p3

    #@1f06
    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f09
    .line 2050
    :goto_69
    const/4 v6, 0x1

    #@1f0a
    return v6

    #@1f0b
    .line 2048
    :cond_72
    const/4 v6, 0x0

    #@1f0c
    move-object/from16 v0, p3

    #@1f0e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1f11
    goto :goto_69

    #@1f12
    .line 2054
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v264    # "r":Landroid/content/IIntentSender;
    :pswitch_ab
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1f15
    move-object/from16 v0, p2

    #@1f17
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f1a
    .line 2056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f1d
    move-result-object v6

    #@1f1e
    .line 2055
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@1f21
    move-result-object v0

    #@1f22
    move-object/16 v264, v0

    #@1f25
    .line 2057
    .restart local v264    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f28
    move-result-object v0

    #@1f29
    move-object/16 v260, v0

    #@1f2c
    .line 2058
    .local v260, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1f2e
    move-object/from16 v1, v264

    #@1f30
    move-object/from16 v2, v260

    #@1f32
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    #@1f35
    move-result-object v0

    #@1f36
    move-object/16 v298, v0

    #@1f39
    .line 2059
    .restart local v298    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f3c
    .line 2060
    move-object/from16 v0, p3

    #@1f3e
    move-object/from16 v1, v298

    #@1f40
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f43
    .line 2061
    const/4 v6, 0x1

    #@1f44
    return v6

    #@1f45
    .line 2065
    .end local v260    # "prefix":Ljava/lang/String;
    .end local v264    # "r":Landroid/content/IIntentSender;
    .end local v298    # "tag":Ljava/lang/String;
    :pswitch_ac
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1f48
    move-object/from16 v0, p2

    #@1f4a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f4d
    .line 2066
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f4f
    move-object/from16 v0, p2

    #@1f51
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f54
    move-result-object v39

    #@1f55
    check-cast v39, Landroid/content/res/Configuration;

    #@1f57
    .line 2067
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    #@1f59
    move-object/from16 v1, v39

    #@1f5b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    #@1f5e
    .line 2068
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f61
    .line 2069
    const/4 v6, 0x1

    #@1f62
    return v6

    #@1f63
    .line 2073
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_ad
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1f66
    move-object/from16 v0, p2

    #@1f68
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f6b
    .line 2074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@1f6e
    move-result-object v0

    #@1f6f
    move-object/16 v257, v0

    #@1f72
    .line 2075
    .restart local v257    # "pids":[I
    move-object/from16 v0, p0

    #@1f74
    move-object/from16 v1, v257

    #@1f76
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    #@1f79
    move-result-object v0

    #@1f7a
    move-object/16 v263, v0

    #@1f7d
    .line 2076
    .local v263, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f80
    .line 2077
    move-object/from16 v0, p3

    #@1f82
    move-object/from16 v1, v263

    #@1f84
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    #@1f87
    .line 2078
    const/4 v6, 0x1

    #@1f88
    return v6

    #@1f89
    .line 2082
    .end local v257    # "pids":[I
    .end local v263    # "pss":[J
    :pswitch_ae
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1f8c
    move-object/from16 v0, p2

    #@1f8e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f91
    .line 2083
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@1f93
    move-object/from16 v0, p2

    #@1f95
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f98
    move-result-object v240

    #@1f99
    check-cast v240, Ljava/lang/CharSequence;

    #@1f9b
    .line 2084
    .local v240, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f9e
    move-result v6

    #@1f9f
    if-eqz v6, :cond_73

    #@1fa1
    const/16 v173, 0x1

    #@1fa3
    .line 2085
    .local v173, "always":Z
    :goto_6a
    move-object/from16 v0, p0

    #@1fa5
    move-object/from16 v1, v240

    #@1fa7
    move/from16 v2, v173

    #@1fa9
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    #@1fac
    .line 2086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1faf
    .line 2087
    const/4 v6, 0x1

    #@1fb0
    return v6

    #@1fb1
    .line 2084
    .end local v173    # "always":Z
    :cond_73
    const/16 v173, 0x0

    #@1fb3
    .restart local v173    # "always":Z
    goto :goto_6a

    #@1fb4
    .line 2091
    .end local v173    # "always":Z
    .end local v240    # "msg":Ljava/lang/CharSequence;
    :pswitch_af
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1fb7
    move-object/from16 v0, p2

    #@1fb9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fbc
    .line 2092
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    #@1fbf
    .line 2093
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fc2
    .line 2094
    const/4 v6, 0x1

    #@1fc3
    return v6

    #@1fc4
    .line 2098
    :pswitch_b0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1fc7
    move-object/from16 v0, p2

    #@1fc9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fcc
    .line 2099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fcf
    move-result v6

    #@1fd0
    if-eqz v6, :cond_74

    #@1fd2
    const/4 v6, 0x1

    #@1fd3
    :goto_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fd6
    move-result v18

    #@1fd7
    if-eqz v18, :cond_75

    #@1fd9
    const/16 v18, 0x1

    #@1fdb
    :goto_6c
    move-object/from16 v0, p0

    #@1fdd
    move/from16 v1, v18

    #@1fdf
    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->keyguardGoingAway(ZZ)V

    #@1fe2
    .line 2100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fe5
    .line 2101
    const/4 v6, 0x1

    #@1fe6
    return v6

    #@1fe7
    .line 2099
    :cond_74
    const/4 v6, 0x0

    #@1fe8
    goto :goto_6b

    #@1fe9
    :cond_75
    const/16 v18, 0x0

    #@1feb
    goto :goto_6c

    #@1fec
    .line 2105
    :pswitch_b1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1fef
    move-object/from16 v0, p2

    #@1ff1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ff4
    .line 2106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1ff7
    move-result-object v73

    #@1ff8
    .line 2107
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ffb
    move-result-object v194

    #@1ffc
    .line 2108
    .local v194, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1ffe
    move-object/from16 v1, v73

    #@2000
    move-object/from16 v2, v194

    #@2002
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    #@2005
    move-result v0

    #@2006
    move/16 v276, v0

    #@2009
    .line 2109
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@200c
    .line 2110
    move/from16 v0, v276

    #@200e
    if-eqz v0, :cond_76

    #@2010
    const/4 v6, 0x1

    #@2011
    :goto_6d
    move-object/from16 v0, p3

    #@2013
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2016
    .line 2111
    const/4 v6, 0x1

    #@2017
    return v6

    #@2018
    .line 2110
    :cond_76
    const/4 v6, 0x0

    #@2019
    goto :goto_6d

    #@201a
    .line 2115
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v194    # "destAffinity":Ljava/lang/String;
    .end local v276    # "res":Z
    :pswitch_b2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@201d
    move-object/from16 v0, p2

    #@201f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2022
    .line 2116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2025
    move-result-object v73

    #@2026
    .line 2117
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2028
    move-object/from16 v0, p2

    #@202a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@202d
    move-result-object v0

    #@202e
    move-object/16 v299, v0

    #@2031
    move-object/from16 v0, v299

    #@2033
    check-cast v0, Landroid/content/Intent;

    #@2035
    move-object/16 v299, v0

    #@2038
    .line 2118
    .local v299, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@203b
    move-result v53

    #@203c
    .line 2119
    .restart local v53    # "resultCode":I
    const/4 v0, 0x0

    #@203d
    move-object/16 v283, v0

    #@2040
    .line 2120
    .restart local v283    # "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2043
    move-result v6

    #@2044
    if-eqz v6, :cond_77

    #@2046
    .line 2121
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2048
    move-object/from16 v0, p2

    #@204a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@204d
    move-result-object v0

    #@204e
    move-object/16 v283, v0

    #@2051
    .end local v283    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v283

    #@2053
    check-cast v0, Landroid/content/Intent;

    #@2055
    move-object/16 v283, v0

    #@2058
    .line 2123
    :cond_77
    move-object/from16 v0, p0

    #@205a
    move-object/from16 v1, v73

    #@205c
    move-object/from16 v2, v299

    #@205e
    move/from16 v3, v53

    #@2060
    move-object/from16 v4, v283

    #@2062
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    #@2065
    move-result v0

    #@2066
    move/16 v276, v0

    #@2069
    .line 2124
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@206c
    .line 2125
    move/from16 v0, v276

    #@206e
    if-eqz v0, :cond_78

    #@2070
    const/4 v6, 0x1

    #@2071
    :goto_6e
    move-object/from16 v0, p3

    #@2073
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2076
    .line 2126
    const/4 v6, 0x1

    #@2077
    return v6

    #@2078
    .line 2125
    :cond_78
    const/4 v6, 0x0

    #@2079
    goto :goto_6e

    #@207a
    .line 2130
    .end local v53    # "resultCode":I
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v276    # "res":Z
    .end local v299    # "target":Landroid/content/Intent;
    :pswitch_b3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@207d
    move-object/from16 v0, p2

    #@207f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2082
    .line 2131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2085
    move-result-object v73

    #@2086
    .line 2132
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2088
    move-object/from16 v1, v73

    #@208a
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    #@208d
    move-result v0

    #@208e
    move/16 v270, v0

    #@2091
    .line 2133
    .restart local v270    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2094
    .line 2134
    move-object/from16 v0, p3

    #@2096
    move/from16 v1, v270

    #@2098
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@209b
    .line 2135
    const/4 v6, 0x1

    #@209c
    return v6

    #@209d
    .line 2139
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v270    # "res":I
    :pswitch_b4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@20a0
    move-object/from16 v0, p2

    #@20a2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20a5
    .line 2140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@20a8
    move-result-object v73

    #@20a9
    .line 2141
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@20ab
    move-object/from16 v1, v73

    #@20ad
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    #@20b0
    move-result-object v0

    #@20b1
    move-object/16 v275, v0

    #@20b4
    .line 2142
    .restart local v275    # "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20b7
    .line 2143
    move-object/from16 v0, p3

    #@20b9
    move-object/from16 v1, v275

    #@20bb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20be
    .line 2144
    const/4 v6, 0x1

    #@20bf
    return v6

    #@20c0
    .line 2148
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v275    # "res":Ljava/lang/String;
    :pswitch_b5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@20c3
    move-object/from16 v0, p2

    #@20c5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20c8
    .line 2150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@20cb
    move-result-object v6

    #@20cc
    .line 2149
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    #@20cf
    move-result-object v244

    #@20d0
    .line 2151
    .local v244, "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    #@20d2
    move-object/from16 v1, v244

    #@20d4
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    #@20d7
    .line 2152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20da
    .line 2153
    const/4 v6, 0x1

    #@20db
    return v6

    #@20dc
    .line 2157
    .end local v244    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_b6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@20df
    move-object/from16 v0, p2

    #@20e1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20e4
    .line 2159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@20e7
    move-result-object v6

    #@20e8
    .line 2158
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    #@20eb
    move-result-object v244

    #@20ec
    .line 2160
    .restart local v244    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    #@20ee
    move-object/from16 v1, v244

    #@20f0
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    #@20f3
    .line 2161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20f6
    .line 2162
    const/4 v6, 0x1

    #@20f7
    return v6

    #@20f8
    .line 2166
    .end local v244    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_b7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@20fb
    move-object/from16 v0, p2

    #@20fd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2100
    .line 2167
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestBugReport()V

    #@2103
    .line 2168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2106
    .line 2169
    const/4 v6, 0x1

    #@2107
    return v6

    #@2108
    .line 2173
    :pswitch_b8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@210b
    move-object/from16 v0, p2

    #@210d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2110
    .line 2174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2113
    move-result v111

    #@2114
    .line 2175
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2117
    move-result v6

    #@2118
    if-eqz v6, :cond_79

    #@211a
    const/16 v168, 0x1

    #@211c
    .line 2176
    .local v168, "aboveSystem":Z
    :goto_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@211f
    move-result-object v0

    #@2120
    move-object/16 v266, v0

    #@2123
    .line 2177
    .restart local v266    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2125
    move/from16 v1, v111

    #@2127
    move/from16 v2, v168

    #@2129
    move-object/from16 v3, v266

    #@212b
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    #@212e
    move-result-wide v0

    #@212f
    move-wide/16 v272, v0

    #@2132
    .line 2178
    .local v272, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2135
    .line 2179
    move-object/from16 v0, p3

    #@2137
    move-wide/from16 v1, v272

    #@2139
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@213c
    .line 2180
    const/4 v6, 0x1

    #@213d
    return v6

    #@213e
    .line 2175
    .end local v168    # "aboveSystem":Z
    .end local v266    # "reason":Ljava/lang/String;
    .end local v272    # "res":J
    :cond_79
    const/16 v168, 0x0

    #@2140
    .restart local v168    # "aboveSystem":Z
    goto :goto_6f

    #@2141
    .line 2184
    .end local v111    # "pid":I
    .end local v168    # "aboveSystem":Z
    :pswitch_b9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2144
    move-object/from16 v0, p2

    #@2146
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2149
    .line 2185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@214c
    move-result v157

    #@214d
    .line 2186
    .local v157, "requestType":I
    move-object/from16 v0, p0

    #@214f
    move/from16 v1, v157

    #@2151
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    #@2154
    move-result-object v0

    #@2155
    move-object/16 v274, v0

    #@2158
    .line 2187
    .local v274, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@215b
    .line 2188
    move-object/from16 v0, p3

    #@215d
    move-object/from16 v1, v274

    #@215f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@2162
    .line 2189
    const/4 v6, 0x1

    #@2163
    return v6

    #@2164
    .line 2193
    .end local v157    # "requestType":I
    .end local v274    # "res":Landroid/os/Bundle;
    :pswitch_ba
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2167
    move-object/from16 v0, p2

    #@2169
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@216c
    .line 2194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@216f
    move-result v157

    #@2170
    .line 2195
    .restart local v157    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2173
    move-result-object v6

    #@2174
    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    #@2177
    move-result-object v0

    #@2178
    move-object/16 v267, v0

    #@217b
    .line 2196
    .local v267, "receiver":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@217e
    move-result-object v170

    #@217f
    .line 2197
    .restart local v170    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2181
    move/from16 v1, v157

    #@2183
    move-object/from16 v2, v267

    #@2185
    move-object/from16 v3, v170

    #@2187
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/IBinder;)Z

    #@218a
    move-result v0

    #@218b
    move/16 v276, v0

    #@218e
    .line 2198
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2191
    .line 2199
    move/from16 v0, v276

    #@2193
    if-eqz v0, :cond_7a

    #@2195
    const/4 v6, 0x1

    #@2196
    :goto_70
    move-object/from16 v0, p3

    #@2198
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@219b
    .line 2200
    const/4 v6, 0x1

    #@219c
    return v6

    #@219d
    .line 2199
    :cond_7a
    const/4 v6, 0x0

    #@219e
    goto :goto_70

    #@219f
    .line 2204
    .end local v157    # "requestType":I
    .end local v170    # "activityToken":Landroid/os/IBinder;
    .end local v267    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v276    # "res":Z
    :pswitch_bb
    const-string/jumbo v6, "android.app.IActivityManager"

    #@21a2
    move-object/from16 v0, p2

    #@21a4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21a7
    .line 2205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@21aa
    move-result-object v73

    #@21ab
    .line 2206
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@21ae
    move-result-object v151

    #@21af
    .line 2207
    .local v151, "extras":Landroid/os/Bundle;
    sget-object v6, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21b1
    move-object/from16 v0, p2

    #@21b3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21b6
    move-result-object v152

    #@21b7
    check-cast v152, Landroid/app/assist/AssistStructure;

    #@21b9
    .line 2208
    .local v152, "structure":Landroid/app/assist/AssistStructure;
    sget-object v6, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21bb
    move-object/from16 v0, p2

    #@21bd
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21c0
    move-result-object v153

    #@21c1
    check-cast v153, Landroid/app/assist/AssistContent;

    #@21c3
    .line 2209
    .local v153, "content":Landroid/app/assist/AssistContent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21c6
    move-result v6

    #@21c7
    if-eqz v6, :cond_7b

    #@21c9
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21cb
    move-object/from16 v0, p2

    #@21cd
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21d0
    move-result-object v154

    #@21d1
    check-cast v154, Landroid/net/Uri;

    #@21d3
    :goto_71
    move-object/from16 v149, p0

    #@21d5
    move-object/from16 v150, v73

    #@21d7
    .line 2210
    invoke-virtual/range {v149 .. v154}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    #@21da
    .line 2211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21dd
    .line 2212
    const/4 v6, 0x1

    #@21de
    return v6

    #@21df
    .line 2209
    :cond_7b
    const/16 v154, 0x0

    #@21e1
    .local v154, "referrer":Landroid/net/Uri;
    goto :goto_71

    #@21e2
    .line 2216
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v151    # "extras":Landroid/os/Bundle;
    .end local v152    # "structure":Landroid/app/assist/AssistStructure;
    .end local v153    # "content":Landroid/app/assist/AssistContent;
    .end local v154    # "referrer":Landroid/net/Uri;
    :pswitch_bc
    const-string/jumbo v6, "android.app.IActivityManager"

    #@21e5
    move-object/from16 v0, p2

    #@21e7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21ea
    .line 2217
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21ec
    move-object/from16 v0, p2

    #@21ee
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21f1
    move-result-object v9

    #@21f2
    check-cast v9, Landroid/content/Intent;

    #@21f4
    .line 2218
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21f7
    move-result v157

    #@21f8
    .line 2219
    .restart local v157    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21fb
    move-result-object v158

    #@21fc
    .line 2220
    .local v158, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21ff
    move-result v159

    #@2200
    .line 2221
    .local v159, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@2203
    move-result-object v160

    #@2204
    .local v160, "args":Landroid/os/Bundle;
    move-object/from16 v155, p0

    #@2206
    move-object/from16 v156, v9

    #@2208
    .line 2222
    invoke-virtual/range {v155 .. v160}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    #@220b
    move-result v0

    #@220c
    move/16 v276, v0

    #@220f
    .line 2223
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2212
    .line 2224
    move/from16 v0, v276

    #@2214
    if-eqz v0, :cond_7c

    #@2216
    const/4 v6, 0x1

    #@2217
    :goto_72
    move-object/from16 v0, p3

    #@2219
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@221c
    .line 2225
    const/4 v6, 0x1

    #@221d
    return v6

    #@221e
    .line 2224
    :cond_7c
    const/4 v6, 0x0

    #@221f
    goto :goto_72

    #@2220
    .line 2229
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v157    # "requestType":I
    .end local v158    # "hint":Ljava/lang/String;
    .end local v159    # "userHandle":I
    .end local v160    # "args":Landroid/os/Bundle;
    .end local v276    # "res":Z
    :pswitch_bd
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2223
    move-object/from16 v0, p2

    #@2225
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2228
    .line 2230
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isAssistDataAllowedOnCurrentActivity()Z

    #@222b
    move-result v0

    #@222c
    move/16 v276, v0

    #@222f
    .line 2231
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2232
    .line 2232
    move/from16 v0, v276

    #@2234
    if-eqz v0, :cond_7d

    #@2236
    const/4 v6, 0x1

    #@2237
    :goto_73
    move-object/from16 v0, p3

    #@2239
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@223c
    .line 2233
    const/4 v6, 0x1

    #@223d
    return v6

    #@223e
    .line 2232
    :cond_7d
    const/4 v6, 0x0

    #@223f
    goto :goto_73

    #@2240
    .line 2237
    .end local v276    # "res":Z
    :pswitch_be
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2243
    move-object/from16 v0, p2

    #@2245
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2248
    .line 2238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@224b
    move-result-object v73

    #@224c
    .line 2239
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@224f
    move-result-object v160

    #@2250
    .line 2240
    .restart local v160    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@2252
    move-object/from16 v1, v73

    #@2254
    move-object/from16 v2, v160

    #@2256
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    #@2259
    move-result v0

    #@225a
    move/16 v276, v0

    #@225d
    .line 2241
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2260
    .line 2242
    move/from16 v0, v276

    #@2262
    if-eqz v0, :cond_7e

    #@2264
    const/4 v6, 0x1

    #@2265
    :goto_74
    move-object/from16 v0, p3

    #@2267
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@226a
    .line 2243
    const/4 v6, 0x1

    #@226b
    return v6

    #@226c
    .line 2242
    :cond_7e
    const/4 v6, 0x0

    #@226d
    goto :goto_74

    #@226e
    .line 2247
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v160    # "args":Landroid/os/Bundle;
    .end local v276    # "res":Z
    :pswitch_bf
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2271
    move-object/from16 v0, p2

    #@2273
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2276
    .line 2248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2279
    move-result v175

    #@227a
    .line 2249
    .local v175, "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@227d
    move-result v17

    #@227e
    .line 2250
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2281
    move-result-object v0

    #@2282
    move-object/16 v266, v0

    #@2285
    .line 2251
    .restart local v266    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2287
    move/from16 v1, v175

    #@2289
    move/from16 v2, v17

    #@228b
    move-object/from16 v3, v266

    #@228d
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killUid(IILjava/lang/String;)V

    #@2290
    .line 2252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2293
    .line 2253
    const/4 v6, 0x1

    #@2294
    return v6

    #@2295
    .line 2257
    .end local v17    # "userId":I
    .end local v175    # "appId":I
    .end local v266    # "reason":Ljava/lang/String;
    :pswitch_c0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2298
    move-object/from16 v0, p2

    #@229a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@229d
    .line 2258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22a0
    move-result-object v62

    #@22a1
    .line 2259
    .restart local v62    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22a4
    move-result v6

    #@22a5
    if-eqz v6, :cond_7f

    #@22a7
    const/16 v172, 0x1

    #@22a9
    .line 2260
    .local v172, "allowRestart":Z
    :goto_75
    move-object/from16 v0, p0

    #@22ab
    move-object/from16 v1, v62

    #@22ad
    move/from16 v2, v172

    #@22af
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    #@22b2
    .line 2261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22b5
    .line 2262
    const/4 v6, 0x1

    #@22b6
    return v6

    #@22b7
    .line 2259
    .end local v172    # "allowRestart":Z
    :cond_7f
    const/16 v172, 0x0

    #@22b9
    .restart local v172    # "allowRestart":Z
    goto :goto_75

    #@22ba
    .line 2266
    .end local v62    # "who":Landroid/os/IBinder;
    .end local v172    # "allowRestart":Z
    :pswitch_c1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@22bd
    move-object/from16 v0, p2

    #@22bf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22c2
    .line 2267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22c5
    move-result-object v73

    #@22c6
    .line 2268
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@22c8
    move-object/from16 v1, v73

    #@22ca
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    #@22cd
    .line 2269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22d0
    .line 2270
    const/4 v6, 0x1

    #@22d1
    return v6

    #@22d2
    .line 2274
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_c2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@22d5
    move-object/from16 v0, p2

    #@22d7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22da
    .line 2275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22dd
    move-result-object v73

    #@22de
    .line 2276
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@22e0
    move-object/from16 v1, v73

    #@22e2
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    #@22e5
    .line 2277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22e8
    .line 2278
    const/4 v6, 0x1

    #@22e9
    return v6

    #@22ea
    .line 2282
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_c3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@22ed
    move-object/from16 v0, p2

    #@22ef
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22f2
    .line 2283
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    #@22f5
    .line 2284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22f8
    .line 2285
    const/4 v6, 0x1

    #@22f9
    return v6

    #@22fa
    .line 2289
    :pswitch_c4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@22fd
    move-object/from16 v0, p2

    #@22ff
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2302
    .line 2290
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    #@2305
    .line 2291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2308
    .line 2292
    const/4 v6, 0x1

    #@2309
    return v6

    #@230a
    .line 2296
    :pswitch_c5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@230d
    move-object/from16 v0, p2

    #@230f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2312
    .line 2297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2315
    move-result-object v250

    #@2316
    .line 2299
    .local v250, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2319
    move-result-object v6

    #@231a
    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    #@231d
    move-result-object v183

    #@231e
    .line 2301
    .local v183, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    #@2320
    move-object/from16 v1, v250

    #@2322
    move-object/from16 v2, v183

    #@2324
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    #@2327
    move-result-object v169

    #@2328
    .line 2302
    .local v169, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@232b
    .line 2303
    if-eqz v169, :cond_80

    #@232d
    .line 2304
    const/4 v6, 0x1

    #@232e
    move-object/from16 v0, p3

    #@2330
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2333
    .line 2305
    invoke-interface/range {v169 .. v169}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    #@2336
    move-result-object v6

    #@2337
    move-object/from16 v0, p3

    #@2339
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@233c
    .line 2309
    :goto_76
    const/4 v6, 0x1

    #@233d
    return v6

    #@233e
    .line 2307
    :cond_80
    const/4 v6, 0x0

    #@233f
    move-object/from16 v0, p3

    #@2341
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2344
    goto :goto_76

    #@2345
    .line 2313
    .end local v169    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v183    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v250    # "parentActivityToken":Landroid/os/IBinder;
    :pswitch_c6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2348
    move-object/from16 v0, p2

    #@234a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@234d
    .line 2315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2350
    move-result-object v6

    #@2351
    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    #@2354
    move-result-object v169

    #@2355
    .line 2316
    .restart local v169    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    #@2357
    move-object/from16 v1, v169

    #@2359
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    #@235c
    .line 2317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@235f
    .line 2318
    const/4 v6, 0x1

    #@2360
    return v6

    #@2361
    .line 2322
    .end local v169    # "activityContainer":Landroid/app/IActivityContainer;
    :pswitch_c7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2364
    move-object/from16 v0, p2

    #@2366
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2369
    .line 2323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@236c
    move-result v195

    #@236d
    .line 2324
    .local v195, "displayId":I
    move-object/from16 v0, p0

    #@236f
    move/from16 v1, v195

    #@2371
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    #@2374
    move-result-object v169

    #@2375
    .line 2325
    .restart local v169    # "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2378
    .line 2326
    if-eqz v169, :cond_81

    #@237a
    .line 2327
    const/4 v6, 0x1

    #@237b
    move-object/from16 v0, p3

    #@237d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2380
    .line 2328
    invoke-interface/range {v169 .. v169}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    #@2383
    move-result-object v6

    #@2384
    move-object/from16 v0, p3

    #@2386
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2389
    .line 2332
    :goto_77
    const/4 v6, 0x1

    #@238a
    return v6

    #@238b
    .line 2330
    :cond_81
    const/4 v6, 0x0

    #@238c
    move-object/from16 v0, p3

    #@238e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2391
    goto :goto_77

    #@2392
    .line 2336
    .end local v169    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v195    # "displayId":I
    :pswitch_c8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2395
    move-object/from16 v0, p2

    #@2397
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@239a
    .line 2337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@239d
    move-result-object v170

    #@239e
    .line 2338
    .restart local v170    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@23a0
    move-object/from16 v1, v170

    #@23a2
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityDisplayId(Landroid/os/IBinder;)I

    #@23a5
    move-result v195

    #@23a6
    .line 2339
    .restart local v195    # "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23a9
    .line 2340
    move-object/from16 v0, p3

    #@23ab
    move/from16 v1, v195

    #@23ad
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23b0
    .line 2341
    const/4 v6, 0x1

    #@23b1
    return v6

    #@23b2
    .line 2345
    .end local v170    # "activityToken":Landroid/os/IBinder;
    .end local v195    # "displayId":I
    :pswitch_c9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@23b5
    move-object/from16 v0, p2

    #@23b7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23ba
    .line 2346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23bd
    move-result v0

    #@23be
    move/16 v302, v0

    #@23c1
    .line 2347
    .restart local v302    # "taskId":I
    move-object/from16 v0, p0

    #@23c3
    move/from16 v1, v302

    #@23c5
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    #@23c8
    .line 2348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23cb
    .line 2349
    const/4 v6, 0x1

    #@23cc
    return v6

    #@23cd
    .line 2353
    .end local v302    # "taskId":I
    :pswitch_ca
    const-string/jumbo v6, "android.app.IActivityManager"

    #@23d0
    move-object/from16 v0, p2

    #@23d2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23d5
    .line 2354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@23d8
    move-result-object v73

    #@23d9
    .line 2355
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@23db
    move-object/from16 v1, v73

    #@23dd
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    #@23e0
    .line 2356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23e3
    .line 2357
    const/4 v6, 0x1

    #@23e4
    return v6

    #@23e5
    .line 2361
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_cb
    const-string/jumbo v6, "android.app.IActivityManager"

    #@23e8
    move-object/from16 v0, p2

    #@23ea
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23ed
    .line 2362
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startLockTaskModeOnCurrent()V

    #@23f0
    .line 2363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23f3
    .line 2364
    const/4 v6, 0x1

    #@23f4
    return v6

    #@23f5
    .line 2368
    :pswitch_cc
    const-string/jumbo v6, "android.app.IActivityManager"

    #@23f8
    move-object/from16 v0, p2

    #@23fa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23fd
    .line 2369
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    #@2400
    .line 2370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2403
    .line 2371
    const/4 v6, 0x1

    #@2404
    return v6

    #@2405
    .line 2375
    :pswitch_cd
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2408
    move-object/from16 v0, p2

    #@240a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@240d
    .line 2376
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskModeOnCurrent()V

    #@2410
    .line 2377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2413
    .line 2378
    const/4 v6, 0x1

    #@2414
    return v6

    #@2415
    .line 2382
    :pswitch_ce
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2418
    move-object/from16 v0, p2

    #@241a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@241d
    .line 2383
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    #@2420
    move-result v219

    #@2421
    .line 2384
    .local v219, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2424
    .line 2385
    if-eqz v219, :cond_82

    #@2426
    const/4 v6, 0x1

    #@2427
    :goto_78
    move-object/from16 v0, p3

    #@2429
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@242c
    .line 2386
    const/4 v6, 0x1

    #@242d
    return v6

    #@242e
    .line 2385
    :cond_82
    const/4 v6, 0x0

    #@242f
    goto :goto_78

    #@2430
    .line 2390
    .end local v219    # "isInLockTaskMode":Z
    :pswitch_cf
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2433
    move-object/from16 v0, p2

    #@2435
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2438
    .line 2391
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getLockTaskModeState()I

    #@243b
    move-result v233

    #@243c
    .line 2392
    .local v233, "lockTaskModeState":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@243f
    .line 2393
    move-object/from16 v0, p3

    #@2441
    move/from16 v1, v233

    #@2443
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2446
    .line 2394
    const/4 v6, 0x1

    #@2447
    return v6

    #@2448
    .line 2398
    .end local v233    # "lockTaskModeState":I
    :pswitch_d0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@244b
    move-object/from16 v0, p2

    #@244d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2450
    .line 2399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2453
    move-result-object v73

    #@2454
    .line 2400
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2456
    move-object/from16 v1, v73

    #@2458
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    #@245b
    .line 2401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@245e
    .line 2402
    const/4 v6, 0x1

    #@245f
    return v6

    #@2460
    .line 2406
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_d1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2463
    move-object/from16 v0, p2

    #@2465
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2468
    .line 2407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@246b
    move-result-object v73

    #@246c
    .line 2409
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@246e
    move-object/from16 v0, p2

    #@2470
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2473
    move-result-object v0

    #@2474
    move-object/16 v310, v0

    #@2477
    move-object/from16 v0, v310

    #@2479
    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    #@247b
    move-object/16 v310, v0

    #@247e
    .line 2410
    .local v310, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    #@2480
    move-object/from16 v1, v73

    #@2482
    move-object/from16 v2, v310

    #@2484
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    #@2487
    .line 2411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@248a
    .line 2412
    const/4 v6, 0x1

    #@248b
    return v6

    #@248c
    .line 2416
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v310    # "values":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_d2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@248f
    move-object/from16 v0, p2

    #@2491
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2494
    .line 2417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2497
    move-result v0

    #@2498
    move/16 v302, v0

    #@249b
    .line 2418
    .restart local v302    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@249e
    move-result v6

    #@249f
    const/16 v18, 0x1

    #@24a1
    move/from16 v0, v18

    #@24a3
    if-ne v6, v0, :cond_83

    #@24a5
    const/4 v0, 0x1

    #@24a6
    move/16 v278, v0

    #@24a9
    .line 2419
    .local v278, "resizeable":Z
    :goto_79
    move-object/from16 v0, p0

    #@24ab
    move/from16 v1, v302

    #@24ad
    move/from16 v2, v278

    #@24af
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskResizeable(IZ)V

    #@24b2
    .line 2420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24b5
    .line 2421
    const/4 v6, 0x1

    #@24b6
    return v6

    #@24b7
    .line 2418
    .end local v278    # "resizeable":Z
    :cond_83
    const/4 v0, 0x0

    #@24b8
    move/16 v278, v0

    #@24bb
    .restart local v278    # "resizeable":Z
    goto :goto_79

    #@24bc
    .line 2425
    .end local v278    # "resizeable":Z
    .end local v302    # "taskId":I
    :pswitch_d3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@24bf
    move-object/from16 v0, p2

    #@24c1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24c4
    .line 2426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24c7
    move-result v0

    #@24c8
    move/16 v302, v0

    #@24cb
    .line 2427
    .restart local v302    # "taskId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24cd
    move-object/from16 v0, p2

    #@24cf
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24d2
    move-result-object v0

    #@24d3
    move-object/16 v265, v0

    #@24d6
    move-object/from16 v0, v265

    #@24d8
    check-cast v0, Landroid/graphics/Rect;

    #@24da
    move-object/16 v265, v0

    #@24dd
    .line 2428
    .restart local v265    # "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@24df
    move/from16 v1, v302

    #@24e1
    move-object/from16 v2, v265

    #@24e3
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeTask(ILandroid/graphics/Rect;)V

    #@24e6
    .line 2429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24e9
    .line 2430
    const/4 v6, 0x1

    #@24ea
    return v6

    #@24eb
    .line 2434
    .end local v265    # "r":Landroid/graphics/Rect;
    .end local v302    # "taskId":I
    :pswitch_d4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@24ee
    move-object/from16 v0, p2

    #@24f0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24f3
    .line 2435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24f6
    move-result-object v201

    #@24f7
    .line 2436
    .local v201, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    #@24f9
    move-object/from16 v1, v201

    #@24fb
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@24fe
    move-result-object v206

    #@24ff
    .line 2437
    .local v206, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2502
    .line 2438
    if-nez v206, :cond_84

    #@2504
    .line 2439
    const/4 v6, 0x0

    #@2505
    move-object/from16 v0, p3

    #@2507
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@250a
    .line 2444
    :goto_7a
    const/4 v6, 0x1

    #@250b
    return v6

    #@250c
    .line 2441
    :cond_84
    const/4 v6, 0x1

    #@250d
    move-object/from16 v0, p3

    #@250f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2512
    .line 2442
    const/4 v6, 0x0

    #@2513
    move-object/from16 v0, v206

    #@2515
    move-object/from16 v1, p3

    #@2517
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@251a
    goto :goto_7a

    #@251b
    .line 2448
    .end local v201    # "filename":Ljava/lang/String;
    .end local v206    # "icon":Landroid/graphics/Bitmap;
    :pswitch_d5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@251e
    move-object/from16 v0, p2

    #@2520
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2523
    .line 2450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2526
    move-result v6

    #@2527
    if-nez v6, :cond_85

    #@2529
    .line 2451
    const/16 v182, 0x0

    #@252b
    .line 2455
    :goto_7b
    if-nez v182, :cond_86

    #@252d
    const/16 v247, 0x0

    #@252f
    .line 2456
    :goto_7c
    move-object/from16 v0, p0

    #@2531
    move-object/from16 v1, v247

    #@2533
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    #@2536
    .line 2457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2539
    .line 2458
    const/4 v6, 0x1

    #@253a
    return v6

    #@253b
    .line 2453
    :cond_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@253e
    move-result-object v182

    #@253f
    .restart local v182    # "bundle":Landroid/os/Bundle;
    goto :goto_7b

    #@2540
    .line 2455
    .end local v182    # "bundle":Landroid/os/Bundle;
    :cond_86
    new-instance v247, Landroid/app/ActivityOptions;

    #@2542
    move-object/from16 v0, v247

    #@2544
    move-object/from16 v1, v182

    #@2546
    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    #@2549
    .restart local v247    # "options":Landroid/app/ActivityOptions;
    goto :goto_7c

    #@254a
    .line 2462
    .end local v247    # "options":Landroid/app/ActivityOptions;
    :pswitch_d6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@254d
    move-object/from16 v0, p2

    #@254f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2552
    .line 2463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2555
    move-result-object v73

    #@2556
    .line 2464
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2559
    move-result v6

    #@255a
    if-lez v6, :cond_87

    #@255c
    const/16 v197, 0x1

    #@255e
    .line 2465
    .local v197, "enable":Z
    :goto_7d
    move-object/from16 v0, p0

    #@2560
    move-object/from16 v1, v73

    #@2562
    move/from16 v2, v197

    #@2564
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    #@2567
    move-result v0

    #@2568
    move/16 v296, v0

    #@256b
    .line 2466
    .restart local v296    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@256e
    .line 2467
    move/from16 v0, v296

    #@2570
    if-eqz v0, :cond_88

    #@2572
    const/4 v6, 0x1

    #@2573
    :goto_7e
    move-object/from16 v0, p3

    #@2575
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2578
    .line 2468
    const/4 v6, 0x1

    #@2579
    return v6

    #@257a
    .line 2464
    .end local v197    # "enable":Z
    .end local v296    # "success":Z
    :cond_87
    const/16 v197, 0x0

    #@257c
    .restart local v197    # "enable":Z
    goto :goto_7d

    #@257d
    .line 2467
    .restart local v296    # "success":Z
    :cond_88
    const/4 v6, 0x0

    #@257e
    goto :goto_7e

    #@257f
    .line 2472
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v197    # "enable":Z
    .end local v296    # "success":Z
    :pswitch_d7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2582
    move-object/from16 v0, p2

    #@2584
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2587
    .line 2473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@258a
    move-result-object v73

    #@258b
    .line 2474
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@258d
    move-object/from16 v1, v73

    #@258f
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    #@2592
    move-result v198

    #@2593
    .line 2475
    .local v198, "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2596
    .line 2476
    if-eqz v198, :cond_89

    #@2598
    const/4 v6, 0x1

    #@2599
    :goto_7f
    move-object/from16 v0, p3

    #@259b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@259e
    .line 2477
    const/4 v6, 0x1

    #@259f
    return v6

    #@25a0
    .line 2476
    :cond_89
    const/4 v6, 0x0

    #@25a1
    goto :goto_7f

    #@25a2
    .line 2481
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v198    # "enabled":Z
    :pswitch_d8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@25a5
    move-object/from16 v0, p2

    #@25a7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25aa
    .line 2482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25ad
    move-result-object v73

    #@25ae
    .line 2483
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@25b0
    move-object/from16 v1, v73

    #@25b2
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    #@25b5
    .line 2484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25b8
    .line 2485
    const/4 v6, 0x1

    #@25b9
    return v6

    #@25ba
    .line 2489
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_d9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@25bd
    move-object/from16 v0, p2

    #@25bf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25c2
    .line 2490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25c5
    move-result-object v73

    #@25c6
    .line 2491
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@25c8
    move-object/from16 v1, v73

    #@25ca
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    #@25cd
    .line 2492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25d0
    .line 2493
    const/4 v6, 0x1

    #@25d1
    return v6

    #@25d2
    .line 2497
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_da
    const-string/jumbo v6, "android.app.IActivityManager"

    #@25d5
    move-object/from16 v0, p2

    #@25d7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25da
    .line 2498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25dd
    move-result-object v73

    #@25de
    .line 2499
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@25e0
    move-object/from16 v1, v73

    #@25e2
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    #@25e5
    .line 2500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25e8
    .line 2501
    const/4 v6, 0x1

    #@25e9
    return v6

    #@25ea
    .line 2505
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_db
    const-string/jumbo v6, "android.app.IActivityManager"

    #@25ed
    move-object/from16 v0, p2

    #@25ef
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25f2
    .line 2506
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    #@25f5
    .line 2507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25f8
    .line 2508
    const/4 v6, 0x1

    #@25f9
    return v6

    #@25fa
    .line 2512
    :pswitch_dc
    const-string/jumbo v6, "android.app.IActivityManager"

    #@25fd
    move-object/from16 v0, p2

    #@25ff
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2602
    .line 2513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2605
    move-result v112

    #@2606
    .line 2514
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@2609
    move-result-object v203

    #@260a
    .line 2515
    .local v203, "firstPacket":[B
    move-object/from16 v0, p0

    #@260c
    move/from16 v1, v112

    #@260e
    move-object/from16 v2, v203

    #@2610
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->notifyCleartextNetwork(I[B)V

    #@2613
    .line 2516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2616
    .line 2517
    const/4 v6, 0x1

    #@2617
    return v6

    #@2618
    .line 2521
    .end local v112    # "uid":I
    .end local v203    # "firstPacket":[B
    :pswitch_dd
    const-string/jumbo v6, "android.app.IActivityManager"

    #@261b
    move-object/from16 v0, p2

    #@261d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2620
    .line 2522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2623
    move-result-object v162

    #@2624
    .line 2523
    .local v162, "procName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2627
    move-result v112

    #@2628
    .line 2524
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@262b
    move-result-wide v164

    #@262c
    .line 2525
    .local v164, "maxMemSize":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@262f
    move-result-object v166

    #@2630
    .local v166, "reportPackage":Ljava/lang/String;
    move-object/from16 v161, p0

    #@2632
    move/from16 v163, v112

    #@2634
    .line 2526
    invoke-virtual/range {v161 .. v166}, Landroid/app/ActivityManagerNative;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    #@2637
    .line 2527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@263a
    .line 2528
    const/4 v6, 0x1

    #@263b
    return v6

    #@263c
    .line 2532
    .end local v112    # "uid":I
    .end local v162    # "procName":Ljava/lang/String;
    .end local v164    # "maxMemSize":J
    .end local v166    # "reportPackage":Ljava/lang/String;
    :pswitch_de
    const-string/jumbo v6, "android.app.IActivityManager"

    #@263f
    move-object/from16 v0, p2

    #@2641
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2644
    .line 2533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2647
    move-result-object v142

    #@2648
    .line 2534
    .restart local v142    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    #@264a
    move-object/from16 v1, v142

    #@264c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->dumpHeapFinished(Ljava/lang/String;)V

    #@264f
    .line 2535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2652
    .line 2536
    const/4 v6, 0x1

    #@2653
    return v6

    #@2654
    .line 2540
    .end local v142    # "path":Ljava/lang/String;
    :pswitch_df
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2657
    move-object/from16 v0, p2

    #@2659
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@265c
    .line 2542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@265f
    move-result-object v6

    #@2660
    .line 2541
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    #@2663
    move-result-object v46

    #@2664
    .line 2543
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2667
    move-result v6

    #@2668
    if-eqz v6, :cond_8a

    #@266a
    const/16 v222, 0x1

    #@266c
    .line 2544
    .local v222, "keepAwake":Z
    :goto_80
    move-object/from16 v0, p0

    #@266e
    move-object/from16 v1, v46

    #@2670
    move/from16 v2, v222

    #@2672
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    #@2675
    .line 2545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2678
    .line 2546
    const/4 v6, 0x1

    #@2679
    return v6

    #@267a
    .line 2543
    .end local v222    # "keepAwake":Z
    :cond_8a
    const/16 v222, 0x0

    #@267c
    .restart local v222    # "keepAwake":Z
    goto :goto_80

    #@267d
    .line 2550
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v222    # "keepAwake":Z
    :pswitch_e0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2680
    move-object/from16 v0, p2

    #@2682
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2685
    .line 2551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2688
    move-result v17

    #@2689
    .line 2552
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@268c
    move-result-object v249

    #@268d
    .line 2553
    .local v249, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@268f
    move/from16 v1, v17

    #@2691
    move-object/from16 v2, v249

    #@2693
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateLockTaskPackages(I[Ljava/lang/String;)V

    #@2696
    .line 2554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2699
    .line 2555
    const/4 v6, 0x1

    #@269a
    return v6

    #@269b
    .line 2559
    .end local v17    # "userId":I
    .end local v249    # "packages":[Ljava/lang/String;
    :pswitch_e1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@269e
    move-object/from16 v0, p2

    #@26a0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26a3
    .line 2560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26a6
    move-result-object v32

    #@26a7
    .line 2561
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@26a9
    move-object/from16 v1, v32

    #@26ab
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateDeviceOwner(Ljava/lang/String;)V

    #@26ae
    .line 2562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26b1
    .line 2563
    const/4 v6, 0x1

    #@26b2
    return v6

    #@26b3
    .line 2567
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_e2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@26b6
    move-object/from16 v0, p2

    #@26b8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26bb
    .line 2568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26be
    move-result-object v0

    #@26bf
    move-object/16 v258, v0

    #@26c2
    .line 2569
    .restart local v258    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26c5
    move-result-object v8

    #@26c6
    .line 2570
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    #@26c8
    move-object/from16 v1, v258

    #@26ca
    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    #@26cd
    move-result v0

    #@26ce
    move/16 v270, v0

    #@26d1
    .line 2571
    .restart local v270    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26d4
    .line 2572
    move-object/from16 v0, p3

    #@26d6
    move/from16 v1, v270

    #@26d8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@26db
    .line 2573
    const/4 v6, 0x1

    #@26dc
    return v6

    #@26dd
    .line 2577
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v258    # "pkg":Ljava/lang/String;
    .end local v270    # "res":I
    :pswitch_e3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@26e0
    move-object/from16 v0, p2

    #@26e2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26e5
    .line 2578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26e8
    move-result-object v120

    #@26e9
    .line 2579
    .restart local v120    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26ec
    move-result v17

    #@26ed
    .line 2580
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26f0
    move-result v223

    #@26f1
    .line 2581
    .local v223, "level":I
    move-object/from16 v0, p0

    #@26f3
    move-object/from16 v1, v120

    #@26f5
    move/from16 v2, v17

    #@26f7
    move/from16 v3, v223

    #@26f9
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    #@26fc
    move-result v0

    #@26fd
    move/16 v276, v0

    #@2700
    .line 2582
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2703
    .line 2583
    move/from16 v0, v276

    #@2705
    if-eqz v0, :cond_8b

    #@2707
    const/4 v6, 0x1

    #@2708
    :goto_81
    move-object/from16 v0, p3

    #@270a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@270d
    .line 2584
    const/4 v6, 0x1

    #@270e
    return v6

    #@270f
    .line 2583
    :cond_8b
    const/4 v6, 0x0

    #@2710
    goto :goto_81

    #@2711
    .line 2588
    .end local v17    # "userId":I
    .end local v120    # "process":Ljava/lang/String;
    .end local v223    # "level":I
    .end local v276    # "res":Z
    :pswitch_e4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2714
    move-object/from16 v0, p2

    #@2716
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2719
    .line 2589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@271c
    move-result-object v73

    #@271d
    .line 2590
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@271f
    move-object/from16 v1, v73

    #@2721
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    #@2724
    move-result v0

    #@2725
    move/16 v276, v0

    #@2728
    .line 2591
    .restart local v276    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@272b
    .line 2592
    move/from16 v0, v276

    #@272d
    if-eqz v0, :cond_8c

    #@272f
    const/4 v6, 0x1

    #@2730
    :goto_82
    move-object/from16 v0, p3

    #@2732
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2735
    .line 2593
    const/4 v6, 0x1

    #@2736
    return v6

    #@2737
    .line 2592
    :cond_8c
    const/4 v6, 0x0

    #@2738
    goto :goto_82

    #@2739
    .line 145
    nop

    #@273a
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6e
        :pswitch_1
        :pswitch_62
        :pswitch_63
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_1d
        :pswitch_1e
        :pswitch_22
        :pswitch_29
        :pswitch_0
        :pswitch_2b
        :pswitch_34
        :pswitch_0
        :pswitch_35
        :pswitch_37
        :pswitch_38
        :pswitch_b
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_65
        :pswitch_66
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_40
        :pswitch_4d
        :pswitch_4e
        :pswitch_54
        :pswitch_55
        :pswitch_57
        :pswitch_59
        :pswitch_5b
        :pswitch_5c
        :pswitch_67
        :pswitch_60
        :pswitch_71
        :pswitch_23
        :pswitch_46
        :pswitch_1c
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_68
        :pswitch_8
        :pswitch_69
        :pswitch_3b
        :pswitch_4b
        :pswitch_4c
        :pswitch_45
        :pswitch_56
        :pswitch_41
        :pswitch_2a
        :pswitch_61
        :pswitch_26
        :pswitch_5a
        :pswitch_74
        :pswitch_6c
        :pswitch_25
        :pswitch_24
        :pswitch_27
        :pswitch_76
        :pswitch_7b
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_52
        :pswitch_53
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_6
        :pswitch_84
        :pswitch_6f
        :pswitch_72
        :pswitch_85
        :pswitch_4
        :pswitch_10
        :pswitch_5
        :pswitch_28
        :pswitch_87
        :pswitch_70
        :pswitch_88
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_9f
        :pswitch_1b
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_a6
        :pswitch_a7
        :pswitch_9b
        :pswitch_0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a8
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_0
        :pswitch_73
        :pswitch_36
        :pswitch_3c
        :pswitch_75
        :pswitch_6d
        :pswitch_9e
        :pswitch_b1
        :pswitch_b2
        :pswitch_64
        :pswitch_c
        :pswitch_b3
        :pswitch_39
        :pswitch_a9
        :pswitch_2
        :pswitch_9d
        :pswitch_b5
        :pswitch_b6
        :pswitch_a0
        :pswitch_b7
        :pswitch_b8
        :pswitch_0
        :pswitch_aa
        :pswitch_b9
        :pswitch_bb
        :pswitch_b4
        :pswitch_bf
        :pswitch_86
        :pswitch_c0
        :pswitch_c5
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_31
        :pswitch_2f
        :pswitch_8a
        :pswitch_8b
        :pswitch_c2
        :pswitch_c1
        :pswitch_c3
        :pswitch_c4
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_3a
        :pswitch_0
        :pswitch_c8
        :pswitch_c6
        :pswitch_e3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_ab
        :pswitch_9c
        :pswitch_30
        :pswitch_c9
        :pswitch_ca
        :pswitch_cc
        :pswitch_ce
        :pswitch_d1
        :pswitch_7
        :pswitch_8c
        :pswitch_1f
        :pswitch_cb
        :pswitch_cd
        :pswitch_d
        :pswitch_89
        :pswitch_d6
        :pswitch_d7
        :pswitch_d8
        :pswitch_d9
        :pswitch_9
        :pswitch_da
        :pswitch_af
        :pswitch_3
        :pswitch_20
        :pswitch_21
        :pswitch_e
        :pswitch_f
        :pswitch_db
        :pswitch_d4
        :pswitch_bc
        :pswitch_d5
        :pswitch_58
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_dc
        :pswitch_c7
        :pswitch_32
        :pswitch_d2
        :pswitch_ba
        :pswitch_d3
        :pswitch_cf
        :pswitch_dd
        :pswitch_de
        :pswitch_df
        :pswitch_e0
        :pswitch_6a
        :pswitch_6b
        :pswitch_e2
        :pswitch_d0
        :pswitch_e1
        :pswitch_b0
        :pswitch_a4
        :pswitch_a5
        :pswitch_bd
        :pswitch_be
        :pswitch_e4
    .end packed-switch
.end method
