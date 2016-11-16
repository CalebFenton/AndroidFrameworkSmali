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

.field static volatile sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 98
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    #@3
    .line 3047
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    #@5
    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    #@8
    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    #@a
    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 142
    const-string/jumbo v0, "android.app.IActivityManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 141
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 70
    if-nez p0, :cond_0

    #@3
    .line 71
    return-object v1

    #@4
    .line 74
    :cond_0
    const-string/jumbo v1, "android.app.IActivityManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/IActivityManager;

    #@d
    .line 75
    .local v0, "in":Landroid/app/IActivityManager;
    if-eqz v0, :cond_1

    #@f
    .line 76
    return-object v0

    #@10
    .line 79
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
    .line 101
    const/4 v0, -0x1

    #@1
    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V

    #@4
    .line 100
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
    .line 111
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 112
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
    .line 113
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
    .line 111
    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 109
    :goto_0
    return-void

    #@17
    .line 114
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
    .line 86
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
    .line 93
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 94
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
    .line 96
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
    const/4 v1, 0x0

    #@1
    .line 136
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4
    move-result-object v2

    #@5
    if-eqz p0, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    #@a
    move-result-object v1

    #@b
    :cond_0
    invoke-interface {v2, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 134
    :goto_0
    return-void

    #@f
    .line 137
    :catch_0
    move-exception v0

    #@10
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
    const/4 v1, 0x0

    #@1
    .line 129
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4
    move-result-object v2

    #@5
    if-eqz p0, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    #@a
    move-result-object v1

    #@b
    :cond_0
    invoke-interface {v2, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 127
    :goto_0
    return-void

    #@f
    .line 130
    :catch_0
    move-exception v0

    #@10
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
    const/4 v1, 0x0

    #@1
    .line 121
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4
    move-result-object v2

    #@5
    if-eqz p0, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    #@a
    move-result-object v1

    #@b
    :cond_0
    invoke-interface {v2, v1, p1, p2, p3}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 119
    :goto_0
    return-void

    #@f
    .line 123
    :catch_0
    move-exception v0

    #@10
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private readIntArray(Landroid/os/Parcel;)[I
    .locals 2
    .param p1, "data"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3034
    const/4 v0, 0x0

    #@1
    .line 3035
    .local v0, "smallest":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 3036
    .local v1, "smallestSize":I
    if-lez v1, :cond_0

    #@7
    .line 3037
    new-array v0, v1, [I

    #@9
    .line 3038
    .local v0, "smallest":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    #@c
    .line 3040
    .end local v0    # "smallest":[I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 3044
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 373
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
    .line 148
    move/from16 v0, p1

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 3030
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v6

    #@9
    return v6

    #@a
    .line 151
    :pswitch_1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@d
    move-object/from16 v0, p2

    #@f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12
    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@15
    move-result-object v213

    #@16
    .line 153
    .local v213, "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@19
    move-result-object v7

    #@1a
    .line 154
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    .line 155
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
    .line 156
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b
    move-result-object v10

    #@2c
    .line 157
    .local v10, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v11

    #@30
    .line 158
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@33
    move-result-object v12

    #@34
    .line 159
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v13

    #@38
    .line 160
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v14

    #@3c
    .line 161
    .local v14, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v6

    #@40
    if-eqz v6, :cond_0

    #@42
    .line 162
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
    .line 163
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v6

    #@50
    if-eqz v6, :cond_1

    #@52
    .line 164
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@54
    move-object/from16 v0, p2

    #@56
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@59
    move-result-object v6

    #@5a
    check-cast v6, Landroid/os/Bundle;

    #@5c
    move-object/from16 v16, v6

    #@5e
    .local v16, "options":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v6, p0

    #@60
    .line 165
    invoke-virtual/range {v6 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    #@63
    move-result v0

    #@64
    move/16 v331, v0

    #@67
    .line 167
    .local v331, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a
    .line 168
    move-object/from16 v0, p3

    #@6c
    move/from16 v1, v331

    #@6e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@71
    .line 169
    const/4 v6, 0x1

    #@72
    return v6

    #@73
    .line 162
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v331    # "result":I
    :cond_0
    const/4 v15, 0x0

    #@74
    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_0

    #@75
    .line 164
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1
    const/16 v16, 0x0

    #@77
    goto :goto_1

    #@78
    .line 174
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@7b
    move-object/from16 v0, p2

    #@7d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80
    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@83
    move-result-object v213

    #@84
    .line 176
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@87
    move-result-object v7

    #@88
    .line 177
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8b
    move-result-object v8

    #@8c
    .line 178
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8e
    move-object/from16 v0, p2

    #@90
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@93
    move-result-object v9

    #@94
    check-cast v9, Landroid/content/Intent;

    #@96
    .line 179
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@99
    move-result-object v10

    #@9a
    .line 180
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9d
    move-result-object v11

    #@9e
    .line 181
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a1
    move-result-object v12

    #@a2
    .line 182
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a5
    move-result v13

    #@a6
    .line 183
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v14

    #@aa
    .line 184
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v6

    #@ae
    if-eqz v6, :cond_2

    #@b0
    .line 185
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b2
    move-object/from16 v0, p2

    #@b4
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b7
    move-result-object v15

    #@b8
    check-cast v15, Landroid/app/ProfilerInfo;

    #@ba
    .line 186
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bd
    move-result v6

    #@be
    if-eqz v6, :cond_3

    #@c0
    .line 187
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c2
    move-object/from16 v0, p2

    #@c4
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c7
    move-result-object v16

    #@c8
    check-cast v16, Landroid/os/Bundle;

    #@ca
    .line 188
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cd
    move-result v17

    #@ce
    .local v17, "userId":I
    move-object/from16 v6, p0

    #@d0
    .line 189
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    #@d3
    move-result v0

    #@d4
    move/16 v331, v0

    #@d7
    .line 191
    .restart local v331    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@da
    .line 192
    move-object/from16 v0, p3

    #@dc
    move/from16 v1, v331

    #@de
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e1
    .line 193
    const/4 v6, 0x1

    #@e2
    return v6

    #@e3
    .line 185
    .end local v17    # "userId":I
    .end local v331    # "result":I
    :cond_2
    const/4 v15, 0x0

    #@e4
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_2

    #@e5
    .line 187
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v16, 0x0

    #@e7
    .local v16, "options":Landroid/os/Bundle;
    goto :goto_3

    #@e8
    .line 198
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@eb
    move-object/from16 v0, p2

    #@ed
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f0
    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f3
    move-result-object v213

    #@f4
    .line 200
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@f7
    move-result-object v7

    #@f8
    .line 201
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fb
    move-result-object v8

    #@fc
    .line 202
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fe
    move-object/from16 v0, p2

    #@100
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@103
    move-result-object v9

    #@104
    check-cast v9, Landroid/content/Intent;

    #@106
    .line 203
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@109
    move-result-object v10

    #@10a
    .line 204
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10d
    move-result-object v11

    #@10e
    .line 205
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@111
    move-result-object v12

    #@112
    .line 206
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@115
    move-result v13

    #@116
    .line 207
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@119
    move-result v14

    #@11a
    .line 208
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11d
    move-result v6

    #@11e
    if-eqz v6, :cond_4

    #@120
    .line 209
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@122
    move-object/from16 v0, p2

    #@124
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@127
    move-result-object v15

    #@128
    check-cast v15, Landroid/app/ProfilerInfo;

    #@12a
    .line 210
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12d
    move-result v6

    #@12e
    if-eqz v6, :cond_5

    #@130
    .line 211
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@132
    move-object/from16 v0, p2

    #@134
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@137
    move-result-object v16

    #@138
    check-cast v16, Landroid/os/Bundle;

    #@13a
    .line 212
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13d
    move-result v6

    #@13e
    if-eqz v6, :cond_6

    #@140
    const/16 v29, 0x1

    #@142
    .line 213
    .local v29, "ignoreTargetSecurity":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@145
    move-result v17

    #@146
    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    #@148
    move-object/from16 v19, v7

    #@14a
    move-object/from16 v20, v8

    #@14c
    move-object/from16 v21, v9

    #@14e
    move-object/from16 v22, v10

    #@150
    move-object/from16 v23, v11

    #@152
    move-object/from16 v24, v12

    #@154
    move/from16 v25, v13

    #@156
    move/from16 v26, v14

    #@158
    move-object/from16 v27, v15

    #@15a
    move-object/from16 v28, v16

    #@15c
    move/from16 v30, v17

    #@15e
    .line 214
    invoke-virtual/range {v18 .. v30}, Landroid/app/ActivityManagerNative;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    #@161
    move-result v0

    #@162
    move/16 v331, v0

    #@165
    .line 217
    .restart local v331    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@168
    .line 218
    move-object/from16 v0, p3

    #@16a
    move/from16 v1, v331

    #@16c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16f
    .line 219
    const/4 v6, 0x1

    #@170
    return v6

    #@171
    .line 209
    .end local v17    # "userId":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v331    # "result":I
    :cond_4
    const/4 v15, 0x0

    #@172
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_4

    #@173
    .line 211
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_5
    const/16 v16, 0x0

    #@175
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_5

    #@176
    .line 212
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_6
    const/16 v29, 0x0

    #@178
    .restart local v29    # "ignoreTargetSecurity":Z
    goto :goto_6

    #@179
    .line 224
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@17c
    move-object/from16 v0, p2

    #@17e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@181
    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@184
    move-result-object v213

    #@185
    .line 226
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@188
    move-result-object v7

    #@189
    .line 227
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18c
    move-result-object v8

    #@18d
    .line 228
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18f
    move-object/from16 v0, p2

    #@191
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@194
    move-result-object v9

    #@195
    check-cast v9, Landroid/content/Intent;

    #@197
    .line 229
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19a
    move-result-object v10

    #@19b
    .line 230
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19e
    move-result-object v11

    #@19f
    .line 231
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a2
    move-result-object v12

    #@1a3
    .line 232
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a6
    move-result v13

    #@1a7
    .line 233
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1aa
    move-result v14

    #@1ab
    .line 234
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ae
    move-result v6

    #@1af
    if-eqz v6, :cond_7

    #@1b1
    .line 235
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b3
    move-object/from16 v0, p2

    #@1b5
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b8
    move-result-object v15

    #@1b9
    check-cast v15, Landroid/app/ProfilerInfo;

    #@1bb
    .line 236
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1be
    move-result v6

    #@1bf
    if-eqz v6, :cond_8

    #@1c1
    .line 237
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c3
    move-object/from16 v0, p2

    #@1c5
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c8
    move-result-object v16

    #@1c9
    check-cast v16, Landroid/os/Bundle;

    #@1cb
    .line 238
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ce
    move-result v17

    #@1cf
    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    #@1d1
    .line 239
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    #@1d4
    move-result-object v0

    #@1d5
    move-object/16 v332, v0

    #@1d8
    .line 241
    .local v332, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1db
    .line 242
    const/4 v6, 0x0

    #@1dc
    move-object/from16 v0, v332

    #@1de
    move-object/from16 v1, p3

    #@1e0
    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e3
    .line 243
    const/4 v6, 0x1

    #@1e4
    return v6

    #@1e5
    .line 235
    .end local v17    # "userId":I
    .end local v332    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_7
    const/4 v15, 0x0

    #@1e6
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_7

    #@1e7
    .line 237
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v16, 0x0

    #@1e9
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_8

    #@1ea
    .line 248
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1ed
    move-object/from16 v0, p2

    #@1ef
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f2
    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f5
    move-result-object v213

    #@1f6
    .line 250
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@1f9
    move-result-object v7

    #@1fa
    .line 251
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1fd
    move-result-object v8

    #@1fe
    .line 252
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@200
    move-object/from16 v0, p2

    #@202
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@205
    move-result-object v9

    #@206
    check-cast v9, Landroid/content/Intent;

    #@208
    .line 253
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20b
    move-result-object v10

    #@20c
    .line 254
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@20f
    move-result-object v11

    #@210
    .line 255
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@213
    move-result-object v12

    #@214
    .line 256
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@217
    move-result v13

    #@218
    .line 257
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21b
    move-result v14

    #@21c
    .line 258
    .restart local v14    # "startFlags":I
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21e
    move-object/from16 v0, p2

    #@220
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@223
    move-result-object v39

    #@224
    check-cast v39, Landroid/content/res/Configuration;

    #@226
    .line 259
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@229
    move-result v6

    #@22a
    if-eqz v6, :cond_9

    #@22c
    .line 260
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22e
    move-object/from16 v0, p2

    #@230
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@233
    move-result-object v16

    #@234
    check-cast v16, Landroid/os/Bundle;

    #@236
    .line 261
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@239
    move-result v17

    #@23a
    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    #@23c
    move-object/from16 v31, v7

    #@23e
    move-object/from16 v32, v8

    #@240
    move-object/from16 v33, v9

    #@242
    move-object/from16 v34, v10

    #@244
    move-object/from16 v35, v11

    #@246
    move-object/from16 v36, v12

    #@248
    move/from16 v37, v13

    #@24a
    move/from16 v38, v14

    #@24c
    move-object/from16 v40, v16

    #@24e
    move/from16 v41, v17

    #@250
    .line 262
    invoke-virtual/range {v30 .. v41}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    #@253
    move-result v0

    #@254
    move/16 v331, v0

    #@257
    .line 264
    .restart local v331    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25a
    .line 265
    move-object/from16 v0, p3

    #@25c
    move/from16 v1, v331

    #@25e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@261
    .line 266
    const/4 v6, 0x1

    #@262
    return v6

    #@263
    .line 260
    .end local v17    # "userId":I
    .end local v331    # "result":I
    :cond_9
    const/16 v16, 0x0

    #@265
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_9

    #@266
    .line 271
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
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@269
    move-object/from16 v0, p2

    #@26b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26e
    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@271
    move-result-object v213

    #@272
    .line 273
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@275
    move-result-object v7

    #@276
    .line 274
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    #@278
    move-object/from16 v0, p2

    #@27a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27d
    move-result-object v20

    #@27e
    check-cast v20, Landroid/content/IntentSender;

    #@280
    .line 275
    .local v20, "intent":Landroid/content/IntentSender;
    const/16 v21, 0x0

    #@282
    .line 276
    .local v21, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@285
    move-result v6

    #@286
    if-eqz v6, :cond_a

    #@288
    .line 277
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28a
    move-object/from16 v0, p2

    #@28c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28f
    move-result-object v21

    #@290
    .end local v21    # "fillInIntent":Landroid/content/Intent;
    check-cast v21, Landroid/content/Intent;

    #@292
    .line 279
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@295
    move-result-object v10

    #@296
    .line 280
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@299
    move-result-object v11

    #@29a
    .line 281
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29d
    move-result-object v12

    #@29e
    .line 282
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a1
    move-result v13

    #@2a2
    .line 283
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a5
    move-result v26

    #@2a6
    .line 284
    .local v26, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a9
    move-result v27

    #@2aa
    .line 285
    .local v27, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ad
    move-result v6

    #@2ae
    if-eqz v6, :cond_b

    #@2b0
    .line 286
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b2
    move-object/from16 v0, p2

    #@2b4
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b7
    move-result-object v6

    #@2b8
    check-cast v6, Landroid/os/Bundle;

    #@2ba
    move-object/from16 v16, v6

    #@2bc
    .local v16, "options":Landroid/os/Bundle;
    :goto_a
    move-object/from16 v18, p0

    #@2be
    move-object/from16 v19, v7

    #@2c0
    move-object/from16 v22, v10

    #@2c2
    move-object/from16 v23, v11

    #@2c4
    move-object/from16 v24, v12

    #@2c6
    move/from16 v25, v13

    #@2c8
    move-object/from16 v28, v16

    #@2ca
    .line 287
    invoke-virtual/range {v18 .. v28}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    #@2cd
    move-result v0

    #@2ce
    move/16 v331, v0

    #@2d1
    .line 290
    .restart local v331    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d4
    .line 291
    move-object/from16 v0, p3

    #@2d6
    move/from16 v1, v331

    #@2d8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2db
    .line 292
    const/4 v6, 0x1

    #@2dc
    return v6

    #@2dd
    .line 286
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v331    # "result":I
    :cond_b
    const/16 v16, 0x0

    #@2df
    goto :goto_a

    #@2e0
    .line 297
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v20    # "intent":Landroid/content/IntentSender;
    .end local v26    # "flagsMask":I
    .end local v27    # "flagsValues":I
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2e3
    move-object/from16 v0, p2

    #@2e5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e8
    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2eb
    move-result-object v8

    #@2ec
    .line 299
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ef
    move-result v42

    #@2f0
    .line 300
    .local v42, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f3
    move-result v43

    #@2f4
    .line 301
    .local v43, "callingUid":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f6
    move-object/from16 v0, p2

    #@2f8
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2fb
    move-result-object v9

    #@2fc
    check-cast v9, Landroid/content/Intent;

    #@2fe
    .line 302
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@301
    move-result-object v10

    #@302
    .line 304
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@305
    move-result-object v6

    #@306
    .line 303
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    #@309
    move-result-object v46

    #@30a
    .line 306
    .local v46, "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@30d
    move-result-object v6

    #@30e
    .line 305
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    #@311
    move-result-object v47

    #@312
    .line 307
    .local v47, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@315
    move-result v14

    #@316
    .line 308
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@319
    move-result v6

    #@31a
    if-eqz v6, :cond_c

    #@31c
    .line 309
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31e
    move-object/from16 v0, p2

    #@320
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@323
    move-result-object v15

    #@324
    check-cast v15, Landroid/app/ProfilerInfo;

    #@326
    .line 310
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@329
    move-result v6

    #@32a
    if-eqz v6, :cond_d

    #@32c
    .line 311
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32e
    move-object/from16 v0, p2

    #@330
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@333
    move-result-object v16

    #@334
    check-cast v16, Landroid/os/Bundle;

    #@336
    .line 312
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@339
    move-result v17

    #@33a
    .restart local v17    # "userId":I
    move-object/from16 v40, p0

    #@33c
    move-object/from16 v41, v8

    #@33e
    move-object/from16 v44, v9

    #@340
    move-object/from16 v45, v10

    #@342
    move/from16 v48, v14

    #@344
    move-object/from16 v49, v15

    #@346
    move-object/from16 v50, v16

    #@348
    move/from16 v51, v17

    #@34a
    .line 313
    invoke-virtual/range {v40 .. v51}, Landroid/app/ActivityManagerNative;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    #@34d
    move-result v0

    #@34e
    move/16 v331, v0

    #@351
    .line 315
    .restart local v331    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@354
    .line 316
    move-object/from16 v0, p3

    #@356
    move/from16 v1, v331

    #@358
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@35b
    .line 317
    const/4 v6, 0x1

    #@35c
    return v6

    #@35d
    .line 309
    .end local v17    # "userId":I
    .end local v331    # "result":I
    :cond_c
    const/4 v15, 0x0

    #@35e
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_b

    #@35f
    .line 311
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_d
    const/16 v16, 0x0

    #@361
    .local v16, "options":Landroid/os/Bundle;
    goto :goto_c

    #@362
    .line 322
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

    #@365
    move-object/from16 v0, p2

    #@367
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36a
    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@36d
    move-result-object v93

    #@36e
    .line 324
    .local v93, "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@371
    move-result-object v16

    #@372
    .line 325
    .local v16, "options":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@374
    move-object/from16 v1, v93

    #@376
    move-object/from16 v2, v16

    #@378
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    #@37b
    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37e
    .line 327
    const/4 v6, 0x1

    #@37f
    return v6

    #@380
    .line 332
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@383
    move-object/from16 v0, p2

    #@385
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@388
    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@38b
    move-result-object v93

    #@38c
    .line 334
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@38e
    move-object/from16 v1, v93

    #@390
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    #@393
    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@396
    .line 336
    const/4 v6, 0x1

    #@397
    return v6

    #@398
    .line 341
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@39b
    move-object/from16 v0, p2

    #@39d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a0
    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->supportsLocalVoiceInteraction()Z

    #@3a3
    move-result v0

    #@3a4
    move/16 v333, v0

    #@3a7
    .line 343
    .local v333, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3aa
    .line 344
    move/from16 v0, v333

    #@3ac
    if-eqz v0, :cond_e

    #@3ae
    const/4 v6, 0x1

    #@3af
    :goto_d
    move-object/from16 v0, p3

    #@3b1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@3b4
    .line 345
    const/4 v6, 0x1

    #@3b5
    return v6

    #@3b6
    .line 344
    :cond_e
    const/4 v6, 0x0

    #@3b7
    goto :goto_d

    #@3b8
    .line 350
    .end local v333    # "result":Z
    :pswitch_b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@3bb
    move-object/from16 v0, p2

    #@3bd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c0
    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3c3
    move-result-object v220

    #@3c4
    .line 352
    .local v220, "callingActivity":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c6
    move-object/from16 v0, p2

    #@3c8
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3cb
    move-result-object v9

    #@3cc
    check-cast v9, Landroid/content/Intent;

    #@3ce
    .line 353
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d1
    move-result v6

    #@3d2
    if-eqz v6, :cond_f

    #@3d4
    .line 354
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d6
    move-object/from16 v0, p2

    #@3d8
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3db
    move-result-object v6

    #@3dc
    check-cast v6, Landroid/os/Bundle;

    #@3de
    move-object/from16 v16, v6

    #@3e0
    .line 355
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_e
    move-object/from16 v0, p0

    #@3e2
    move-object/from16 v1, v220

    #@3e4
    move-object/from16 v2, v16

    #@3e6
    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    #@3e9
    move-result v0

    #@3ea
    move/16 v333, v0

    #@3ed
    .line 356
    .restart local v333    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f0
    .line 357
    move/from16 v0, v333

    #@3f2
    if-eqz v0, :cond_10

    #@3f4
    const/4 v6, 0x1

    #@3f5
    :goto_f
    move-object/from16 v0, p3

    #@3f7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@3fa
    .line 358
    const/4 v6, 0x1

    #@3fb
    return v6

    #@3fc
    .line 354
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v333    # "result":Z
    :cond_f
    const/16 v16, 0x0

    #@3fe
    goto :goto_e

    #@3ff
    .line 357
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v333    # "result":Z
    :cond_10
    const/4 v6, 0x0

    #@400
    goto :goto_f

    #@401
    .line 363
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v220    # "callingActivity":Landroid/os/IBinder;
    .end local v333    # "result":Z
    :pswitch_c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@404
    move-object/from16 v0, p2

    #@406
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@409
    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40c
    move-result v69

    #@40d
    .line 366
    .local v69, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@410
    move-result v6

    #@411
    if-nez v6, :cond_11

    #@413
    const/16 v16, 0x0

    #@415
    .line 367
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_10
    move-object/from16 v0, p0

    #@417
    move/from16 v1, v69

    #@419
    move-object/from16 v2, v16

    #@41b
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startActivityFromRecents(ILandroid/os/Bundle;)I

    #@41e
    move-result v0

    #@41f
    move/16 v331, v0

    #@422
    .line 368
    .restart local v331    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@425
    .line 369
    move-object/from16 v0, p3

    #@427
    move/from16 v1, v331

    #@429
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@42c
    .line 370
    const/4 v6, 0x1

    #@42d
    return v6

    #@42e
    .line 366
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v331    # "result":I
    :cond_11
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@430
    move-object/from16 v0, p2

    #@432
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@435
    move-result-object v6

    #@436
    check-cast v6, Landroid/os/Bundle;

    #@438
    move-object/from16 v16, v6

    #@43a
    goto :goto_10

    #@43b
    .line 374
    .end local v69    # "taskId":I
    :pswitch_d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@43e
    move-object/from16 v0, p2

    #@440
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@443
    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@446
    move-result-object v93

    #@447
    .line 376
    .restart local v93    # "token":Landroid/os/IBinder;
    const/4 v0, 0x0

    #@448
    move-object/16 v335, v0

    #@44b
    .line 377
    .local v335, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44e
    move-result v53

    #@44f
    .line 378
    .local v53, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@452
    move-result v6

    #@453
    if-eqz v6, :cond_12

    #@455
    .line 379
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@457
    move-object/from16 v0, p2

    #@459
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@45c
    move-result-object v0

    #@45d
    move-object/16 v335, v0

    #@460
    .end local v335    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v335

    #@462
    check-cast v0, Landroid/content/Intent;

    #@464
    move-object/16 v335, v0

    #@467
    .line 381
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@46a
    move-result v237

    #@46b
    .line 382
    .local v237, "finishTask":I
    move-object/from16 v0, p0

    #@46d
    move-object/from16 v1, v93

    #@46f
    move/from16 v2, v53

    #@471
    move-object/from16 v3, v335

    #@473
    move/from16 v4, v237

    #@475
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    #@478
    move-result v0

    #@479
    move/16 v327, v0

    #@47c
    .line 383
    .local v327, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@47f
    .line 384
    move/from16 v0, v327

    #@481
    if-eqz v0, :cond_13

    #@483
    const/4 v6, 0x1

    #@484
    :goto_11
    move-object/from16 v0, p3

    #@486
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@489
    .line 385
    const/4 v6, 0x1

    #@48a
    return v6

    #@48b
    .line 384
    :cond_13
    const/4 v6, 0x0

    #@48c
    goto :goto_11

    #@48d
    .line 389
    .end local v53    # "resultCode":I
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v237    # "finishTask":I
    .end local v327    # "res":Z
    :pswitch_e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@490
    move-object/from16 v0, p2

    #@492
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@495
    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@498
    move-result-object v93

    #@499
    .line 391
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@49c
    move-result-object v12

    #@49d
    .line 392
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a0
    move-result v13

    #@4a1
    .line 393
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    #@4a3
    move-object/from16 v1, v93

    #@4a5
    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    #@4a8
    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ab
    .line 395
    const/4 v6, 0x1

    #@4ac
    return v6

    #@4ad
    .line 399
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@4b0
    move-object/from16 v0, p2

    #@4b2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b5
    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4b8
    move-result-object v93

    #@4b9
    .line 401
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@4bb
    move-object/from16 v1, v93

    #@4bd
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    #@4c0
    move-result v0

    #@4c1
    move/16 v327, v0

    #@4c4
    .line 402
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c7
    .line 403
    move/from16 v0, v327

    #@4c9
    if-eqz v0, :cond_14

    #@4cb
    const/4 v6, 0x1

    #@4cc
    :goto_12
    move-object/from16 v0, p3

    #@4ce
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@4d1
    .line 404
    const/4 v6, 0x1

    #@4d2
    return v6

    #@4d3
    .line 403
    :cond_14
    const/4 v6, 0x0

    #@4d4
    goto :goto_12

    #@4d5
    .line 408
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v327    # "res":Z
    :pswitch_10
    const-string/jumbo v6, "android.app.IActivityManager"

    #@4d8
    move-object/from16 v0, p2

    #@4da
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4dd
    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4e0
    move-result-object v6

    #@4e1
    .line 409
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    #@4e4
    move-result-object v46

    #@4e5
    .line 411
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    #@4e7
    move-object/from16 v1, v46

    #@4e9
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    #@4ec
    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ef
    .line 413
    const/4 v6, 0x1

    #@4f0
    return v6

    #@4f1
    .line 417
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_11
    const-string/jumbo v6, "android.app.IActivityManager"

    #@4f4
    move-object/from16 v0, p2

    #@4f6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f9
    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4fc
    move-result-object v93

    #@4fd
    .line 419
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@4ff
    move-object/from16 v1, v93

    #@501
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->releaseActivityInstance(Landroid/os/IBinder;)Z

    #@504
    move-result v0

    #@505
    move/16 v327, v0

    #@508
    .line 420
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@50b
    .line 421
    move/from16 v0, v327

    #@50d
    if-eqz v0, :cond_15

    #@50f
    const/4 v6, 0x1

    #@510
    :goto_13
    move-object/from16 v0, p3

    #@512
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@515
    .line 422
    const/4 v6, 0x1

    #@516
    return v6

    #@517
    .line 421
    :cond_15
    const/4 v6, 0x0

    #@518
    goto :goto_13

    #@519
    .line 426
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v327    # "res":Z
    :pswitch_12
    const-string/jumbo v6, "android.app.IActivityManager"

    #@51c
    move-object/from16 v0, p2

    #@51e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@521
    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@524
    move-result-object v6

    #@525
    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@528
    move-result-object v7

    #@529
    .line 428
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    #@52b
    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    #@52e
    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@531
    .line 430
    const/4 v6, 0x1

    #@532
    return v6

    #@533
    .line 434
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :pswitch_13
    const-string/jumbo v6, "android.app.IActivityManager"

    #@536
    move-object/from16 v0, p2

    #@538
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53b
    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@53e
    move-result-object v93

    #@53f
    .line 436
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@541
    move-object/from16 v1, v93

    #@543
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    #@546
    move-result v0

    #@547
    move/16 v327, v0

    #@54a
    .line 437
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54d
    .line 438
    move/from16 v0, v327

    #@54f
    if-eqz v0, :cond_16

    #@551
    const/4 v6, 0x1

    #@552
    :goto_14
    move-object/from16 v0, p3

    #@554
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@557
    .line 439
    const/4 v6, 0x1

    #@558
    return v6

    #@559
    .line 438
    :cond_16
    const/4 v6, 0x0

    #@55a
    goto :goto_14

    #@55b
    .line 444
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v327    # "res":Z
    :pswitch_14
    const-string/jumbo v6, "android.app.IActivityManager"

    #@55e
    move-object/from16 v0, p2

    #@560
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@563
    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@566
    move-result-object v213

    #@567
    .line 447
    .restart local v213    # "b":Landroid/os/IBinder;
    if-eqz v213, :cond_17

    #@569
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@56c
    move-result-object v7

    #@56d
    .line 448
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@570
    move-result-object v32

    #@571
    .line 449
    .local v32, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@574
    move-result-object v213

    #@575
    .line 451
    if-eqz v213, :cond_18

    #@577
    invoke-static/range {v213 .. v213}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    #@57a
    move-result-object v33

    #@57b
    .line 452
    :goto_16
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@57d
    move-object/from16 v0, p2

    #@57f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@582
    move-result-object v34

    #@583
    check-cast v34, Landroid/content/IntentFilter;

    #@585
    .line 453
    .local v34, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@588
    move-result-object v35

    #@589
    .line 454
    .local v35, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@58c
    move-result v17

    #@58d
    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    #@58f
    move-object/from16 v31, v7

    #@591
    move/from16 v36, v17

    #@593
    .line 455
    invoke-virtual/range {v30 .. v36}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    #@596
    move-result-object v9

    #@597
    .line 456
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@59a
    .line 457
    if-eqz v9, :cond_19

    #@59c
    .line 458
    const/4 v6, 0x1

    #@59d
    move-object/from16 v0, p3

    #@59f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5a2
    .line 459
    const/4 v6, 0x0

    #@5a3
    move-object/from16 v0, p3

    #@5a5
    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@5a8
    .line 463
    :goto_17
    const/4 v6, 0x1

    #@5a9
    return v6

    #@5aa
    .line 447
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    :cond_17
    const/4 v7, 0x0

    #@5ab
    .local v7, "app":Landroid/app/IApplicationThread;
    goto :goto_15

    #@5ac
    .line 451
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v32    # "packageName":Ljava/lang/String;
    :cond_18
    const/16 v33, 0x0

    #@5ae
    .local v33, "rec":Landroid/content/IIntentReceiver;
    goto :goto_16

    #@5af
    .line 461
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v34    # "filter":Landroid/content/IntentFilter;
    .restart local v35    # "perm":Ljava/lang/String;
    :cond_19
    const/4 v6, 0x0

    #@5b0
    move-object/from16 v0, p3

    #@5b2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5b5
    goto :goto_17

    #@5b6
    .line 468
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_15
    const-string/jumbo v6, "android.app.IActivityManager"

    #@5b9
    move-object/from16 v0, p2

    #@5bb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5be
    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5c1
    move-result-object v213

    #@5c2
    .line 470
    .restart local v213    # "b":Landroid/os/IBinder;
    if-nez v213, :cond_1a

    #@5c4
    .line 471
    const/4 v6, 0x1

    #@5c5
    return v6

    #@5c6
    .line 473
    :cond_1a
    invoke-static/range {v213 .. v213}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    #@5c9
    move-result-object v33

    #@5ca
    .line 474
    .local v33, "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    #@5cc
    move-object/from16 v1, v33

    #@5ce
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    #@5d1
    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d4
    .line 476
    const/4 v6, 0x1

    #@5d5
    return v6

    #@5d6
    .line 481
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_16
    const-string/jumbo v6, "android.app.IActivityManager"

    #@5d9
    move-object/from16 v0, p2

    #@5db
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5de
    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5e1
    move-result-object v213

    #@5e2
    .line 484
    .restart local v213    # "b":Landroid/os/IBinder;
    if-eqz v213, :cond_1b

    #@5e4
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@5e7
    move-result-object v7

    #@5e8
    .line 485
    :goto_18
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5ea
    move-object/from16 v0, p2

    #@5ec
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5ef
    move-result-object v9

    #@5f0
    check-cast v9, Landroid/content/Intent;

    #@5f2
    .line 486
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5f5
    move-result-object v10

    #@5f6
    .line 487
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5f9
    move-result-object v213

    #@5fa
    .line 489
    if-eqz v213, :cond_1c

    #@5fc
    invoke-static/range {v213 .. v213}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    #@5ff
    move-result-object v52

    #@600
    .line 490
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@603
    move-result v53

    #@604
    .line 491
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@607
    move-result-object v54

    #@608
    .line 492
    .local v54, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@60b
    move-result-object v55

    #@60c
    .line 493
    .local v55, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@60f
    move-result-object v56

    #@610
    .line 494
    .local v56, "perms":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@613
    move-result v57

    #@614
    .line 495
    .local v57, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@617
    move-result-object v16

    #@618
    .line 496
    .restart local v16    # "options":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61b
    move-result v6

    #@61c
    if-eqz v6, :cond_1d

    #@61e
    const/16 v59, 0x1

    #@620
    .line 497
    .local v59, "serialized":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@623
    move-result v6

    #@624
    if-eqz v6, :cond_1e

    #@626
    const/16 v60, 0x1

    #@628
    .line 498
    .local v60, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62b
    move-result v17

    #@62c
    .restart local v17    # "userId":I
    move-object/from16 v48, p0

    #@62e
    move-object/from16 v49, v7

    #@630
    move-object/from16 v50, v9

    #@632
    move-object/from16 v51, v10

    #@634
    move-object/from16 v58, v16

    #@636
    move/from16 v61, v17

    #@638
    .line 499
    invoke-virtual/range {v48 .. v61}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    #@63b
    move-result v0

    #@63c
    move/16 v321, v0

    #@63f
    .line 502
    .local v321, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@642
    .line 503
    move-object/from16 v0, p3

    #@644
    move/from16 v1, v321

    #@646
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@649
    .line 504
    const/4 v6, 0x1

    #@64a
    return v6

    #@64b
    .line 484
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
    .end local v321    # "res":I
    :cond_1b
    const/4 v7, 0x0

    #@64c
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_18

    #@64d
    .line 489
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    :cond_1c
    const/16 v52, 0x0

    #@64f
    .local v52, "resultTo":Landroid/content/IIntentReceiver;
    goto :goto_19

    #@650
    .line 496
    .end local v52    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v53    # "resultCode":I
    .restart local v54    # "resultData":Ljava/lang/String;
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    .restart local v56    # "perms":[Ljava/lang/String;
    .restart local v57    # "appOp":I
    :cond_1d
    const/16 v59, 0x0

    #@652
    .restart local v59    # "serialized":Z
    goto :goto_1a

    #@653
    .line 497
    :cond_1e
    const/16 v60, 0x0

    #@655
    .restart local v60    # "sticky":Z
    goto :goto_1b

    #@656
    .line 509
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
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_17
    const-string/jumbo v6, "android.app.IActivityManager"

    #@659
    move-object/from16 v0, p2

    #@65b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65e
    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@661
    move-result-object v213

    #@662
    .line 511
    .restart local v213    # "b":Landroid/os/IBinder;
    if-eqz v213, :cond_1f

    #@664
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@667
    move-result-object v7

    #@668
    .line 512
    :goto_1c
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@66a
    move-object/from16 v0, p2

    #@66c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@66f
    move-result-object v9

    #@670
    check-cast v9, Landroid/content/Intent;

    #@672
    .line 513
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@675
    move-result v17

    #@676
    .line 514
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@678
    move/from16 v1, v17

    #@67a
    invoke-virtual {v0, v7, v9, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    #@67d
    .line 515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@680
    .line 516
    const/4 v6, 0x1

    #@681
    return v6

    #@682
    .line 511
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_1f
    const/4 v7, 0x0

    #@683
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_1c

    #@684
    .line 520
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_18
    const-string/jumbo v6, "android.app.IActivityManager"

    #@687
    move-object/from16 v0, p2

    #@689
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68c
    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@68f
    move-result-object v62

    #@690
    .line 522
    .local v62, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@693
    move-result v53

    #@694
    .line 523
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@697
    move-result-object v54

    #@698
    .line 524
    .restart local v54    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@69b
    move-result-object v55

    #@69c
    .line 525
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@69f
    move-result v6

    #@6a0
    if-eqz v6, :cond_21

    #@6a2
    const/16 v66, 0x1

    #@6a4
    .line 526
    .local v66, "resultAbort":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a7
    move-result v67

    #@6a8
    .line 527
    .local v67, "intentFlags":I
    if-eqz v62, :cond_20

    #@6aa
    move-object/from16 v61, p0

    #@6ac
    move/from16 v63, v53

    #@6ae
    move-object/from16 v64, v54

    #@6b0
    move-object/from16 v65, v55

    #@6b2
    .line 528
    invoke-virtual/range {v61 .. v67}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    #@6b5
    .line 530
    :cond_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b8
    .line 531
    const/4 v6, 0x1

    #@6b9
    return v6

    #@6ba
    .line 525
    .end local v66    # "resultAbort":Z
    .end local v67    # "intentFlags":I
    :cond_21
    const/16 v66, 0x0

    #@6bc
    .restart local v66    # "resultAbort":Z
    goto :goto_1d

    #@6bd
    .line 535
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v62    # "who":Landroid/os/IBinder;
    .end local v66    # "resultAbort":Z
    :pswitch_19
    const-string/jumbo v6, "android.app.IActivityManager"

    #@6c0
    move-object/from16 v0, p2

    #@6c2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c5
    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6c8
    move-result-object v6

    #@6c9
    .line 536
    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@6cc
    move-result-object v7

    #@6cd
    .line 538
    .local v7, "app":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_22

    #@6cf
    .line 539
    move-object/from16 v0, p0

    #@6d1
    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    #@6d4
    .line 541
    :cond_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d7
    .line 542
    const/4 v6, 0x1

    #@6d8
    return v6

    #@6d9
    .line 546
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :pswitch_1a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@6dc
    move-object/from16 v0, p2

    #@6de
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e1
    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6e4
    move-result-object v93

    #@6e5
    .line 548
    .restart local v93    # "token":Landroid/os/IBinder;
    const/16 v39, 0x0

    #@6e7
    .line 549
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ea
    move-result v6

    #@6eb
    if-eqz v6, :cond_23

    #@6ed
    .line 550
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6ef
    move-object/from16 v0, p2

    #@6f1
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6f4
    move-result-object v39

    #@6f5
    .end local v39    # "config":Landroid/content/res/Configuration;
    check-cast v39, Landroid/content/res/Configuration;

    #@6f7
    .line 552
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6fa
    move-result v6

    #@6fb
    if-eqz v6, :cond_25

    #@6fd
    const/4 v0, 0x1

    #@6fe
    move/16 v349, v0

    #@701
    .line 553
    .local v349, "stopProfiling":Z
    :goto_1e
    if-eqz v93, :cond_24

    #@703
    .line 554
    move-object/from16 v0, p0

    #@705
    move-object/from16 v1, v93

    #@707
    move-object/from16 v2, v39

    #@709
    move/from16 v3, v349

    #@70b
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    #@70e
    .line 556
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@711
    .line 557
    const/4 v6, 0x1

    #@712
    return v6

    #@713
    .line 552
    .end local v349    # "stopProfiling":Z
    :cond_25
    const/4 v0, 0x0

    #@714
    move/16 v349, v0

    #@717
    .restart local v349    # "stopProfiling":Z
    goto :goto_1e

    #@718
    .line 561
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v349    # "stopProfiling":Z
    :pswitch_1b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@71b
    move-object/from16 v0, p2

    #@71d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@720
    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@723
    move-result-object v93

    #@724
    .line 563
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@726
    move-object/from16 v1, v93

    #@728
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    #@72b
    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@72e
    .line 565
    const/4 v6, 0x1

    #@72f
    return v6

    #@730
    .line 569
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_1c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@733
    move-object/from16 v0, p2

    #@735
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@738
    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@73b
    move-result-object v93

    #@73c
    .line 571
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@73e
    move-object/from16 v1, v93

    #@740
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    #@743
    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@746
    .line 573
    const/4 v6, 0x1

    #@747
    return v6

    #@748
    .line 577
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_1d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@74b
    move-object/from16 v0, p2

    #@74d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@750
    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@753
    move-result-object v93

    #@754
    .line 579
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@757
    move-result-object v0

    #@758
    move-object/16 v284, v0

    #@75b
    .line 580
    .local v284, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    #@75e
    move-result-object v0

    #@75f
    move-object/16 v306, v0

    #@762
    .line 581
    .local v306, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@764
    move-object/from16 v0, p2

    #@766
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@769
    move-result-object v228

    #@76a
    check-cast v228, Ljava/lang/CharSequence;

    #@76c
    .line 582
    .local v228, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    #@76e
    move-object/from16 v1, v93

    #@770
    move-object/from16 v2, v284

    #@772
    move-object/from16 v3, v306

    #@774
    move-object/from16 v4, v228

    #@776
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    #@779
    .line 583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@77c
    .line 584
    const/4 v6, 0x1

    #@77d
    return v6

    #@77e
    .line 588
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v228    # "description":Ljava/lang/CharSequence;
    .end local v284    # "map":Landroid/os/Bundle;
    .end local v306    # "persistentState":Landroid/os/PersistableBundle;
    :pswitch_1e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@781
    move-object/from16 v0, p2

    #@783
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@786
    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@789
    move-result-object v93

    #@78a
    .line 590
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@78c
    move-object/from16 v1, v93

    #@78e
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    #@791
    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@794
    .line 592
    const/4 v6, 0x1

    #@795
    return v6

    #@796
    .line 596
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_1f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@799
    move-object/from16 v0, p2

    #@79b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@79e
    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7a1
    move-result-object v93

    #@7a2
    .line 598
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@7a4
    move-object/from16 v1, v93

    #@7a6
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    #@7a9
    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7ac
    .line 600
    const/4 v6, 0x1

    #@7ad
    return v6

    #@7ae
    .line 604
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_20
    const-string/jumbo v6, "android.app.IActivityManager"

    #@7b1
    move-object/from16 v0, p2

    #@7b3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b6
    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7b9
    move-result-object v93

    #@7ba
    .line 606
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@7bc
    move-object/from16 v1, v93

    #@7be
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityRelaunched(Landroid/os/IBinder;)V

    #@7c1
    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c4
    .line 608
    const/4 v6, 0x1

    #@7c5
    return v6

    #@7c6
    .line 612
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_21
    const-string/jumbo v6, "android.app.IActivityManager"

    #@7c9
    move-object/from16 v0, p2

    #@7cb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ce
    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7d1
    move-result-object v93

    #@7d2
    .line 614
    .restart local v93    # "token":Landroid/os/IBinder;
    if-eqz v93, :cond_26

    #@7d4
    move-object/from16 v0, p0

    #@7d6
    move-object/from16 v1, v93

    #@7d8
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    #@7db
    move-result-object v0

    #@7dc
    move-object/16 v326, v0

    #@7df
    .line 615
    :goto_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e2
    .line 616
    move-object/from16 v0, p3

    #@7e4
    move-object/from16 v1, v326

    #@7e6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7e9
    .line 617
    const/4 v6, 0x1

    #@7ea
    return v6

    #@7eb
    .line 614
    :cond_26
    const/4 v0, 0x0

    #@7ec
    move-object/16 v326, v0

    #@7ef
    .local v326, "res":Ljava/lang/String;
    goto :goto_1f

    #@7f0
    .line 621
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v326    # "res":Ljava/lang/String;
    :pswitch_22
    const-string/jumbo v6, "android.app.IActivityManager"

    #@7f3
    move-object/from16 v0, p2

    #@7f5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f8
    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7fb
    move-result-object v93

    #@7fc
    .line 623
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@7fe
    move-object/from16 v1, v93

    #@800
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    #@803
    move-result-object v222

    #@804
    .line 624
    .local v222, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@807
    .line 625
    move-object/from16 v0, v222

    #@809
    move-object/from16 v1, p3

    #@80b
    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@80e
    .line 626
    const/4 v6, 0x1

    #@80f
    return v6

    #@810
    .line 630
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v222    # "cn":Landroid/content/ComponentName;
    :pswitch_23
    const-string/jumbo v6, "android.app.IActivityManager"

    #@813
    move-object/from16 v0, p2

    #@815
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@818
    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@81b
    move-result-object v8

    #@81c
    .line 632
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    #@81e
    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerNative;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    #@821
    move-result-object v0

    #@822
    move-object/16 v280, v0

    #@825
    .line 633
    .local v280, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@828
    .line 634
    move-object/from16 v0, v280

    #@82a
    if-eqz v0, :cond_27

    #@82c
    invoke-interface/range {v280 .. v280}, Ljava/util/List;->size()I

    #@82f
    move-result v188

    #@830
    .line 635
    .local v188, "N":I
    :goto_20
    move-object/from16 v0, p3

    #@832
    move/from16 v1, v188

    #@834
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@837
    .line 637
    const/16 v250, 0x0

    #@839
    .local v250, "i":I
    :goto_21
    move/from16 v0, v250

    #@83b
    move/from16 v1, v188

    #@83d
    if-ge v0, v1, :cond_28

    #@83f
    .line 638
    move-object/from16 v0, v280

    #@841
    move/from16 v1, v250

    #@843
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@846
    move-result-object v0

    #@847
    move-object/16 v356, v0

    #@84a
    move-object/from16 v0, v356

    #@84c
    check-cast v0, Landroid/app/IAppTask;

    #@84e
    move-object/16 v356, v0

    #@851
    .line 639
    .local v356, "task":Landroid/app/IAppTask;
    invoke-interface/range {v356 .. v356}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    #@854
    move-result-object v6

    #@855
    move-object/from16 v0, p3

    #@857
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@85a
    .line 637
    add-int/lit8 v250, v250, 0x1

    #@85c
    goto :goto_21

    #@85d
    .line 634
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v356    # "task":Landroid/app/IAppTask;
    :cond_27
    const/16 v188, -0x1

    #@85f
    goto :goto_20

    #@860
    .line 641
    .restart local v188    # "N":I
    .restart local v250    # "i":I
    :cond_28
    const/4 v6, 0x1

    #@861
    return v6

    #@862
    .line 645
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v280    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    :pswitch_24
    const-string/jumbo v6, "android.app.IActivityManager"

    #@865
    move-object/from16 v0, p2

    #@867
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86a
    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@86d
    move-result-object v173

    #@86e
    .line 647
    .local v173, "activityToken":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@870
    move-object/from16 v0, p2

    #@872
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@875
    move-result-object v9

    #@876
    check-cast v9, Landroid/content/Intent;

    #@878
    .line 649
    .restart local v9    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@87a
    move-object/from16 v0, p2

    #@87c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@87f
    move-result-object v227

    #@880
    check-cast v227, Landroid/app/ActivityManager$TaskDescription;

    #@882
    .line 650
    .local v227, "descr":Landroid/app/ActivityManager$TaskDescription;
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@884
    move-object/from16 v0, p2

    #@886
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@889
    move-result-object v0

    #@88a
    move-object/16 v359, v0

    #@88d
    move-object/from16 v0, v359

    #@88f
    check-cast v0, Landroid/graphics/Bitmap;

    #@891
    move-object/16 v359, v0

    #@894
    .line 651
    .local v359, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    #@896
    move-object/from16 v1, v173

    #@898
    move-object/from16 v2, v227

    #@89a
    move-object/from16 v3, v359

    #@89c
    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    #@89f
    move-result v0

    #@8a0
    move/16 v321, v0

    #@8a3
    .line 652
    .restart local v321    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a6
    .line 653
    move-object/from16 v0, p3

    #@8a8
    move/from16 v1, v321

    #@8aa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8ad
    .line 654
    const/4 v6, 0x1

    #@8ae
    return v6

    #@8af
    .line 658
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v227    # "descr":Landroid/app/ActivityManager$TaskDescription;
    .end local v321    # "res":I
    .end local v359    # "thumbnail":Landroid/graphics/Bitmap;
    :pswitch_25
    const-string/jumbo v6, "android.app.IActivityManager"

    #@8b2
    move-object/from16 v0, p2

    #@8b4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b7
    .line 659
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    #@8ba
    move-result-object v0

    #@8bb
    move-object/16 v342, v0

    #@8be
    .line 660
    .local v342, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c1
    .line 661
    const/4 v6, 0x0

    #@8c2
    move-object/from16 v0, v342

    #@8c4
    move-object/from16 v1, p3

    #@8c6
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    #@8c9
    .line 662
    const/4 v6, 0x1

    #@8ca
    return v6

    #@8cb
    .line 666
    .end local v342    # "size":Landroid/graphics/Point;
    :pswitch_26
    const-string/jumbo v6, "android.app.IActivityManager"

    #@8ce
    move-object/from16 v0, p2

    #@8d0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d3
    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d6
    move-result v0

    #@8d7
    move/16 v286, v0

    #@8da
    .line 668
    .local v286, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8dd
    move-result v103

    #@8de
    .line 669
    .local v103, "fl":I
    move-object/from16 v0, p0

    #@8e0
    move/from16 v1, v286

    #@8e2
    move/from16 v2, v103

    #@8e4
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    #@8e7
    move-result-object v0

    #@8e8
    move-object/16 v278, v0

    #@8eb
    .line 670
    .local v278, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ee
    .line 671
    move-object/from16 v0, v278

    #@8f0
    if-eqz v0, :cond_29

    #@8f2
    invoke-interface/range {v278 .. v278}, Ljava/util/List;->size()I

    #@8f5
    move-result v188

    #@8f6
    .line 672
    .restart local v188    # "N":I
    :goto_22
    move-object/from16 v0, p3

    #@8f8
    move/from16 v1, v188

    #@8fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8fd
    .line 674
    const/16 v250, 0x0

    #@8ff
    .restart local v250    # "i":I
    :goto_23
    move/from16 v0, v250

    #@901
    move/from16 v1, v188

    #@903
    if-ge v0, v1, :cond_2a

    #@905
    .line 675
    move-object/from16 v0, v278

    #@907
    move/from16 v1, v250

    #@909
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@90c
    move-result-object v0

    #@90d
    move-object/16 v259, v0

    #@910
    move-object/from16 v0, v259

    #@912
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    #@914
    move-object/16 v259, v0

    #@917
    .line 676
    .local v259, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    #@918
    move-object/from16 v0, v259

    #@91a
    move-object/from16 v1, p3

    #@91c
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@91f
    .line 674
    add-int/lit8 v250, v250, 0x1

    #@921
    goto :goto_23

    #@922
    .line 671
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v259    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_29
    const/16 v188, -0x1

    #@924
    goto :goto_22

    #@925
    .line 678
    .restart local v188    # "N":I
    .restart local v250    # "i":I
    :cond_2a
    const/4 v6, 0x1

    #@926
    return v6

    #@927
    .line 682
    .end local v103    # "fl":I
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v278    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v286    # "maxNum":I
    :pswitch_27
    const-string/jumbo v6, "android.app.IActivityManager"

    #@92a
    move-object/from16 v0, p2

    #@92c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92f
    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@932
    move-result v0

    #@933
    move/16 v286, v0

    #@936
    .line 684
    .restart local v286    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@939
    move-result v103

    #@93a
    .line 685
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@93d
    move-result v17

    #@93e
    .line 686
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@940
    move/from16 v1, v286

    #@942
    move/from16 v2, v103

    #@944
    move/from16 v3, v17

    #@946
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    #@949
    move-result-object v0

    #@94a
    move-object/16 v274, v0

    #@94d
    .line 688
    .local v274, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@950
    .line 689
    const/4 v6, 0x1

    #@951
    move-object/from16 v0, v274

    #@953
    move-object/from16 v1, p3

    #@955
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@958
    .line 690
    const/4 v6, 0x1

    #@959
    return v6

    #@95a
    .line 694
    .end local v17    # "userId":I
    .end local v103    # "fl":I
    .end local v274    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v286    # "maxNum":I
    :pswitch_28
    const-string/jumbo v6, "android.app.IActivityManager"

    #@95d
    move-object/from16 v0, p2

    #@95f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@962
    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@965
    move-result v94

    #@966
    .line 696
    .local v94, "id":I
    move-object/from16 v0, p0

    #@968
    move/from16 v1, v94

    #@96a
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    #@96d
    move-result-object v0

    #@96e
    move-object/16 v357, v0

    #@971
    .line 697
    .local v357, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@974
    .line 698
    move-object/from16 v0, v357

    #@976
    if-eqz v0, :cond_2b

    #@978
    .line 699
    const/4 v6, 0x1

    #@979
    move-object/from16 v0, p3

    #@97b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@97e
    .line 700
    const/4 v6, 0x1

    #@97f
    move-object/from16 v0, v357

    #@981
    move-object/from16 v1, p3

    #@983
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    #@986
    .line 704
    :goto_24
    const/4 v6, 0x1

    #@987
    return v6

    #@988
    .line 702
    :cond_2b
    const/4 v6, 0x0

    #@989
    move-object/from16 v0, p3

    #@98b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@98e
    goto :goto_24

    #@98f
    .line 708
    .end local v94    # "id":I
    .end local v357    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :pswitch_29
    const-string/jumbo v6, "android.app.IActivityManager"

    #@992
    move-object/from16 v0, p2

    #@994
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@997
    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@99a
    move-result v0

    #@99b
    move/16 v286, v0

    #@99e
    .line 710
    .restart local v286    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9a1
    move-result v103

    #@9a2
    .line 711
    .restart local v103    # "fl":I
    move-object/from16 v0, p0

    #@9a4
    move/from16 v1, v286

    #@9a6
    move/from16 v2, v103

    #@9a8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    #@9ab
    move-result-object v0

    #@9ac
    move-object/16 v277, v0

    #@9af
    .line 712
    .local v277, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9b2
    .line 713
    move-object/from16 v0, v277

    #@9b4
    if-eqz v0, :cond_2c

    #@9b6
    invoke-interface/range {v277 .. v277}, Ljava/util/List;->size()I

    #@9b9
    move-result v188

    #@9ba
    .line 714
    .restart local v188    # "N":I
    :goto_25
    move-object/from16 v0, p3

    #@9bc
    move/from16 v1, v188

    #@9be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9c1
    .line 716
    const/16 v250, 0x0

    #@9c3
    .restart local v250    # "i":I
    :goto_26
    move/from16 v0, v250

    #@9c5
    move/from16 v1, v188

    #@9c7
    if-ge v0, v1, :cond_2d

    #@9c9
    .line 717
    move-object/from16 v0, v277

    #@9cb
    move/from16 v1, v250

    #@9cd
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9d0
    move-result-object v0

    #@9d1
    move-object/16 v258, v0

    #@9d4
    move-object/from16 v0, v258

    #@9d6
    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    #@9d8
    move-object/16 v258, v0

    #@9db
    .line 718
    .local v258, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    #@9dc
    move-object/from16 v0, v258

    #@9de
    move-object/from16 v1, p3

    #@9e0
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@9e3
    .line 716
    add-int/lit8 v250, v250, 0x1

    #@9e5
    goto :goto_26

    #@9e6
    .line 713
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v258    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2c
    const/16 v188, -0x1

    #@9e8
    goto :goto_25

    #@9e9
    .line 720
    .restart local v188    # "N":I
    .restart local v250    # "i":I
    :cond_2d
    const/4 v6, 0x1

    #@9ea
    return v6

    #@9eb
    .line 724
    .end local v103    # "fl":I
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v277    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v286    # "maxNum":I
    :pswitch_2a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@9ee
    move-object/from16 v0, p2

    #@9f0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9f3
    .line 725
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    #@9f6
    move-result-object v0

    #@9f7
    move-object/16 v275, v0

    #@9fa
    .line 726
    .local v275, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9fd
    .line 727
    move-object/from16 v0, p3

    #@9ff
    move-object/from16 v1, v275

    #@a01
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a04
    .line 728
    const/4 v6, 0x1

    #@a05
    return v6

    #@a06
    .line 732
    .end local v275    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_2b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@a09
    move-object/from16 v0, p2

    #@a0b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a0e
    .line 733
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    #@a11
    move-result-object v0

    #@a12
    move-object/16 v276, v0

    #@a15
    .line 734
    .local v276, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a18
    .line 735
    move-object/from16 v0, p3

    #@a1a
    move-object/from16 v1, v276

    #@a1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a1f
    .line 736
    const/4 v6, 0x1

    #@a20
    return v6

    #@a21
    .line 740
    .end local v276    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_2c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@a24
    move-object/from16 v0, p2

    #@a26
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a29
    .line 741
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    #@a2c
    move-result-object v0

    #@a2d
    move-object/16 v281, v0

    #@a30
    .line 742
    .local v281, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a33
    .line 743
    move-object/from16 v0, p3

    #@a35
    move-object/from16 v1, v281

    #@a37
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a3a
    .line 744
    const/4 v6, 0x1

    #@a3b
    return v6

    #@a3c
    .line 748
    .end local v281    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_2d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@a3f
    move-object/from16 v0, p2

    #@a41
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a44
    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a47
    move-result v0

    #@a48
    move/16 v355, v0

    #@a4b
    .line 750
    .local v355, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a4e
    move-result v103

    #@a4f
    .line 751
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a52
    move-result v6

    #@a53
    if-eqz v6, :cond_2e

    #@a55
    .line 752
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a57
    move-object/from16 v0, p2

    #@a59
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a5c
    move-result-object v6

    #@a5d
    check-cast v6, Landroid/os/Bundle;

    #@a5f
    move-object/from16 v16, v6

    #@a61
    .line 753
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_27
    move-object/from16 v0, p0

    #@a63
    move/from16 v1, v355

    #@a65
    move/from16 v2, v103

    #@a67
    move-object/from16 v3, v16

    #@a69
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    #@a6c
    .line 754
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a6f
    .line 755
    const/4 v6, 0x1

    #@a70
    return v6

    #@a71
    .line 752
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_2e
    const/16 v16, 0x0

    #@a73
    goto :goto_27

    #@a74
    .line 759
    .end local v103    # "fl":I
    .end local v355    # "task":I
    :pswitch_2e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@a77
    move-object/from16 v0, p2

    #@a79
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a7c
    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a7f
    move-result-object v93

    #@a80
    .line 761
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a83
    move-result v6

    #@a84
    if-eqz v6, :cond_2f

    #@a86
    const/4 v0, 0x1

    #@a87
    move/16 v291, v0

    #@a8a
    .line 762
    .local v291, "nonRoot":Z
    :goto_28
    move-object/from16 v0, p0

    #@a8c
    move-object/from16 v1, v93

    #@a8e
    move/from16 v2, v291

    #@a90
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    #@a93
    move-result v0

    #@a94
    move/16 v327, v0

    #@a97
    .line 763
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a9a
    .line 764
    move/from16 v0, v327

    #@a9c
    if-eqz v0, :cond_30

    #@a9e
    const/4 v6, 0x1

    #@a9f
    :goto_29
    move-object/from16 v0, p3

    #@aa1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@aa4
    .line 765
    const/4 v6, 0x1

    #@aa5
    return v6

    #@aa6
    .line 761
    .end local v291    # "nonRoot":Z
    .end local v327    # "res":Z
    :cond_2f
    const/4 v0, 0x0

    #@aa7
    move/16 v291, v0

    #@aaa
    goto :goto_28

    #@aab
    .line 764
    .restart local v291    # "nonRoot":Z
    .restart local v327    # "res":Z
    :cond_30
    const/4 v6, 0x0

    #@aac
    goto :goto_29

    #@aad
    .line 769
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v291    # "nonRoot":Z
    .end local v327    # "res":Z
    :pswitch_2f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@ab0
    move-object/from16 v0, p2

    #@ab2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ab5
    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ab8
    move-result v0

    #@ab9
    move/16 v355, v0

    #@abc
    .line 771
    .restart local v355    # "task":I
    move-object/from16 v0, p0

    #@abe
    move/from16 v1, v355

    #@ac0
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    #@ac3
    .line 772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac6
    .line 773
    const/4 v6, 0x1

    #@ac7
    return v6

    #@ac8
    .line 777
    .end local v355    # "task":I
    :pswitch_30
    const-string/jumbo v6, "android.app.IActivityManager"

    #@acb
    move-object/from16 v0, p2

    #@acd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ad0
    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad3
    move-result v69

    #@ad4
    .line 779
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad7
    move-result v76

    #@ad8
    .line 780
    .local v76, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@adb
    move-result v6

    #@adc
    if-eqz v6, :cond_31

    #@ade
    const/16 v71, 0x1

    #@ae0
    .line 781
    .local v71, "toTop":Z
    :goto_2a
    move-object/from16 v0, p0

    #@ae2
    move/from16 v1, v69

    #@ae4
    move/from16 v2, v76

    #@ae6
    move/from16 v3, v71

    #@ae8
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    #@aeb
    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@aee
    .line 783
    const/4 v6, 0x1

    #@aef
    return v6

    #@af0
    .line 780
    .end local v71    # "toTop":Z
    :cond_31
    const/16 v71, 0x0

    #@af2
    goto :goto_2a

    #@af3
    .line 787
    .end local v69    # "taskId":I
    .end local v76    # "stackId":I
    :pswitch_31
    const-string/jumbo v6, "android.app.IActivityManager"

    #@af6
    move-object/from16 v0, p2

    #@af8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@afb
    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@afe
    move-result v69

    #@aff
    .line 789
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b02
    move-result v70

    #@b03
    .line 790
    .local v70, "createMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b06
    move-result v6

    #@b07
    if-eqz v6, :cond_33

    #@b09
    const/16 v71, 0x1

    #@b0b
    .line 791
    .local v71, "toTop":Z
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b0e
    move-result v6

    #@b0f
    if-eqz v6, :cond_34

    #@b11
    const/16 v72, 0x1

    #@b13
    .line 792
    .local v72, "animate":Z
    :goto_2c
    const/16 v73, 0x0

    #@b15
    .line 793
    .local v73, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b18
    move-result v6

    #@b19
    if-eqz v6, :cond_35

    #@b1b
    const/16 v241, 0x1

    #@b1d
    .line 794
    .local v241, "hasBounds":Z
    :goto_2d
    if-eqz v241, :cond_32

    #@b1f
    .line 795
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b21
    move-object/from16 v0, p2

    #@b23
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b26
    move-result-object v73

    #@b27
    .end local v73    # "bounds":Landroid/graphics/Rect;
    check-cast v73, Landroid/graphics/Rect;

    #@b29
    .line 797
    :cond_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b2c
    move-result v6

    #@b2d
    if-eqz v6, :cond_36

    #@b2f
    const/16 v74, 0x1

    #@b31
    .local v74, "moveHomeStackFront":Z
    :goto_2e
    move-object/from16 v68, p0

    #@b33
    .line 798
    invoke-virtual/range {v68 .. v74}, Landroid/app/ActivityManagerNative;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z

    #@b36
    move-result v0

    #@b37
    move/16 v327, v0

    #@b3a
    .line 800
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b3d
    .line 801
    move/from16 v0, v327

    #@b3f
    if-eqz v0, :cond_37

    #@b41
    const/4 v6, 0x1

    #@b42
    :goto_2f
    move-object/from16 v0, p3

    #@b44
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b47
    .line 802
    const/4 v6, 0x1

    #@b48
    return v6

    #@b49
    .line 790
    .end local v71    # "toTop":Z
    .end local v72    # "animate":Z
    .end local v74    # "moveHomeStackFront":Z
    .end local v241    # "hasBounds":Z
    .end local v327    # "res":Z
    :cond_33
    const/16 v71, 0x0

    #@b4b
    .restart local v71    # "toTop":Z
    goto :goto_2b

    #@b4c
    .line 791
    :cond_34
    const/16 v72, 0x0

    #@b4e
    .restart local v72    # "animate":Z
    goto :goto_2c

    #@b4f
    .line 793
    .restart local v73    # "bounds":Landroid/graphics/Rect;
    :cond_35
    const/16 v241, 0x0

    #@b51
    goto :goto_2d

    #@b52
    .line 797
    .end local v73    # "bounds":Landroid/graphics/Rect;
    .restart local v241    # "hasBounds":Z
    :cond_36
    const/16 v74, 0x0

    #@b54
    goto :goto_2e

    #@b55
    .line 801
    .restart local v74    # "moveHomeStackFront":Z
    .restart local v327    # "res":Z
    :cond_37
    const/4 v6, 0x0

    #@b56
    goto :goto_2f

    #@b57
    .line 806
    .end local v69    # "taskId":I
    .end local v70    # "createMode":I
    .end local v71    # "toTop":Z
    .end local v72    # "animate":Z
    .end local v74    # "moveHomeStackFront":Z
    .end local v241    # "hasBounds":Z
    .end local v327    # "res":Z
    :pswitch_32
    const-string/jumbo v6, "android.app.IActivityManager"

    #@b5a
    move-object/from16 v0, p2

    #@b5c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5f
    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b62
    move-result v76

    #@b63
    .line 808
    .restart local v76    # "stackId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b65
    move-object/from16 v0, p2

    #@b67
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b6a
    move-result-object v77

    #@b6b
    check-cast v77, Landroid/graphics/Rect;

    #@b6d
    .line 809
    .local v77, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@b6f
    move/from16 v1, v76

    #@b71
    move-object/from16 v2, v77

    #@b73
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    #@b76
    move-result v0

    #@b77
    move/16 v327, v0

    #@b7a
    .line 810
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b7d
    .line 811
    move/from16 v0, v327

    #@b7f
    if-eqz v0, :cond_38

    #@b81
    const/4 v6, 0x1

    #@b82
    :goto_30
    move-object/from16 v0, p3

    #@b84
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b87
    .line 812
    const/4 v6, 0x1

    #@b88
    return v6

    #@b89
    .line 811
    :cond_38
    const/4 v6, 0x0

    #@b8a
    goto :goto_30

    #@b8b
    .line 816
    .end local v76    # "stackId":I
    .end local v77    # "r":Landroid/graphics/Rect;
    .end local v327    # "res":Z
    :pswitch_33
    const-string/jumbo v6, "android.app.IActivityManager"

    #@b8e
    move-object/from16 v0, p2

    #@b90
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b93
    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b96
    move-result v76

    #@b97
    .line 818
    .restart local v76    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b9a
    move-result v6

    #@b9b
    if-eqz v6, :cond_3a

    #@b9d
    const/16 v242, 0x1

    #@b9f
    .line 819
    .local v242, "hasRect":Z
    :goto_31
    const/16 v77, 0x0

    #@ba1
    .line 820
    .local v77, "r":Landroid/graphics/Rect;
    if-eqz v242, :cond_39

    #@ba3
    .line 821
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ba5
    move-object/from16 v0, p2

    #@ba7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@baa
    move-result-object v77

    #@bab
    .end local v77    # "r":Landroid/graphics/Rect;
    check-cast v77, Landroid/graphics/Rect;

    #@bad
    .line 823
    :cond_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bb0
    move-result v6

    #@bb1
    const/16 v18, 0x1

    #@bb3
    move/from16 v0, v18

    #@bb5
    if-ne v6, v0, :cond_3b

    #@bb7
    const/16 v78, 0x1

    #@bb9
    .line 824
    .local v78, "allowResizeInDockedMode":Z
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bbc
    move-result v6

    #@bbd
    const/16 v18, 0x1

    #@bbf
    move/from16 v0, v18

    #@bc1
    if-ne v6, v0, :cond_3c

    #@bc3
    const/16 v79, 0x1

    #@bc5
    .line 825
    .local v79, "preserveWindows":Z
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bc8
    move-result v6

    #@bc9
    const/16 v18, 0x1

    #@bcb
    move/from16 v0, v18

    #@bcd
    if-ne v6, v0, :cond_3d

    #@bcf
    const/16 v72, 0x1

    #@bd1
    .line 826
    .restart local v72    # "animate":Z
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bd4
    move-result v81

    #@bd5
    .local v81, "animationDuration":I
    move-object/from16 v75, p0

    #@bd7
    move/from16 v80, v72

    #@bd9
    .line 827
    invoke-virtual/range {v75 .. v81}, Landroid/app/ActivityManagerNative;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    #@bdc
    .line 829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bdf
    .line 830
    const/4 v6, 0x1

    #@be0
    return v6

    #@be1
    .line 818
    .end local v72    # "animate":Z
    .end local v78    # "allowResizeInDockedMode":Z
    .end local v79    # "preserveWindows":Z
    .end local v81    # "animationDuration":I
    .end local v242    # "hasRect":Z
    :cond_3a
    const/16 v242, 0x0

    #@be3
    goto :goto_31

    #@be4
    .line 823
    .restart local v242    # "hasRect":Z
    :cond_3b
    const/16 v78, 0x0

    #@be6
    .restart local v78    # "allowResizeInDockedMode":Z
    goto :goto_32

    #@be7
    .line 824
    :cond_3c
    const/16 v79, 0x0

    #@be9
    .restart local v79    # "preserveWindows":Z
    goto :goto_33

    #@bea
    .line 825
    :cond_3d
    const/16 v72, 0x0

    #@bec
    .restart local v72    # "animate":Z
    goto :goto_34

    #@bed
    .line 833
    .end local v72    # "animate":Z
    .end local v76    # "stackId":I
    .end local v78    # "allowResizeInDockedMode":Z
    .end local v79    # "preserveWindows":Z
    .end local v242    # "hasRect":Z
    :pswitch_34
    const-string/jumbo v6, "android.app.IActivityManager"

    #@bf0
    move-object/from16 v0, p2

    #@bf2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bf5
    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bf8
    move-result v6

    #@bf9
    if-eqz v6, :cond_40

    #@bfb
    const/16 v241, 0x1

    #@bfd
    .line 835
    .restart local v241    # "hasBounds":Z
    :goto_35
    const/16 v73, 0x0

    #@bff
    .line 836
    .restart local v73    # "bounds":Landroid/graphics/Rect;
    if-eqz v241, :cond_3e

    #@c01
    .line 837
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c03
    move-object/from16 v0, p2

    #@c05
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c08
    move-result-object v73

    #@c09
    .end local v73    # "bounds":Landroid/graphics/Rect;
    check-cast v73, Landroid/graphics/Rect;

    #@c0b
    .line 839
    :cond_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c0e
    move-result v6

    #@c0f
    if-eqz v6, :cond_41

    #@c11
    const/16 v247, 0x1

    #@c13
    .line 840
    .local v247, "hasTempPinnedTaskBounds":Z
    :goto_36
    const/4 v0, 0x0

    #@c14
    move-object/16 v358, v0

    #@c17
    .line 841
    .local v358, "tempPinnedTaskBounds":Landroid/graphics/Rect;
    if-eqz v247, :cond_3f

    #@c19
    .line 842
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c1b
    move-object/from16 v0, p2

    #@c1d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c20
    move-result-object v0

    #@c21
    move-object/16 v358, v0

    #@c24
    .end local v358    # "tempPinnedTaskBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v358

    #@c26
    check-cast v0, Landroid/graphics/Rect;

    #@c28
    move-object/16 v358, v0

    #@c2b
    .line 844
    :cond_3f
    move-object/from16 v0, p0

    #@c2d
    move-object/from16 v1, v73

    #@c2f
    move-object/from16 v2, v358

    #@c31
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@c34
    .line 845
    const/4 v6, 0x1

    #@c35
    return v6

    #@c36
    .line 834
    .end local v241    # "hasBounds":Z
    .end local v247    # "hasTempPinnedTaskBounds":Z
    :cond_40
    const/16 v241, 0x0

    #@c38
    goto :goto_35

    #@c39
    .line 839
    .restart local v241    # "hasBounds":Z
    :cond_41
    const/16 v247, 0x0

    #@c3b
    goto :goto_36

    #@c3c
    .line 848
    .end local v241    # "hasBounds":Z
    :pswitch_35
    const-string/jumbo v6, "android.app.IActivityManager"

    #@c3f
    move-object/from16 v0, p2

    #@c41
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c44
    .line 849
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->swapDockedAndFullscreenStack()V

    #@c47
    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c4a
    .line 851
    const/4 v6, 0x1

    #@c4b
    return v6

    #@c4c
    .line 854
    :pswitch_36
    const-string/jumbo v6, "android.app.IActivityManager"

    #@c4f
    move-object/from16 v0, p2

    #@c51
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c54
    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c57
    move-result v6

    #@c58
    if-eqz v6, :cond_47

    #@c5a
    const/16 v241, 0x1

    #@c5c
    .line 856
    .restart local v241    # "hasBounds":Z
    :goto_37
    const/16 v73, 0x0

    #@c5e
    .line 857
    .restart local v73    # "bounds":Landroid/graphics/Rect;
    if-eqz v241, :cond_42

    #@c60
    .line 858
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c62
    move-object/from16 v0, p2

    #@c64
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c67
    move-result-object v73

    #@c68
    .end local v73    # "bounds":Landroid/graphics/Rect;
    check-cast v73, Landroid/graphics/Rect;

    #@c6a
    .line 860
    :cond_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c6d
    move-result v6

    #@c6e
    if-eqz v6, :cond_48

    #@c70
    const/16 v243, 0x1

    #@c72
    .line 861
    .local v243, "hasTempDockedTaskBounds":Z
    :goto_38
    const/16 v84, 0x0

    #@c74
    .line 862
    .local v84, "tempDockedTaskBounds":Landroid/graphics/Rect;
    if-eqz v243, :cond_43

    #@c76
    .line 863
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c78
    move-object/from16 v0, p2

    #@c7a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c7d
    move-result-object v84

    #@c7e
    .end local v84    # "tempDockedTaskBounds":Landroid/graphics/Rect;
    check-cast v84, Landroid/graphics/Rect;

    #@c80
    .line 865
    :cond_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c83
    move-result v6

    #@c84
    if-eqz v6, :cond_49

    #@c86
    const/16 v244, 0x1

    #@c88
    .line 866
    .local v244, "hasTempDockedTaskInsetBounds":Z
    :goto_39
    const/16 v85, 0x0

    #@c8a
    .line 867
    .local v85, "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    if-eqz v244, :cond_44

    #@c8c
    .line 868
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c8e
    move-object/from16 v0, p2

    #@c90
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c93
    move-result-object v85

    #@c94
    .end local v85    # "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    check-cast v85, Landroid/graphics/Rect;

    #@c96
    .line 870
    :cond_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c99
    move-result v6

    #@c9a
    if-eqz v6, :cond_4a

    #@c9c
    const/16 v245, 0x1

    #@c9e
    .line 871
    .local v245, "hasTempOtherTaskBounds":Z
    :goto_3a
    const/16 v86, 0x0

    #@ca0
    .line 872
    .local v86, "tempOtherTaskBounds":Landroid/graphics/Rect;
    if-eqz v245, :cond_45

    #@ca2
    .line 873
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ca4
    move-object/from16 v0, p2

    #@ca6
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ca9
    move-result-object v86

    #@caa
    .end local v86    # "tempOtherTaskBounds":Landroid/graphics/Rect;
    check-cast v86, Landroid/graphics/Rect;

    #@cac
    .line 875
    :cond_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@caf
    move-result v6

    #@cb0
    if-eqz v6, :cond_4b

    #@cb2
    const/16 v246, 0x1

    #@cb4
    .line 876
    .local v246, "hasTempOtherTaskInsetBounds":Z
    :goto_3b
    const/16 v87, 0x0

    #@cb6
    .line 877
    .local v87, "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    if-eqz v246, :cond_46

    #@cb8
    .line 878
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cba
    move-object/from16 v0, p2

    #@cbc
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cbf
    move-result-object v87

    #@cc0
    .end local v87    # "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    check-cast v87, Landroid/graphics/Rect;

    #@cc2
    :cond_46
    move-object/from16 v82, p0

    #@cc4
    move-object/from16 v83, v73

    #@cc6
    .line 880
    invoke-virtual/range {v82 .. v87}, Landroid/app/ActivityManagerNative;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@cc9
    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ccc
    .line 883
    const/4 v6, 0x1

    #@ccd
    return v6

    #@cce
    .line 855
    .end local v241    # "hasBounds":Z
    .end local v243    # "hasTempDockedTaskBounds":Z
    .end local v244    # "hasTempDockedTaskInsetBounds":Z
    .end local v245    # "hasTempOtherTaskBounds":Z
    .end local v246    # "hasTempOtherTaskInsetBounds":Z
    :cond_47
    const/16 v241, 0x0

    #@cd0
    goto :goto_37

    #@cd1
    .line 860
    .restart local v241    # "hasBounds":Z
    :cond_48
    const/16 v243, 0x0

    #@cd3
    goto :goto_38

    #@cd4
    .line 865
    .restart local v243    # "hasTempDockedTaskBounds":Z
    :cond_49
    const/16 v244, 0x0

    #@cd6
    goto :goto_39

    #@cd7
    .line 870
    .restart local v244    # "hasTempDockedTaskInsetBounds":Z
    :cond_4a
    const/16 v245, 0x0

    #@cd9
    goto :goto_3a

    #@cda
    .line 875
    .restart local v245    # "hasTempOtherTaskBounds":Z
    :cond_4b
    const/16 v246, 0x0

    #@cdc
    goto :goto_3b

    #@cdd
    .line 887
    .end local v241    # "hasBounds":Z
    .end local v243    # "hasTempDockedTaskBounds":Z
    .end local v244    # "hasTempDockedTaskInsetBounds":Z
    .end local v245    # "hasTempOtherTaskBounds":Z
    :pswitch_37
    const-string/jumbo v6, "android.app.IActivityManager"

    #@ce0
    move-object/from16 v0, p2

    #@ce2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ce5
    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ce8
    move-result v69

    #@ce9
    .line 889
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cec
    move-result v76

    #@ced
    .line 890
    .restart local v76    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cf0
    move-result v0

    #@cf1
    move/16 v312, v0

    #@cf4
    .line 891
    .local v312, "position":I
    move-object/from16 v0, p0

    #@cf6
    move/from16 v1, v69

    #@cf8
    move/from16 v2, v76

    #@cfa
    move/from16 v3, v312

    #@cfc
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->positionTaskInStack(III)V

    #@cff
    .line 892
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d02
    .line 893
    const/4 v6, 0x1

    #@d03
    return v6

    #@d04
    .line 897
    .end local v69    # "taskId":I
    .end local v76    # "stackId":I
    .end local v312    # "position":I
    :pswitch_38
    const-string/jumbo v6, "android.app.IActivityManager"

    #@d07
    move-object/from16 v0, p2

    #@d09
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d0c
    .line 898
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAllStackInfos()Ljava/util/List;

    #@d0f
    move-result-object v0

    #@d10
    move-object/16 v279, v0

    #@d13
    .line 899
    .local v279, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d16
    .line 900
    move-object/from16 v0, p3

    #@d18
    move-object/from16 v1, v279

    #@d1a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d1d
    .line 901
    const/4 v6, 0x1

    #@d1e
    return v6

    #@d1f
    .line 905
    .end local v279    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :pswitch_39
    const-string/jumbo v6, "android.app.IActivityManager"

    #@d22
    move-object/from16 v0, p2

    #@d24
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d27
    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d2a
    move-result v76

    #@d2b
    .line 907
    .restart local v76    # "stackId":I
    move-object/from16 v0, p0

    #@d2d
    move/from16 v1, v76

    #@d2f
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    #@d32
    move-result-object v0

    #@d33
    move-object/16 v260, v0

    #@d36
    .line 908
    .local v260, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d39
    .line 909
    move-object/from16 v0, v260

    #@d3b
    if-eqz v0, :cond_4c

    #@d3d
    .line 910
    const/4 v6, 0x1

    #@d3e
    move-object/from16 v0, p3

    #@d40
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@d43
    .line 911
    const/4 v6, 0x0

    #@d44
    move-object/from16 v0, v260

    #@d46
    move-object/from16 v1, p3

    #@d48
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@d4b
    .line 915
    :goto_3c
    const/4 v6, 0x1

    #@d4c
    return v6

    #@d4d
    .line 913
    :cond_4c
    const/4 v6, 0x0

    #@d4e
    move-object/from16 v0, p3

    #@d50
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@d53
    goto :goto_3c

    #@d54
    .line 919
    .end local v76    # "stackId":I
    .end local v260    # "info":Landroid/app/ActivityManager$StackInfo;
    :pswitch_3a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@d57
    move-object/from16 v0, p2

    #@d59
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d5c
    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d5f
    move-result v69

    #@d60
    .line 921
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    #@d62
    move/from16 v1, v69

    #@d64
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInHomeStack(I)Z

    #@d67
    move-result v0

    #@d68
    move/16 v267, v0

    #@d6b
    .line 922
    .local v267, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d6e
    .line 923
    move/from16 v0, v267

    #@d70
    if-eqz v0, :cond_4d

    #@d72
    const/4 v6, 0x1

    #@d73
    :goto_3d
    move-object/from16 v0, p3

    #@d75
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@d78
    .line 924
    const/4 v6, 0x1

    #@d79
    return v6

    #@d7a
    .line 923
    :cond_4d
    const/4 v6, 0x0

    #@d7b
    goto :goto_3d

    #@d7c
    .line 928
    .end local v69    # "taskId":I
    .end local v267    # "isInHomeStack":Z
    :pswitch_3b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@d7f
    move-object/from16 v0, p2

    #@d81
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d84
    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d87
    move-result v76

    #@d88
    .line 930
    .restart local v76    # "stackId":I
    move-object/from16 v0, p0

    #@d8a
    move/from16 v1, v76

    #@d8c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    #@d8f
    .line 931
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d92
    .line 932
    const/4 v6, 0x1

    #@d93
    return v6

    #@d94
    .line 936
    .end local v76    # "stackId":I
    :pswitch_3c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@d97
    move-object/from16 v0, p2

    #@d99
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d9c
    .line 937
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFocusedStackId()I

    #@d9f
    move-result v239

    #@da0
    .line 938
    .local v239, "focusedStackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@da3
    .line 939
    move-object/from16 v0, p3

    #@da5
    move/from16 v1, v239

    #@da7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@daa
    .line 940
    const/4 v6, 0x1

    #@dab
    return v6

    #@dac
    .line 944
    .end local v239    # "focusedStackId":I
    :pswitch_3d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@daf
    move-object/from16 v0, p2

    #@db1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@db4
    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@db7
    move-result v69

    #@db8
    .line 946
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    #@dba
    move/from16 v1, v69

    #@dbc
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedTask(I)V

    #@dbf
    .line 947
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dc2
    .line 948
    const/4 v6, 0x1

    #@dc3
    return v6

    #@dc4
    .line 952
    .end local v69    # "taskId":I
    :pswitch_3e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@dc7
    move-object/from16 v0, p2

    #@dc9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dcc
    .line 953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@dcf
    move-result-object v93

    #@dd0
    .line 954
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-static/range {v93 .. v93}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    #@dd3
    move-result-object v6

    #@dd4
    move-object/from16 v0, p0

    #@dd6
    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    #@dd9
    .line 955
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ddc
    .line 956
    const/4 v6, 0x1

    #@ddd
    return v6

    #@dde
    .line 960
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_3f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@de1
    move-object/from16 v0, p2

    #@de3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@de6
    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@de9
    move-result-object v93

    #@dea
    .line 962
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ded
    move-result v6

    #@dee
    if-eqz v6, :cond_4e

    #@df0
    const/4 v0, 0x1

    #@df1
    move/16 v298, v0

    #@df4
    .line 963
    .local v298, "onlyRoot":Z
    :goto_3e
    if-eqz v93, :cond_4f

    #@df6
    .line 964
    move-object/from16 v0, p0

    #@df8
    move-object/from16 v1, v93

    #@dfa
    move/from16 v2, v298

    #@dfc
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    #@dff
    move-result v0

    #@e00
    move/16 v321, v0

    #@e03
    .line 965
    .restart local v321    # "res":I
    :goto_3f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e06
    .line 966
    move-object/from16 v0, p3

    #@e08
    move/from16 v1, v321

    #@e0a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e0d
    .line 967
    const/4 v6, 0x1

    #@e0e
    return v6

    #@e0f
    .line 962
    .end local v298    # "onlyRoot":Z
    .end local v321    # "res":I
    :cond_4e
    const/4 v0, 0x0

    #@e10
    move/16 v298, v0

    #@e13
    .restart local v298    # "onlyRoot":Z
    goto :goto_3e

    #@e14
    .line 964
    :cond_4f
    const/4 v0, -0x1

    #@e15
    move/16 v321, v0

    #@e18
    .restart local v321    # "res":I
    goto :goto_3f

    #@e19
    .line 971
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v298    # "onlyRoot":Z
    .end local v321    # "res":I
    :pswitch_40
    const-string/jumbo v6, "android.app.IActivityManager"

    #@e1c
    move-object/from16 v0, p2

    #@e1e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e21
    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e24
    move-result-object v213

    #@e25
    .line 973
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@e28
    move-result-object v7

    #@e29
    .line 974
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e2c
    move-result-object v127

    #@e2d
    .line 975
    .local v127, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e30
    move-result v17

    #@e31
    .line 976
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e34
    move-result v6

    #@e35
    if-eqz v6, :cond_50

    #@e37
    const/4 v0, 0x1

    #@e38
    move/16 v347, v0

    #@e3b
    .line 977
    .local v347, "stable":Z
    :goto_40
    move-object/from16 v0, p0

    #@e3d
    move-object/from16 v1, v127

    #@e3f
    move/from16 v2, v17

    #@e41
    move/from16 v3, v347

    #@e43
    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    #@e46
    move-result-object v226

    #@e47
    .line 978
    .local v226, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e4a
    .line 979
    if-eqz v226, :cond_51

    #@e4c
    .line 980
    const/4 v6, 0x1

    #@e4d
    move-object/from16 v0, p3

    #@e4f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@e52
    .line 981
    const/4 v6, 0x0

    #@e53
    move-object/from16 v0, v226

    #@e55
    move-object/from16 v1, p3

    #@e57
    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@e5a
    .line 985
    :goto_41
    const/4 v6, 0x1

    #@e5b
    return v6

    #@e5c
    .line 976
    .end local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v347    # "stable":Z
    :cond_50
    const/4 v0, 0x0

    #@e5d
    move/16 v347, v0

    #@e60
    goto :goto_40

    #@e61
    .line 983
    .restart local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v347    # "stable":Z
    :cond_51
    const/4 v6, 0x0

    #@e62
    move-object/from16 v0, p3

    #@e64
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@e67
    goto :goto_41

    #@e68
    .line 989
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v127    # "name":Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v347    # "stable":Z
    :pswitch_41
    const-string/jumbo v6, "android.app.IActivityManager"

    #@e6b
    move-object/from16 v0, p2

    #@e6d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e70
    .line 990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e73
    move-result-object v127

    #@e74
    .line 991
    .restart local v127    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e77
    move-result v17

    #@e78
    .line 992
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e7b
    move-result-object v93

    #@e7c
    .line 993
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@e7e
    move-object/from16 v1, v127

    #@e80
    move/from16 v2, v17

    #@e82
    move-object/from16 v3, v93

    #@e84
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    #@e87
    move-result-object v226

    #@e88
    .line 994
    .restart local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e8b
    .line 995
    if-eqz v226, :cond_52

    #@e8d
    .line 996
    const/4 v6, 0x1

    #@e8e
    move-object/from16 v0, p3

    #@e90
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@e93
    .line 997
    const/4 v6, 0x0

    #@e94
    move-object/from16 v0, v226

    #@e96
    move-object/from16 v1, p3

    #@e98
    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@e9b
    .line 1001
    :goto_42
    const/4 v6, 0x1

    #@e9c
    return v6

    #@e9d
    .line 999
    :cond_52
    const/4 v6, 0x0

    #@e9e
    move-object/from16 v0, p3

    #@ea0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@ea3
    goto :goto_42

    #@ea4
    .line 1005
    .end local v17    # "userId":I
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v127    # "name":Ljava/lang/String;
    .end local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :pswitch_42
    const-string/jumbo v6, "android.app.IActivityManager"

    #@ea7
    move-object/from16 v0, p2

    #@ea9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@eac
    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@eaf
    move-result-object v213

    #@eb0
    .line 1007
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@eb3
    move-result-object v7

    #@eb4
    .line 1009
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    #@eb6
    move-object/from16 v0, p2

    #@eb8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@ebb
    move-result-object v0

    #@ebc
    move-object/16 v315, v0

    #@ebf
    .line 1010
    .local v315, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    #@ec1
    move-object/from16 v1, v315

    #@ec3
    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    #@ec6
    .line 1011
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ec9
    .line 1012
    const/4 v6, 0x1

    #@eca
    return v6

    #@ecb
    .line 1016
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v315    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_43
    const-string/jumbo v6, "android.app.IActivityManager"

    #@ece
    move-object/from16 v0, p2

    #@ed0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ed3
    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ed6
    move-result-object v213

    #@ed7
    .line 1018
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@eda
    move-result v0

    #@edb
    move/16 v346, v0

    #@ede
    .line 1019
    .local v346, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ee1
    move-result v0

    #@ee2
    move/16 v363, v0

    #@ee5
    .line 1020
    .local v363, "unstable":I
    move-object/from16 v0, p0

    #@ee7
    move-object/from16 v1, v213

    #@ee9
    move/from16 v2, v346

    #@eeb
    move/from16 v3, v363

    #@eed
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    #@ef0
    move-result v0

    #@ef1
    move/16 v327, v0

    #@ef4
    .line 1021
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ef7
    .line 1022
    move/from16 v0, v327

    #@ef9
    if-eqz v0, :cond_53

    #@efb
    const/4 v6, 0x1

    #@efc
    :goto_43
    move-object/from16 v0, p3

    #@efe
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@f01
    .line 1023
    const/4 v6, 0x1

    #@f02
    return v6

    #@f03
    .line 1022
    :cond_53
    const/4 v6, 0x0

    #@f04
    goto :goto_43

    #@f05
    .line 1027
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v327    # "res":Z
    .end local v346    # "stable":I
    .end local v363    # "unstable":I
    :pswitch_44
    const-string/jumbo v6, "android.app.IActivityManager"

    #@f08
    move-object/from16 v0, p2

    #@f0a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f0d
    .line 1028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f10
    move-result-object v213

    #@f11
    .line 1029
    .restart local v213    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@f13
    move-object/from16 v1, v213

    #@f15
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    #@f18
    .line 1030
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f1b
    .line 1031
    const/4 v6, 0x1

    #@f1c
    return v6

    #@f1d
    .line 1035
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_45
    const-string/jumbo v6, "android.app.IActivityManager"

    #@f20
    move-object/from16 v0, p2

    #@f22
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f25
    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f28
    move-result-object v213

    #@f29
    .line 1037
    .restart local v213    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@f2b
    move-object/from16 v1, v213

    #@f2d
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    #@f30
    .line 1038
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f33
    .line 1039
    const/4 v6, 0x1

    #@f34
    return v6

    #@f35
    .line 1043
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_46
    const-string/jumbo v6, "android.app.IActivityManager"

    #@f38
    move-object/from16 v0, p2

    #@f3a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f3d
    .line 1044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f40
    move-result-object v213

    #@f41
    .line 1045
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f44
    move-result v6

    #@f45
    if-eqz v6, :cond_54

    #@f47
    const/4 v0, 0x1

    #@f48
    move/16 v347, v0

    #@f4b
    .line 1046
    .restart local v347    # "stable":Z
    :goto_44
    move-object/from16 v0, p0

    #@f4d
    move-object/from16 v1, v213

    #@f4f
    move/from16 v2, v347

    #@f51
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    #@f54
    .line 1047
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f57
    .line 1048
    const/4 v6, 0x1

    #@f58
    return v6

    #@f59
    .line 1045
    .end local v347    # "stable":Z
    :cond_54
    const/4 v0, 0x0

    #@f5a
    move/16 v347, v0

    #@f5d
    goto :goto_44

    #@f5e
    .line 1052
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_47
    const-string/jumbo v6, "android.app.IActivityManager"

    #@f61
    move-object/from16 v0, p2

    #@f63
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f66
    .line 1053
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f69
    move-result-object v127

    #@f6a
    .line 1054
    .restart local v127    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f6d
    move-result-object v93

    #@f6e
    .line 1055
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@f70
    move-object/from16 v1, v127

    #@f72
    move-object/from16 v2, v93

    #@f74
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    #@f77
    .line 1056
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f7a
    .line 1057
    const/4 v6, 0x1

    #@f7b
    return v6

    #@f7c
    .line 1061
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v127    # "name":Ljava/lang/String;
    :pswitch_48
    const-string/jumbo v6, "android.app.IActivityManager"

    #@f7f
    move-object/from16 v0, p2

    #@f81
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f84
    .line 1062
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f86
    move-object/from16 v0, p2

    #@f88
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f8b
    move-result-object v223

    #@f8c
    check-cast v223, Landroid/content/ComponentName;

    #@f8e
    .line 1063
    .local v223, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@f90
    move-object/from16 v1, v223

    #@f92
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    #@f95
    move-result-object v0

    #@f96
    move-object/16 v308, v0

    #@f99
    .line 1064
    .local v308, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f9c
    .line 1065
    move-object/from16 v0, v308

    #@f9e
    move-object/from16 v1, p3

    #@fa0
    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    #@fa3
    .line 1066
    const/4 v6, 0x1

    #@fa4
    return v6

    #@fa5
    .line 1070
    .end local v223    # "comp":Landroid/content/ComponentName;
    .end local v308    # "pi":Landroid/app/PendingIntent;
    :pswitch_49
    const-string/jumbo v6, "android.app.IActivityManager"

    #@fa8
    move-object/from16 v0, p2

    #@faa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fad
    .line 1071
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@fb0
    move-result-object v213

    #@fb1
    .line 1072
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@fb4
    move-result-object v7

    #@fb5
    .line 1073
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fb7
    move-object/from16 v0, p2

    #@fb9
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fbc
    move-result-object v90

    #@fbd
    check-cast v90, Landroid/content/Intent;

    #@fbf
    .line 1074
    .local v90, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fc2
    move-result-object v10

    #@fc3
    .line 1075
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fc6
    move-result-object v8

    #@fc7
    .line 1076
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fca
    move-result v17

    #@fcb
    .restart local v17    # "userId":I
    move-object/from16 v88, p0

    #@fcd
    move-object/from16 v89, v7

    #@fcf
    move-object/from16 v91, v10

    #@fd1
    move-object/from16 v92, v8

    #@fd3
    move/from16 v93, v17

    #@fd5
    .line 1077
    invoke-virtual/range {v88 .. v93}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    #@fd8
    move-result-object v222

    #@fd9
    .line 1078
    .restart local v222    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fdc
    .line 1079
    move-object/from16 v0, v222

    #@fde
    move-object/from16 v1, p3

    #@fe0
    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@fe3
    .line 1080
    const/4 v6, 0x1

    #@fe4
    return v6

    #@fe5
    .line 1084
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v90    # "service":Landroid/content/Intent;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v222    # "cn":Landroid/content/ComponentName;
    :pswitch_4a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@fe8
    move-object/from16 v0, p2

    #@fea
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fed
    .line 1085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ff0
    move-result-object v213

    #@ff1
    .line 1086
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@ff4
    move-result-object v7

    #@ff5
    .line 1087
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ff7
    move-object/from16 v0, p2

    #@ff9
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ffc
    move-result-object v90

    #@ffd
    check-cast v90, Landroid/content/Intent;

    #@fff
    .line 1088
    .restart local v90    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1002
    move-result-object v10

    #@1003
    .line 1089
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1006
    move-result v17

    #@1007
    .line 1090
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1009
    move-object/from16 v1, v90

    #@100b
    move/from16 v2, v17

    #@100d
    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    #@1010
    move-result v0

    #@1011
    move/16 v321, v0

    #@1014
    .line 1091
    .restart local v321    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1017
    .line 1092
    move-object/from16 v0, p3

    #@1019
    move/from16 v1, v321

    #@101b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@101e
    .line 1093
    const/4 v6, 0x1

    #@101f
    return v6

    #@1020
    .line 1097
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v90    # "service":Landroid/content/Intent;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v321    # "res":I
    :pswitch_4b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1023
    move-object/from16 v0, p2

    #@1025
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1028
    .line 1098
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@102b
    move-result-object v92

    #@102c
    .line 1099
    .local v92, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@102f
    move-result-object v93

    #@1030
    .line 1100
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1033
    move-result v0

    #@1034
    move/16 v348, v0

    #@1037
    .line 1101
    .local v348, "startId":I
    move-object/from16 v0, p0

    #@1039
    move-object/from16 v1, v92

    #@103b
    move-object/from16 v2, v93

    #@103d
    move/from16 v3, v348

    #@103f
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    #@1042
    move-result v0

    #@1043
    move/16 v327, v0

    #@1046
    .line 1102
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1049
    .line 1103
    move/from16 v0, v327

    #@104b
    if-eqz v0, :cond_55

    #@104d
    const/4 v6, 0x1

    #@104e
    :goto_45
    move-object/from16 v0, p3

    #@1050
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1053
    .line 1104
    const/4 v6, 0x1

    #@1054
    return v6

    #@1055
    .line 1103
    :cond_55
    const/4 v6, 0x0

    #@1056
    goto :goto_45

    #@1057
    .line 1108
    .end local v92    # "className":Landroid/content/ComponentName;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v327    # "res":Z
    .end local v348    # "startId":I
    :pswitch_4c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@105a
    move-object/from16 v0, p2

    #@105c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@105f
    .line 1109
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@1062
    move-result-object v92

    #@1063
    .line 1110
    .restart local v92    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1066
    move-result-object v93

    #@1067
    .line 1111
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@106a
    move-result v94

    #@106b
    .line 1112
    .restart local v94    # "id":I
    const/16 v95, 0x0

    #@106d
    .line 1113
    .local v95, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1070
    move-result v6

    #@1071
    if-eqz v6, :cond_56

    #@1073
    .line 1114
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1075
    move-object/from16 v0, p2

    #@1077
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@107a
    move-result-object v95

    #@107b
    .end local v95    # "notification":Landroid/app/Notification;
    check-cast v95, Landroid/app/Notification;

    #@107d
    .line 1116
    :cond_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1080
    move-result v96

    #@1081
    .local v96, "sflags":I
    move-object/from16 v91, p0

    #@1083
    .line 1117
    invoke-virtual/range {v91 .. v96}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V

    #@1086
    .line 1118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1089
    .line 1119
    const/4 v6, 0x1

    #@108a
    return v6

    #@108b
    .line 1123
    .end local v92    # "className":Landroid/content/ComponentName;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v94    # "id":I
    .end local v96    # "sflags":I
    :pswitch_4d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@108e
    move-object/from16 v0, p2

    #@1090
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1093
    .line 1124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1096
    move-result-object v213

    #@1097
    .line 1125
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@109a
    move-result-object v7

    #@109b
    .line 1126
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@109e
    move-result-object v93

    #@109f
    .line 1127
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10a1
    move-object/from16 v0, p2

    #@10a3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10a6
    move-result-object v90

    #@10a7
    check-cast v90, Landroid/content/Intent;

    #@10a9
    .line 1128
    .restart local v90    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10ac
    move-result-object v10

    #@10ad
    .line 1129
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10b0
    move-result-object v213

    #@10b1
    .line 1130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10b4
    move-result v103

    #@10b5
    .line 1131
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10b8
    move-result-object v8

    #@10b9
    .line 1132
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10bc
    move-result v17

    #@10bd
    .line 1133
    .restart local v17    # "userId":I
    invoke-static/range {v213 .. v213}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    #@10c0
    move-result-object v102

    #@10c1
    .local v102, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v97, p0

    #@10c3
    move-object/from16 v98, v7

    #@10c5
    move-object/from16 v99, v93

    #@10c7
    move-object/from16 v100, v90

    #@10c9
    move-object/from16 v101, v10

    #@10cb
    move-object/from16 v104, v8

    #@10cd
    move/from16 v105, v17

    #@10cf
    .line 1134
    invoke-virtual/range {v97 .. v105}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    #@10d2
    move-result v0

    #@10d3
    move/16 v321, v0

    #@10d6
    .line 1136
    .restart local v321    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10d9
    .line 1137
    move-object/from16 v0, p3

    #@10db
    move/from16 v1, v321

    #@10dd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10e0
    .line 1138
    const/4 v6, 0x1

    #@10e1
    return v6

    #@10e2
    .line 1142
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v90    # "service":Landroid/content/Intent;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v102    # "conn":Landroid/app/IServiceConnection;
    .end local v103    # "fl":I
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v321    # "res":I
    :pswitch_4e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@10e5
    move-object/from16 v0, p2

    #@10e7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10ea
    .line 1143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10ed
    move-result-object v213

    #@10ee
    .line 1144
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    #@10f1
    move-result-object v102

    #@10f2
    .line 1145
    .restart local v102    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    #@10f4
    move-object/from16 v1, v102

    #@10f6
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    #@10f9
    move-result v0

    #@10fa
    move/16 v327, v0

    #@10fd
    .line 1146
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1100
    .line 1147
    move/from16 v0, v327

    #@1102
    if-eqz v0, :cond_57

    #@1104
    const/4 v6, 0x1

    #@1105
    :goto_46
    move-object/from16 v0, p3

    #@1107
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@110a
    .line 1148
    const/4 v6, 0x1

    #@110b
    return v6

    #@110c
    .line 1147
    :cond_57
    const/4 v6, 0x0

    #@110d
    goto :goto_46

    #@110e
    .line 1152
    .end local v102    # "conn":Landroid/app/IServiceConnection;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v327    # "res":Z
    :pswitch_4f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1111
    move-object/from16 v0, p2

    #@1113
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1116
    .line 1153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1119
    move-result-object v93

    #@111a
    .line 1154
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@111c
    move-object/from16 v0, p2

    #@111e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1121
    move-result-object v9

    #@1122
    check-cast v9, Landroid/content/Intent;

    #@1124
    .line 1155
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1127
    move-result-object v0

    #@1128
    move-object/16 v339, v0

    #@112b
    .line 1156
    .local v339, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@112d
    move-object/from16 v1, v93

    #@112f
    move-object/from16 v2, v339

    #@1131
    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    #@1134
    .line 1157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1137
    .line 1158
    const/4 v6, 0x1

    #@1138
    return v6

    #@1139
    .line 1162
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v339    # "service":Landroid/os/IBinder;
    :pswitch_50
    const-string/jumbo v6, "android.app.IActivityManager"

    #@113c
    move-object/from16 v0, p2

    #@113e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1141
    .line 1163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1144
    move-result-object v93

    #@1145
    .line 1164
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1147
    move-object/from16 v0, p2

    #@1149
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@114c
    move-result-object v9

    #@114d
    check-cast v9, Landroid/content/Intent;

    #@114f
    .line 1165
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1152
    move-result v6

    #@1153
    if-eqz v6, :cond_58

    #@1155
    const/16 v231, 0x1

    #@1157
    .line 1166
    .local v231, "doRebind":Z
    :goto_47
    move-object/from16 v0, p0

    #@1159
    move-object/from16 v1, v93

    #@115b
    move/from16 v2, v231

    #@115d
    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    #@1160
    .line 1167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1163
    .line 1168
    const/4 v6, 0x1

    #@1164
    return v6

    #@1165
    .line 1165
    .end local v231    # "doRebind":Z
    :cond_58
    const/16 v231, 0x0

    #@1167
    goto :goto_47

    #@1168
    .line 1172
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_51
    const-string/jumbo v6, "android.app.IActivityManager"

    #@116b
    move-object/from16 v0, p2

    #@116d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1170
    .line 1173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1173
    move-result-object v93

    #@1174
    .line 1174
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1177
    move-result v114

    #@1178
    .line 1175
    .local v114, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@117b
    move-result v0

    #@117c
    move/16 v348, v0

    #@117f
    .line 1176
    .restart local v348    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1182
    move-result v0

    #@1183
    move/16 v321, v0

    #@1186
    .line 1177
    .restart local v321    # "res":I
    move-object/from16 v0, p0

    #@1188
    move-object/from16 v1, v93

    #@118a
    move/from16 v2, v114

    #@118c
    move/from16 v3, v348

    #@118e
    move/from16 v4, v321

    #@1190
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    #@1193
    .line 1178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1196
    .line 1179
    const/4 v6, 0x1

    #@1197
    return v6

    #@1198
    .line 1183
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v114    # "type":I
    .end local v321    # "res":I
    .end local v348    # "startId":I
    :pswitch_52
    const-string/jumbo v6, "android.app.IActivityManager"

    #@119b
    move-object/from16 v0, p2

    #@119d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11a0
    .line 1184
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@11a3
    move-result-object v92

    #@11a4
    .line 1185
    .restart local v92    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11a7
    move-result-object v106

    #@11a8
    .line 1186
    .local v106, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11ab
    move-result v103

    #@11ac
    .line 1187
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@11af
    move-result-object v108

    #@11b0
    .line 1188
    .local v108, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@11b3
    move-result-object v213

    #@11b4
    .line 1189
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    #@11b7
    move-result-object v109

    #@11b8
    .line 1190
    .local v109, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@11bb
    move-result-object v213

    #@11bc
    .line 1191
    invoke-static/range {v213 .. v213}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    #@11bf
    move-result-object v110

    #@11c0
    .line 1192
    .local v110, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11c3
    move-result v17

    #@11c4
    .line 1193
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11c7
    move-result-object v112

    #@11c8
    .local v112, "abiOverride":Ljava/lang/String;
    move-object/from16 v104, p0

    #@11ca
    move-object/from16 v105, v92

    #@11cc
    move/from16 v107, v103

    #@11ce
    move/from16 v111, v17

    #@11d0
    .line 1194
    invoke-virtual/range {v104 .. v112}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    #@11d3
    move-result v0

    #@11d4
    move/16 v327, v0

    #@11d7
    .line 1196
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11da
    .line 1197
    move/from16 v0, v327

    #@11dc
    if-eqz v0, :cond_59

    #@11de
    const/4 v6, 0x1

    #@11df
    :goto_48
    move-object/from16 v0, p3

    #@11e1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@11e4
    .line 1198
    const/4 v6, 0x1

    #@11e5
    return v6

    #@11e6
    .line 1197
    :cond_59
    const/4 v6, 0x0

    #@11e7
    goto :goto_48

    #@11e8
    .line 1203
    .end local v17    # "userId":I
    .end local v92    # "className":Landroid/content/ComponentName;
    .end local v103    # "fl":I
    .end local v106    # "profileFile":Ljava/lang/String;
    .end local v108    # "arguments":Landroid/os/Bundle;
    .end local v109    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v110    # "c":Landroid/app/IUiAutomationConnection;
    .end local v112    # "abiOverride":Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v327    # "res":Z
    :pswitch_53
    const-string/jumbo v6, "android.app.IActivityManager"

    #@11eb
    move-object/from16 v0, p2

    #@11ed
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f0
    .line 1204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@11f3
    move-result-object v213

    #@11f4
    .line 1205
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@11f7
    move-result-object v7

    #@11f8
    .line 1206
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11fb
    move-result v53

    #@11fc
    .line 1207
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@11ff
    move-result-object v0

    #@1200
    move-object/16 v336, v0

    #@1203
    .line 1208
    .local v336, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@1205
    move/from16 v1, v53

    #@1207
    move-object/from16 v2, v336

    #@1209
    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    #@120c
    .line 1209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@120f
    .line 1210
    const/4 v6, 0x1

    #@1210
    return v6

    #@1211
    .line 1214
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v53    # "resultCode":I
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v336    # "results":Landroid/os/Bundle;
    :pswitch_54
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1214
    move-object/from16 v0, p2

    #@1216
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1219
    .line 1215
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    #@121c
    move-result-object v39

    #@121d
    .line 1216
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1220
    .line 1217
    const/4 v6, 0x0

    #@1221
    move-object/from16 v0, v39

    #@1223
    move-object/from16 v1, p3

    #@1225
    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@1228
    .line 1218
    const/4 v6, 0x1

    #@1229
    return v6

    #@122a
    .line 1222
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_55
    const-string/jumbo v6, "android.app.IActivityManager"

    #@122d
    move-object/from16 v0, p2

    #@122f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1232
    .line 1223
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1234
    move-object/from16 v0, p2

    #@1236
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1239
    move-result-object v39

    #@123a
    check-cast v39, Landroid/content/res/Configuration;

    #@123c
    .line 1224
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    #@123e
    move-object/from16 v1, v39

    #@1240
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    #@1243
    .line 1225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1246
    .line 1226
    const/4 v6, 0x1

    #@1247
    return v6

    #@1248
    .line 1230
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_56
    const-string/jumbo v6, "android.app.IActivityManager"

    #@124b
    move-object/from16 v0, p2

    #@124d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1250
    .line 1231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1253
    move-result-object v93

    #@1254
    .line 1232
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1257
    move-result v0

    #@1258
    move/16 v320, v0

    #@125b
    .line 1233
    .local v320, "requestedOrientation":I
    move-object/from16 v0, p0

    #@125d
    move-object/from16 v1, v93

    #@125f
    move/from16 v2, v320

    #@1261
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    #@1264
    .line 1234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1267
    .line 1235
    const/4 v6, 0x1

    #@1268
    return v6

    #@1269
    .line 1239
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v320    # "requestedOrientation":I
    :pswitch_57
    const-string/jumbo v6, "android.app.IActivityManager"

    #@126c
    move-object/from16 v0, p2

    #@126e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1271
    .line 1240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1274
    move-result-object v93

    #@1275
    .line 1241
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1277
    move-object/from16 v1, v93

    #@1279
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    #@127c
    move-result v0

    #@127d
    move/16 v319, v0

    #@1280
    .line 1242
    .local v319, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1283
    .line 1243
    move-object/from16 v0, p3

    #@1285
    move/from16 v1, v319

    #@1287
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@128a
    .line 1244
    const/4 v6, 0x1

    #@128b
    return v6

    #@128c
    .line 1248
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v319    # "req":I
    :pswitch_58
    const-string/jumbo v6, "android.app.IActivityManager"

    #@128f
    move-object/from16 v0, p2

    #@1291
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1294
    .line 1249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1297
    move-result-object v93

    #@1298
    .line 1250
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@129a
    move-object/from16 v1, v93

    #@129c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    #@129f
    move-result-object v222

    #@12a0
    .line 1251
    .restart local v222    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12a3
    .line 1252
    move-object/from16 v0, v222

    #@12a5
    move-object/from16 v1, p3

    #@12a7
    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@12aa
    .line 1253
    const/4 v6, 0x1

    #@12ab
    return v6

    #@12ac
    .line 1257
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v222    # "cn":Landroid/content/ComponentName;
    :pswitch_59
    const-string/jumbo v6, "android.app.IActivityManager"

    #@12af
    move-object/from16 v0, p2

    #@12b1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12b4
    .line 1258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@12b7
    move-result-object v93

    #@12b8
    .line 1259
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12bb
    .line 1260
    move-object/from16 v0, p0

    #@12bd
    move-object/from16 v1, v93

    #@12bf
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    #@12c2
    move-result-object v6

    #@12c3
    move-object/from16 v0, p3

    #@12c5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12c8
    .line 1261
    const/4 v6, 0x1

    #@12c9
    return v6

    #@12ca
    .line 1265
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_5a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@12cd
    move-object/from16 v0, p2

    #@12cf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12d2
    .line 1266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12d5
    move-result v114

    #@12d6
    .line 1267
    .restart local v114    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12d9
    move-result-object v32

    #@12da
    .line 1268
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@12dd
    move-result-object v93

    #@12de
    .line 1269
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12e1
    move-result-object v12

    #@12e2
    .line 1270
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12e5
    move-result v13

    #@12e6
    .line 1273
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12e9
    move-result v6

    #@12ea
    if-eqz v6, :cond_5a

    #@12ec
    .line 1274
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12ee
    move-object/from16 v0, p2

    #@12f0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@12f3
    move-result-object v119

    #@12f4
    check-cast v119, [Landroid/content/Intent;

    #@12f6
    .line 1275
    .local v119, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@12f9
    move-result-object v120

    #@12fa
    .line 1280
    .end local v119    # "requestIntents":[Landroid/content/Intent;
    :goto_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12fd
    move-result v103

    #@12fe
    .line 1281
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1301
    move-result v6

    #@1302
    if-eqz v6, :cond_5b

    #@1304
    .line 1282
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1306
    move-object/from16 v0, p2

    #@1308
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@130b
    move-result-object v16

    #@130c
    check-cast v16, Landroid/os/Bundle;

    #@130e
    .line 1283
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1311
    move-result v17

    #@1312
    .restart local v17    # "userId":I
    move-object/from16 v113, p0

    #@1314
    move-object/from16 v115, v32

    #@1316
    move-object/from16 v116, v93

    #@1318
    move-object/from16 v117, v12

    #@131a
    move/from16 v118, v13

    #@131c
    move/from16 v121, v103

    #@131e
    move-object/from16 v122, v16

    #@1320
    move/from16 v123, v17

    #@1322
    .line 1284
    invoke-virtual/range {v113 .. v123}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@1325
    move-result-object v0

    #@1326
    move-object/16 v324, v0

    #@1329
    .line 1287
    .local v324, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@132c
    .line 1288
    move-object/from16 v0, v324

    #@132e
    if-eqz v0, :cond_5c

    #@1330
    invoke-interface/range {v324 .. v324}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@1333
    move-result-object v6

    #@1334
    :goto_4b
    move-object/from16 v0, p3

    #@1336
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1339
    .line 1289
    const/4 v6, 0x1

    #@133a
    return v6

    #@133b
    .line 1277
    .end local v17    # "userId":I
    .end local v103    # "fl":I
    .end local v324    # "res":Landroid/content/IIntentSender;
    :cond_5a
    const/16 v119, 0x0

    #@133d
    .line 1278
    .local v119, "requestIntents":[Landroid/content/Intent;
    const/16 v120, 0x0

    #@133f
    .local v120, "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_49

    #@1340
    .line 1282
    .end local v119    # "requestIntents":[Landroid/content/Intent;
    .end local v120    # "requestResolvedTypes":[Ljava/lang/String;
    .restart local v103    # "fl":I
    :cond_5b
    const/16 v16, 0x0

    #@1342
    .local v16, "options":Landroid/os/Bundle;
    goto :goto_4a

    #@1343
    .line 1288
    .end local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v324    # "res":Landroid/content/IIntentSender;
    :cond_5c
    const/4 v6, 0x0

    #@1344
    goto :goto_4b

    #@1345
    .line 1293
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v103    # "fl":I
    .end local v114    # "type":I
    .end local v324    # "res":Landroid/content/IIntentSender;
    :pswitch_5b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1348
    move-object/from16 v0, p2

    #@134a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@134d
    .line 1295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1350
    move-result-object v6

    #@1351
    .line 1294
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@1354
    move-result-object v0

    #@1355
    move-object/16 v317, v0

    #@1358
    .line 1296
    .local v317, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@135a
    move-object/from16 v1, v317

    #@135c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    #@135f
    .line 1297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1362
    .line 1298
    const/4 v6, 0x1

    #@1363
    return v6

    #@1364
    .line 1302
    .end local v317    # "r":Landroid/content/IIntentSender;
    :pswitch_5c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1367
    move-object/from16 v0, p2

    #@1369
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@136c
    .line 1304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@136f
    move-result-object v6

    #@1370
    .line 1303
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@1373
    move-result-object v0

    #@1374
    move-object/16 v317, v0

    #@1377
    .line 1305
    .restart local v317    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@1379
    move-object/from16 v1, v317

    #@137b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    #@137e
    move-result-object v0

    #@137f
    move-object/16 v326, v0

    #@1382
    .line 1306
    .local v326, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1385
    .line 1307
    move-object/from16 v0, p3

    #@1387
    move-object/from16 v1, v326

    #@1389
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@138c
    .line 1308
    const/4 v6, 0x1

    #@138d
    return v6

    #@138e
    .line 1312
    .end local v317    # "r":Landroid/content/IIntentSender;
    .end local v326    # "res":Ljava/lang/String;
    :pswitch_5d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1391
    move-object/from16 v0, p2

    #@1393
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1396
    .line 1314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1399
    move-result-object v6

    #@139a
    .line 1313
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@139d
    move-result-object v0

    #@139e
    move-object/16 v317, v0

    #@13a1
    .line 1315
    .restart local v317    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@13a3
    move-object/from16 v1, v317

    #@13a5
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    #@13a8
    move-result v0

    #@13a9
    move/16 v321, v0

    #@13ac
    .line 1316
    .restart local v321    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13af
    .line 1317
    move-object/from16 v0, p3

    #@13b1
    move/from16 v1, v321

    #@13b3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13b6
    .line 1318
    const/4 v6, 0x1

    #@13b7
    return v6

    #@13b8
    .line 1322
    .end local v317    # "r":Landroid/content/IIntentSender;
    .end local v321    # "res":I
    :pswitch_5e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@13bb
    move-object/from16 v0, p2

    #@13bd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13c0
    .line 1323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13c3
    move-result v42

    #@13c4
    .line 1324
    .restart local v42    # "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13c7
    move-result v43

    #@13c8
    .line 1325
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13cb
    move-result v17

    #@13cc
    .line 1326
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13cf
    move-result v6

    #@13d0
    if-eqz v6, :cond_5d

    #@13d2
    const/16 v125, 0x1

    #@13d4
    .line 1327
    .local v125, "allowAll":Z
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13d7
    move-result v6

    #@13d8
    if-eqz v6, :cond_5e

    #@13da
    const/16 v126, 0x1

    #@13dc
    .line 1328
    .local v126, "requireFull":Z
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13df
    move-result-object v127

    #@13e0
    .line 1329
    .restart local v127    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13e3
    move-result-object v128

    #@13e4
    .local v128, "callerPackage":Ljava/lang/String;
    move-object/from16 v121, p0

    #@13e6
    move/from16 v122, v42

    #@13e8
    move/from16 v123, v43

    #@13ea
    move/from16 v124, v17

    #@13ec
    .line 1330
    invoke-virtual/range {v121 .. v128}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@13ef
    move-result v0

    #@13f0
    move/16 v321, v0

    #@13f3
    .line 1332
    .restart local v321    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13f6
    .line 1333
    move-object/from16 v0, p3

    #@13f8
    move/from16 v1, v321

    #@13fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13fd
    .line 1334
    const/4 v6, 0x1

    #@13fe
    return v6

    #@13ff
    .line 1326
    .end local v125    # "allowAll":Z
    .end local v126    # "requireFull":Z
    .end local v127    # "name":Ljava/lang/String;
    .end local v128    # "callerPackage":Ljava/lang/String;
    .end local v321    # "res":I
    :cond_5d
    const/16 v125, 0x0

    #@1401
    .restart local v125    # "allowAll":Z
    goto :goto_4c

    #@1402
    .line 1327
    :cond_5e
    const/16 v126, 0x0

    #@1404
    .restart local v126    # "requireFull":Z
    goto :goto_4d

    #@1405
    .line 1338
    .end local v17    # "userId":I
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v125    # "allowAll":Z
    .end local v126    # "requireFull":Z
    :pswitch_5f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1408
    move-object/from16 v0, p2

    #@140a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@140d
    .line 1339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1410
    move-result v0

    #@1411
    move/16 v285, v0

    #@1414
    .line 1340
    .local v285, "max":I
    move-object/from16 v0, p0

    #@1416
    move/from16 v1, v285

    #@1418
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    #@141b
    .line 1341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@141e
    .line 1342
    const/4 v6, 0x1

    #@141f
    return v6

    #@1420
    .line 1346
    .end local v285    # "max":I
    :pswitch_60
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1423
    move-object/from16 v0, p2

    #@1425
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1428
    .line 1347
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    #@142b
    move-result v0

    #@142c
    move/16 v273, v0

    #@142f
    .line 1348
    .local v273, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1432
    .line 1349
    move-object/from16 v0, p3

    #@1434
    move/from16 v1, v273

    #@1436
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1439
    .line 1350
    const/4 v6, 0x1

    #@143a
    return v6

    #@143b
    .line 1354
    .end local v273    # "limit":I
    :pswitch_61
    const-string/jumbo v6, "android.app.IActivityManager"

    #@143e
    move-object/from16 v0, p2

    #@1440
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1443
    .line 1355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1446
    move-result-object v93

    #@1447
    .line 1356
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@144a
    move-result v131

    #@144b
    .line 1357
    .local v131, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@144e
    move-result v6

    #@144f
    if-eqz v6, :cond_5f

    #@1451
    const/4 v0, 0x1

    #@1452
    move/16 v266, v0

    #@1455
    .line 1358
    .local v266, "isForeground":Z
    :goto_4e
    move-object/from16 v0, p0

    #@1457
    move-object/from16 v1, v93

    #@1459
    move/from16 v2, v131

    #@145b
    move/from16 v3, v266

    #@145d
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    #@1460
    .line 1359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1463
    .line 1360
    const/4 v6, 0x1

    #@1464
    return v6

    #@1465
    .line 1357
    .end local v266    # "isForeground":Z
    :cond_5f
    const/4 v0, 0x0

    #@1466
    move/16 v266, v0

    #@1469
    goto :goto_4e

    #@146a
    .line 1364
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v131    # "pid":I
    :pswitch_62
    const-string/jumbo v6, "android.app.IActivityManager"

    #@146d
    move-object/from16 v0, p2

    #@146f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1472
    .line 1365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1475
    move-result-object v35

    #@1476
    .line 1366
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1479
    move-result v131

    #@147a
    .line 1367
    .restart local v131    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@147d
    move-result v132

    #@147e
    .line 1368
    .local v132, "uid":I
    move-object/from16 v0, p0

    #@1480
    move-object/from16 v1, v35

    #@1482
    move/from16 v2, v131

    #@1484
    move/from16 v3, v132

    #@1486
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    #@1489
    move-result v0

    #@148a
    move/16 v321, v0

    #@148d
    .line 1369
    .restart local v321    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1490
    .line 1370
    move-object/from16 v0, p3

    #@1492
    move/from16 v1, v321

    #@1494
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1497
    .line 1371
    const/4 v6, 0x1

    #@1498
    return v6

    #@1499
    .line 1375
    .end local v35    # "perm":Ljava/lang/String;
    .end local v131    # "pid":I
    .end local v132    # "uid":I
    .end local v321    # "res":I
    :pswitch_63
    const-string/jumbo v6, "android.app.IActivityManager"

    #@149c
    move-object/from16 v0, p2

    #@149e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14a1
    .line 1376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14a4
    move-result-object v35

    #@14a5
    .line 1377
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14a8
    move-result v131

    #@14a9
    .line 1378
    .restart local v131    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14ac
    move-result v132

    #@14ad
    .line 1379
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14b0
    move-result-object v93

    #@14b1
    .line 1380
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@14b3
    move-object/from16 v1, v35

    #@14b5
    move/from16 v2, v131

    #@14b7
    move/from16 v3, v132

    #@14b9
    move-object/from16 v4, v93

    #@14bb
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    #@14be
    move-result v0

    #@14bf
    move/16 v321, v0

    #@14c2
    .line 1381
    .restart local v321    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14c5
    .line 1382
    move-object/from16 v0, p3

    #@14c7
    move/from16 v1, v321

    #@14c9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14cc
    .line 1383
    const/4 v6, 0x1

    #@14cd
    return v6

    #@14ce
    .line 1387
    .end local v35    # "perm":Ljava/lang/String;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v131    # "pid":I
    .end local v132    # "uid":I
    .end local v321    # "res":I
    :pswitch_64
    const-string/jumbo v6, "android.app.IActivityManager"

    #@14d1
    move-object/from16 v0, p2

    #@14d3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14d6
    .line 1388
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14d8
    move-object/from16 v0, p2

    #@14da
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14dd
    move-result-object v130

    #@14de
    check-cast v130, Landroid/net/Uri;

    #@14e0
    .line 1389
    .local v130, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14e3
    move-result v131

    #@14e4
    .line 1390
    .restart local v131    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14e7
    move-result v132

    #@14e8
    .line 1391
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14eb
    move-result v133

    #@14ec
    .line 1392
    .local v133, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14ef
    move-result v17

    #@14f0
    .line 1393
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14f3
    move-result-object v135

    #@14f4
    .local v135, "callerToken":Landroid/os/IBinder;
    move-object/from16 v129, p0

    #@14f6
    move/from16 v134, v17

    #@14f8
    .line 1394
    invoke-virtual/range {v129 .. v135}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    #@14fb
    move-result v0

    #@14fc
    move/16 v321, v0

    #@14ff
    .line 1395
    .restart local v321    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1502
    .line 1396
    move-object/from16 v0, p3

    #@1504
    move/from16 v1, v321

    #@1506
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1509
    .line 1397
    const/4 v6, 0x1

    #@150a
    return v6

    #@150b
    .line 1401
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v131    # "pid":I
    .end local v132    # "uid":I
    .end local v133    # "mode":I
    .end local v135    # "callerToken":Landroid/os/IBinder;
    .end local v321    # "res":I
    :pswitch_65
    const-string/jumbo v6, "android.app.IActivityManager"

    #@150e
    move-object/from16 v0, p2

    #@1510
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1513
    .line 1402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1516
    move-result-object v32

    #@1517
    .line 1404
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@151a
    move-result-object v6

    #@151b
    .line 1403
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    #@151e
    move-result-object v0

    #@151f
    move-object/16 v295, v0

    #@1522
    .line 1405
    .local v295, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1525
    move-result v17

    #@1526
    .line 1406
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1528
    move-object/from16 v1, v32

    #@152a
    move-object/from16 v2, v295

    #@152c
    move/from16 v3, v17

    #@152e
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    #@1531
    move-result v0

    #@1532
    move/16 v327, v0

    #@1535
    .line 1407
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1538
    .line 1408
    move/from16 v0, v327

    #@153a
    if-eqz v0, :cond_60

    #@153c
    const/4 v6, 0x1

    #@153d
    :goto_4f
    move-object/from16 v0, p3

    #@153f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1542
    .line 1409
    const/4 v6, 0x1

    #@1543
    return v6

    #@1544
    .line 1408
    :cond_60
    const/4 v6, 0x0

    #@1545
    goto :goto_4f

    #@1546
    .line 1413
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v295    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v327    # "res":Z
    :pswitch_66
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1549
    move-object/from16 v0, p2

    #@154b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@154e
    .line 1414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1551
    move-result-object v213

    #@1552
    .line 1415
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@1555
    move-result-object v7

    #@1556
    .line 1416
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1559
    move-result-object v138

    #@155a
    .line 1417
    .local v138, "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@155c
    move-object/from16 v0, p2

    #@155e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1561
    move-result-object v130

    #@1562
    check-cast v130, Landroid/net/Uri;

    #@1564
    .line 1418
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1567
    move-result v133

    #@1568
    .line 1419
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@156b
    move-result v17

    #@156c
    .restart local v17    # "userId":I
    move-object/from16 v136, p0

    #@156e
    move-object/from16 v137, v7

    #@1570
    move-object/from16 v139, v130

    #@1572
    move/from16 v140, v133

    #@1574
    move/from16 v141, v17

    #@1576
    .line 1420
    invoke-virtual/range {v136 .. v141}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    #@1579
    .line 1421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@157c
    .line 1422
    const/4 v6, 0x1

    #@157d
    return v6

    #@157e
    .line 1426
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    .end local v138    # "targetPkg":Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_67
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1581
    move-object/from16 v0, p2

    #@1583
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1586
    .line 1427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1589
    move-result-object v213

    #@158a
    .line 1428
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@158d
    move-result-object v7

    #@158e
    .line 1429
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1590
    move-object/from16 v0, p2

    #@1592
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1595
    move-result-object v130

    #@1596
    check-cast v130, Landroid/net/Uri;

    #@1598
    .line 1430
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@159b
    move-result v133

    #@159c
    .line 1431
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@159f
    move-result v17

    #@15a0
    .line 1432
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@15a2
    move-object/from16 v1, v130

    #@15a4
    move/from16 v2, v133

    #@15a6
    move/from16 v3, v17

    #@15a8
    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    #@15ab
    .line 1433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15ae
    .line 1434
    const/4 v6, 0x1

    #@15af
    return v6

    #@15b0
    .line 1438
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_68
    const-string/jumbo v6, "android.app.IActivityManager"

    #@15b3
    move-object/from16 v0, p2

    #@15b5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15b8
    .line 1439
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15ba
    move-object/from16 v0, p2

    #@15bc
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15bf
    move-result-object v130

    #@15c0
    check-cast v130, Landroid/net/Uri;

    #@15c2
    .line 1440
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15c5
    move-result v133

    #@15c6
    .line 1441
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15c9
    move-result v17

    #@15ca
    .line 1442
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@15cc
    move-object/from16 v1, v130

    #@15ce
    move/from16 v2, v133

    #@15d0
    move/from16 v3, v17

    #@15d2
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;II)V

    #@15d5
    .line 1443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15d8
    .line 1444
    const/4 v6, 0x1

    #@15d9
    return v6

    #@15da
    .line 1448
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    :pswitch_69
    const-string/jumbo v6, "android.app.IActivityManager"

    #@15dd
    move-object/from16 v0, p2

    #@15df
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15e2
    .line 1449
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15e4
    move-object/from16 v0, p2

    #@15e6
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15e9
    move-result-object v130

    #@15ea
    check-cast v130, Landroid/net/Uri;

    #@15ec
    .line 1450
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15ef
    move-result v133

    #@15f0
    .line 1451
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15f3
    move-result v17

    #@15f4
    .line 1452
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@15f6
    move-object/from16 v1, v130

    #@15f8
    move/from16 v2, v133

    #@15fa
    move/from16 v3, v17

    #@15fc
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    #@15ff
    .line 1453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1602
    .line 1454
    const/4 v6, 0x1

    #@1603
    return v6

    #@1604
    .line 1458
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    :pswitch_6a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1607
    move-object/from16 v0, p2

    #@1609
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@160c
    .line 1459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@160f
    move-result-object v32

    #@1610
    .line 1460
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1613
    move-result v6

    #@1614
    if-eqz v6, :cond_61

    #@1616
    const/4 v0, 0x1

    #@1617
    move/16 v256, v0

    #@161a
    .line 1461
    .local v256, "incoming":Z
    :goto_50
    move-object/from16 v0, p0

    #@161c
    move-object/from16 v1, v32

    #@161e
    move/from16 v2, v256

    #@1620
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    #@1623
    move-result-object v0

    #@1624
    move-object/16 v305, v0

    #@1627
    .line 1463
    .local v305, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@162a
    .line 1464
    const/4 v6, 0x1

    #@162b
    move-object/from16 v0, v305

    #@162d
    move-object/from16 v1, p3

    #@162f
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@1632
    .line 1465
    const/4 v6, 0x1

    #@1633
    return v6

    #@1634
    .line 1460
    .end local v256    # "incoming":Z
    .end local v305    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_61
    const/4 v0, 0x0

    #@1635
    move/16 v256, v0

    #@1638
    goto :goto_50

    #@1639
    .line 1469
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_6b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@163c
    move-object/from16 v0, p2

    #@163e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1641
    .line 1470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1644
    move-result-object v32

    #@1645
    .line 1471
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1648
    move-result v17

    #@1649
    .line 1472
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@164b
    move-object/from16 v1, v32

    #@164d
    move/from16 v2, v17

    #@164f
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@1652
    move-result-object v0

    #@1653
    move-object/16 v305, v0

    #@1656
    .line 1474
    .restart local v305    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1659
    .line 1475
    const/4 v6, 0x1

    #@165a
    move-object/from16 v0, v305

    #@165c
    move-object/from16 v1, p3

    #@165e
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@1661
    .line 1476
    const/4 v6, 0x1

    #@1662
    return v6

    #@1663
    .line 1480
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v305    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :pswitch_6c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1666
    move-object/from16 v0, p2

    #@1668
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@166b
    .line 1481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@166e
    move-result-object v32

    #@166f
    .line 1482
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1672
    move-result v17

    #@1673
    .line 1483
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1675
    move-object/from16 v1, v32

    #@1677
    move/from16 v2, v17

    #@1679
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->clearGrantedUriPermissions(Ljava/lang/String;I)V

    #@167c
    .line 1484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@167f
    .line 1485
    const/4 v6, 0x1

    #@1680
    return v6

    #@1681
    .line 1489
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_6d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1684
    move-object/from16 v0, p2

    #@1686
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1689
    .line 1490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@168c
    move-result-object v213

    #@168d
    .line 1491
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@1690
    move-result-object v7

    #@1691
    .line 1492
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1694
    move-result v6

    #@1695
    if-eqz v6, :cond_62

    #@1697
    const/4 v0, 0x1

    #@1698
    move/16 v369, v0

    #@169b
    .line 1493
    .local v369, "waiting":Z
    :goto_51
    move-object/from16 v0, p0

    #@169d
    move/from16 v1, v369

    #@169f
    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    #@16a2
    .line 1494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16a5
    .line 1495
    const/4 v6, 0x1

    #@16a6
    return v6

    #@16a7
    .line 1492
    .end local v369    # "waiting":Z
    :cond_62
    const/4 v0, 0x0

    #@16a8
    move/16 v369, v0

    #@16ab
    goto :goto_51

    #@16ac
    .line 1499
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_6e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@16af
    move-object/from16 v0, p2

    #@16b1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16b4
    .line 1500
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    #@16b6
    move-object/16 v288, v0

    #@16b9
    invoke-direct/range {v288 .. v288}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    #@16bc
    .line 1501
    .local v288, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    #@16be
    move-object/from16 v1, v288

    #@16c0
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    #@16c3
    .line 1502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16c6
    .line 1503
    const/4 v6, 0x0

    #@16c7
    move-object/from16 v0, v288

    #@16c9
    move-object/from16 v1, p3

    #@16cb
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@16ce
    .line 1504
    const/4 v6, 0x1

    #@16cf
    return v6

    #@16d0
    .line 1508
    .end local v288    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_6f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@16d3
    move-object/from16 v0, p2

    #@16d5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16d8
    .line 1509
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    #@16db
    .line 1510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16de
    .line 1511
    const/4 v6, 0x1

    #@16df
    return v6

    #@16e0
    .line 1515
    :pswitch_70
    const-string/jumbo v6, "android.app.IActivityManager"

    #@16e3
    move-object/from16 v0, p2

    #@16e5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16e8
    .line 1516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16eb
    move-result-object v6

    #@16ec
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@16ef
    move-result-object v130

    #@16f0
    .line 1517
    .restart local v130    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@16f2
    move-object/from16 v1, v130

    #@16f4
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    #@16f7
    move-result-object v0

    #@16f8
    move-object/16 v307, v0

    #@16fb
    .line 1518
    .local v307, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16fe
    .line 1519
    move-object/from16 v0, v307

    #@1700
    if-eqz v0, :cond_63

    #@1702
    .line 1520
    const/4 v6, 0x1

    #@1703
    move-object/from16 v0, p3

    #@1705
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1708
    .line 1521
    const/4 v6, 0x1

    #@1709
    move-object/from16 v0, v307

    #@170b
    move-object/from16 v1, p3

    #@170d
    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@1710
    .line 1525
    :goto_52
    const/4 v6, 0x1

    #@1711
    return v6

    #@1712
    .line 1523
    :cond_63
    const/4 v6, 0x0

    #@1713
    move-object/from16 v0, p3

    #@1715
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1718
    goto :goto_52

    #@1719
    .line 1529
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v307    # "pfd":Landroid/os/ParcelFileDescriptor;
    :pswitch_71
    const-string/jumbo v6, "android.app.IActivityManager"

    #@171c
    move-object/from16 v0, p2

    #@171e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1721
    .line 1530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1724
    move-result v6

    #@1725
    if-eqz v6, :cond_64

    #@1727
    const/4 v0, 0x1

    #@1728
    move/16 v340, v0

    #@172b
    .line 1531
    .local v340, "showing":Z
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@172e
    move-result v6

    #@172f
    if-eqz v6, :cond_65

    #@1731
    const/4 v0, 0x1

    #@1732
    move/16 v296, v0

    #@1735
    .line 1532
    .local v296, "occluded":Z
    :goto_54
    move-object/from16 v0, p0

    #@1737
    move/from16 v1, v340

    #@1739
    move/from16 v2, v296

    #@173b
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setLockScreenShown(ZZ)V

    #@173e
    .line 1533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1741
    .line 1534
    const/4 v6, 0x1

    #@1742
    return v6

    #@1743
    .line 1530
    .end local v296    # "occluded":Z
    .end local v340    # "showing":Z
    :cond_64
    const/4 v0, 0x0

    #@1744
    move/16 v340, v0

    #@1747
    .restart local v340    # "showing":Z
    goto :goto_53

    #@1748
    .line 1531
    :cond_65
    const/4 v0, 0x0

    #@1749
    move/16 v296, v0

    #@174c
    goto :goto_54

    #@174d
    .line 1538
    .end local v340    # "showing":Z
    :pswitch_72
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1750
    move-object/from16 v0, p2

    #@1752
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1755
    .line 1539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1758
    move-result-object v0

    #@1759
    move-object/16 v311, v0

    #@175c
    .line 1540
    .local v311, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@175f
    move-result v6

    #@1760
    if-eqz v6, :cond_66

    #@1762
    const/4 v0, 0x1

    #@1763
    move/16 v371, v0

    #@1766
    .line 1541
    .local v371, "wfd":Z
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1769
    move-result v6

    #@176a
    if-eqz v6, :cond_67

    #@176c
    const/4 v0, 0x1

    #@176d
    move/16 v303, v0

    #@1770
    .line 1542
    .local v303, "per":Z
    :goto_56
    move-object/from16 v0, p0

    #@1772
    move-object/from16 v1, v311

    #@1774
    move/from16 v2, v371

    #@1776
    move/from16 v3, v303

    #@1778
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    #@177b
    .line 1543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@177e
    .line 1544
    const/4 v6, 0x1

    #@177f
    return v6

    #@1780
    .line 1540
    .end local v303    # "per":Z
    .end local v371    # "wfd":Z
    :cond_66
    const/4 v0, 0x0

    #@1781
    move/16 v371, v0

    #@1784
    .restart local v371    # "wfd":Z
    goto :goto_55

    #@1785
    .line 1541
    :cond_67
    const/4 v0, 0x0

    #@1786
    move/16 v303, v0

    #@1789
    goto :goto_56

    #@178a
    .line 1548
    .end local v311    # "pn":Ljava/lang/String;
    .end local v371    # "wfd":Z
    :pswitch_73
    const-string/jumbo v6, "android.app.IActivityManager"

    #@178d
    move-object/from16 v0, p2

    #@178f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1792
    .line 1549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1795
    move-result v6

    #@1796
    if-eqz v6, :cond_68

    #@1798
    const/16 v233, 0x1

    #@179a
    .line 1550
    .local v233, "enabled":Z
    :goto_57
    move-object/from16 v0, p0

    #@179c
    move/from16 v1, v233

    #@179e
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    #@17a1
    .line 1551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17a4
    .line 1552
    const/4 v6, 0x1

    #@17a5
    return v6

    #@17a6
    .line 1549
    .end local v233    # "enabled":Z
    :cond_68
    const/16 v233, 0x0

    #@17a8
    goto :goto_57

    #@17a9
    .line 1556
    :pswitch_74
    const-string/jumbo v6, "android.app.IActivityManager"

    #@17ac
    move-object/from16 v0, p2

    #@17ae
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17b1
    .line 1558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@17b4
    move-result-object v6

    #@17b5
    .line 1557
    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    #@17b8
    move-result-object v0

    #@17b9
    move-object/16 v370, v0

    #@17bc
    .line 1559
    .local v370, "watcher":Landroid/app/IActivityController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17bf
    move-result v6

    #@17c0
    if-eqz v6, :cond_69

    #@17c2
    const/16 v252, 0x1

    #@17c4
    .line 1560
    .local v252, "imAMonkey":Z
    :goto_58
    move-object/from16 v0, p0

    #@17c6
    move-object/from16 v1, v370

    #@17c8
    move/from16 v2, v252

    #@17ca
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;Z)V

    #@17cd
    .line 1561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17d0
    .line 1562
    const/4 v6, 0x1

    #@17d1
    return v6

    #@17d2
    .line 1559
    .end local v252    # "imAMonkey":Z
    :cond_69
    const/16 v252, 0x0

    #@17d4
    goto :goto_58

    #@17d5
    .line 1566
    .end local v370    # "watcher":Landroid/app/IActivityController;
    :pswitch_75
    const-string/jumbo v6, "android.app.IActivityManager"

    #@17d8
    move-object/from16 v0, p2

    #@17da
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17dd
    .line 1567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17e0
    move-result v6

    #@17e1
    if-eqz v6, :cond_6a

    #@17e3
    const/16 v233, 0x1

    #@17e5
    .line 1568
    .restart local v233    # "enabled":Z
    :goto_59
    move-object/from16 v0, p0

    #@17e7
    move/from16 v1, v233

    #@17e9
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setLenientBackgroundCheck(Z)V

    #@17ec
    .line 1569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17ef
    .line 1570
    const/4 v6, 0x1

    #@17f0
    return v6

    #@17f1
    .line 1567
    .end local v233    # "enabled":Z
    :cond_6a
    const/16 v233, 0x0

    #@17f3
    goto :goto_59

    #@17f4
    .line 1574
    :pswitch_76
    const-string/jumbo v6, "android.app.IActivityManager"

    #@17f7
    move-object/from16 v0, p2

    #@17f9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17fc
    .line 1575
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getMemoryTrimLevel()I

    #@17ff
    move-result v0

    #@1800
    move/16 v272, v0

    #@1803
    .line 1576
    .local v272, "level":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1806
    .line 1577
    move-object/from16 v0, p3

    #@1808
    move/from16 v1, v272

    #@180a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@180d
    .line 1578
    const/4 v6, 0x1

    #@180e
    return v6

    #@180f
    .line 1582
    .end local v272    # "level":I
    :pswitch_77
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1812
    move-object/from16 v0, p2

    #@1814
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1817
    .line 1583
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    #@181a
    .line 1584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@181d
    .line 1585
    const/4 v6, 0x1

    #@181e
    return v6

    #@181f
    .line 1589
    :pswitch_78
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1822
    move-object/from16 v0, p2

    #@1824
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1827
    .line 1591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@182a
    move-result-object v6

    #@182b
    .line 1590
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@182e
    move-result-object v0

    #@182f
    move-object/16 v265, v0

    #@1832
    .line 1592
    .local v265, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1835
    move-result v0

    #@1836
    move/16 v345, v0

    #@1839
    .line 1593
    .local v345, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@183c
    move-result-object v0

    #@183d
    move-object/16 v344, v0

    #@1840
    .line 1594
    .local v344, "sourcePkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1843
    move-result-object v0

    #@1844
    move-object/16 v353, v0

    #@1847
    .line 1595
    .local v353, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1849
    move-object/from16 v1, v265

    #@184b
    move/from16 v2, v345

    #@184d
    move-object/from16 v3, v344

    #@184f
    move-object/from16 v4, v353

    #@1851
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    #@1854
    .line 1596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1857
    .line 1597
    const/4 v6, 0x1

    #@1858
    return v6

    #@1859
    .line 1601
    .end local v265    # "is":Landroid/content/IIntentSender;
    .end local v344    # "sourcePkg":Ljava/lang/String;
    .end local v345    # "sourceUid":I
    .end local v353    # "tag":Ljava/lang/String;
    :pswitch_79
    const-string/jumbo v6, "android.app.IActivityManager"

    #@185c
    move-object/from16 v0, p2

    #@185e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1861
    .line 1603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1864
    move-result-object v6

    #@1865
    .line 1602
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@1868
    move-result-object v0

    #@1869
    move-object/16 v265, v0

    #@186c
    .line 1604
    .restart local v265    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@186f
    move-result v0

    #@1870
    move/16 v345, v0

    #@1873
    .line 1605
    .restart local v345    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1876
    move-result-object v0

    #@1877
    move-object/16 v353, v0

    #@187a
    .line 1606
    .restart local v353    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    #@187c
    move-object/from16 v1, v265

    #@187e
    move/from16 v2, v345

    #@1880
    move-object/from16 v3, v353

    #@1882
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    #@1885
    .line 1607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1888
    .line 1608
    const/4 v6, 0x1

    #@1889
    return v6

    #@188a
    .line 1612
    .end local v265    # "is":Landroid/content/IIntentSender;
    .end local v345    # "sourceUid":I
    .end local v353    # "tag":Ljava/lang/String;
    :pswitch_7a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@188d
    move-object/from16 v0, p2

    #@188f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1892
    .line 1614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1895
    move-result-object v6

    #@1896
    .line 1613
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@1899
    move-result-object v0

    #@189a
    move-object/16 v265, v0

    #@189d
    .line 1615
    .restart local v265    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18a0
    move-result v0

    #@18a1
    move/16 v345, v0

    #@18a4
    .line 1616
    .restart local v345    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18a7
    move-result-object v0

    #@18a8
    move-object/16 v353, v0

    #@18ab
    .line 1617
    .restart local v353    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    #@18ad
    move-object/from16 v1, v265

    #@18af
    move/from16 v2, v345

    #@18b1
    move-object/from16 v3, v353

    #@18b3
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    #@18b6
    .line 1618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18b9
    .line 1619
    const/4 v6, 0x1

    #@18ba
    return v6

    #@18bb
    .line 1623
    .end local v265    # "is":Landroid/content/IIntentSender;
    .end local v345    # "sourceUid":I
    .end local v353    # "tag":Ljava/lang/String;
    :pswitch_7b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@18be
    move-object/from16 v0, p2

    #@18c0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18c3
    .line 1624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@18c6
    move-result-object v0

    #@18c7
    move-object/16 v309, v0

    #@18ca
    .line 1625
    .local v309, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18cd
    move-result-object v0

    #@18ce
    move-object/16 v318, v0

    #@18d1
    .line 1626
    .local v318, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18d4
    move-result v6

    #@18d5
    if-eqz v6, :cond_6b

    #@18d7
    const/4 v0, 0x1

    #@18d8
    move/16 v338, v0

    #@18db
    .line 1627
    .local v338, "secure":Z
    :goto_5a
    move-object/from16 v0, p0

    #@18dd
    move-object/from16 v1, v309

    #@18df
    move-object/from16 v2, v318

    #@18e1
    move/from16 v3, v338

    #@18e3
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    #@18e6
    move-result v0

    #@18e7
    move/16 v327, v0

    #@18ea
    .line 1628
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18ed
    .line 1629
    move/from16 v0, v327

    #@18ef
    if-eqz v0, :cond_6c

    #@18f1
    const/4 v6, 0x1

    #@18f2
    :goto_5b
    move-object/from16 v0, p3

    #@18f4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@18f7
    .line 1630
    const/4 v6, 0x1

    #@18f8
    return v6

    #@18f9
    .line 1626
    .end local v327    # "res":Z
    .end local v338    # "secure":Z
    :cond_6b
    const/4 v0, 0x0

    #@18fa
    move/16 v338, v0

    #@18fd
    goto :goto_5a

    #@18fe
    .line 1629
    .restart local v327    # "res":Z
    .restart local v338    # "secure":Z
    :cond_6c
    const/4 v6, 0x0

    #@18ff
    goto :goto_5b

    #@1900
    .line 1634
    .end local v309    # "pids":[I
    .end local v318    # "reason":Ljava/lang/String;
    .end local v327    # "res":Z
    .end local v338    # "secure":Z
    :pswitch_7c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1903
    move-object/from16 v0, p2

    #@1905
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1908
    .line 1635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@190b
    move-result-object v0

    #@190c
    move-object/16 v318, v0

    #@190f
    .line 1636
    .restart local v318    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1911
    move-object/from16 v1, v318

    #@1913
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    #@1916
    move-result v0

    #@1917
    move/16 v327, v0

    #@191a
    .line 1637
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@191d
    .line 1638
    move/from16 v0, v327

    #@191f
    if-eqz v0, :cond_6d

    #@1921
    const/4 v6, 0x1

    #@1922
    :goto_5c
    move-object/from16 v0, p3

    #@1924
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1927
    .line 1639
    const/4 v6, 0x1

    #@1928
    return v6

    #@1929
    .line 1638
    :cond_6d
    const/4 v6, 0x0

    #@192a
    goto :goto_5c

    #@192b
    .line 1643
    .end local v318    # "reason":Ljava/lang/String;
    .end local v327    # "res":Z
    :pswitch_7d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@192e
    move-object/from16 v0, p2

    #@1930
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1933
    .line 1644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1936
    move-result-object v209

    #@1937
    .line 1645
    .local v209, "app":Landroid/os/IBinder;
    new-instance v221, Landroid/app/ApplicationErrorReport$CrashInfo;

    #@1939
    move-object/from16 v0, v221

    #@193b
    move-object/from16 v1, p2

    #@193d
    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    #@1940
    .line 1646
    .local v221, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    #@1942
    move-object/from16 v1, v209

    #@1944
    move-object/from16 v2, v221

    #@1946
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    #@1949
    .line 1647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@194c
    .line 1648
    const/4 v6, 0x1

    #@194d
    return v6

    #@194e
    .line 1652
    .end local v209    # "app":Landroid/os/IBinder;
    .end local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_7e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1951
    move-object/from16 v0, p2

    #@1953
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1956
    .line 1653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1959
    move-result-object v209

    #@195a
    .line 1654
    .restart local v209    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@195d
    move-result-object v0

    #@195e
    move-object/16 v353, v0

    #@1961
    .line 1655
    .restart local v353    # "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1964
    move-result v6

    #@1965
    if-eqz v6, :cond_6e

    #@1967
    const/4 v0, 0x1

    #@1968
    move/16 v352, v0

    #@196b
    .line 1656
    .local v352, "system":Z
    :goto_5d
    new-instance v221, Landroid/app/ApplicationErrorReport$CrashInfo;

    #@196d
    move-object/from16 v0, v221

    #@196f
    move-object/from16 v1, p2

    #@1971
    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    #@1974
    .line 1657
    .restart local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    #@1976
    move-object/from16 v1, v209

    #@1978
    move-object/from16 v2, v353

    #@197a
    move/from16 v3, v352

    #@197c
    move-object/from16 v4, v221

    #@197e
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    #@1981
    move-result v0

    #@1982
    move/16 v327, v0

    #@1985
    .line 1658
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1988
    .line 1659
    move/from16 v0, v327

    #@198a
    if-eqz v0, :cond_6f

    #@198c
    const/4 v6, 0x1

    #@198d
    :goto_5e
    move-object/from16 v0, p3

    #@198f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1992
    .line 1660
    const/4 v6, 0x1

    #@1993
    return v6

    #@1994
    .line 1655
    .end local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v327    # "res":Z
    .end local v352    # "system":Z
    :cond_6e
    const/4 v0, 0x0

    #@1995
    move/16 v352, v0

    #@1998
    .restart local v352    # "system":Z
    goto :goto_5d

    #@1999
    .line 1659
    .restart local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v327    # "res":Z
    :cond_6f
    const/4 v6, 0x0

    #@199a
    goto :goto_5e

    #@199b
    .line 1664
    .end local v209    # "app":Landroid/os/IBinder;
    .end local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v327    # "res":Z
    .end local v352    # "system":Z
    .end local v353    # "tag":Ljava/lang/String;
    :pswitch_7f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@199e
    move-object/from16 v0, p2

    #@19a0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19a3
    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19a6
    move-result-object v209

    #@19a7
    .line 1666
    .restart local v209    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19aa
    move-result v0

    #@19ab
    move/16 v368, v0

    #@19ae
    .line 1667
    .local v368, "violationMask":I
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    #@19b0
    move-object/16 v262, v0

    #@19b3
    move-object/from16 v0, v262

    #@19b5
    move-object/from16 v1, p2

    #@19b7
    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    #@19ba
    .line 1668
    .local v262, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    #@19bc
    move-object/from16 v1, v209

    #@19be
    move/from16 v2, v368

    #@19c0
    move-object/from16 v3, v262

    #@19c2
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    #@19c5
    .line 1669
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19c8
    .line 1670
    const/4 v6, 0x1

    #@19c9
    return v6

    #@19ca
    .line 1674
    .end local v209    # "app":Landroid/os/IBinder;
    .end local v262    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v368    # "violationMask":I
    :pswitch_80
    const-string/jumbo v6, "android.app.IActivityManager"

    #@19cd
    move-object/from16 v0, p2

    #@19cf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19d2
    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19d5
    move-result v0

    #@19d6
    move/16 v341, v0

    #@19d9
    .line 1676
    .local v341, "sig":I
    move-object/from16 v0, p0

    #@19db
    move/from16 v1, v341

    #@19dd
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    #@19e0
    .line 1677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19e3
    .line 1678
    const/4 v6, 0x1

    #@19e4
    return v6

    #@19e5
    .line 1682
    .end local v341    # "sig":I
    :pswitch_81
    const-string/jumbo v6, "android.app.IActivityManager"

    #@19e8
    move-object/from16 v0, p2

    #@19ea
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19ed
    .line 1683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19f0
    move-result-object v32

    #@19f1
    .line 1684
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19f4
    move-result v17

    #@19f5
    .line 1685
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@19f7
    move-object/from16 v1, v32

    #@19f9
    move/from16 v2, v17

    #@19fb
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    #@19fe
    .line 1686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a01
    .line 1687
    const/4 v6, 0x1

    #@1a02
    return v6

    #@1a03
    .line 1691
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_82
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a06
    move-object/from16 v0, p2

    #@1a08
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a0b
    .line 1692
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    #@1a0e
    .line 1693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a11
    .line 1694
    const/4 v6, 0x1

    #@1a12
    return v6

    #@1a13
    .line 1698
    :pswitch_83
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a16
    move-object/from16 v0, p2

    #@1a18
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a1b
    .line 1699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a1e
    move-result-object v32

    #@1a1f
    .line 1700
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a22
    move-result v17

    #@1a23
    .line 1701
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1a25
    move-object/from16 v1, v32

    #@1a27
    move/from16 v2, v17

    #@1a29
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killPackageDependents(Ljava/lang/String;I)V

    #@1a2c
    .line 1702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a2f
    .line 1703
    const/4 v6, 0x1

    #@1a30
    return v6

    #@1a31
    .line 1707
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_84
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a34
    move-object/from16 v0, p2

    #@1a36
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a39
    .line 1708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a3c
    move-result-object v32

    #@1a3d
    .line 1709
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a40
    move-result v17

    #@1a41
    .line 1710
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1a43
    move-object/from16 v1, v32

    #@1a45
    move/from16 v2, v17

    #@1a47
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    #@1a4a
    .line 1711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a4d
    .line 1712
    const/4 v6, 0x1

    #@1a4e
    return v6

    #@1a4f
    .line 1716
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_85
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a52
    move-object/from16 v0, p2

    #@1a54
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a57
    .line 1718
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    #@1a59
    move-object/16 v257, v0

    #@1a5c
    invoke-direct/range {v257 .. v257}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    #@1a5f
    .line 1719
    .local v257, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    #@1a61
    move-object/from16 v1, v257

    #@1a63
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    #@1a66
    .line 1720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a69
    .line 1721
    const/4 v6, 0x0

    #@1a6a
    move-object/from16 v0, v257

    #@1a6c
    move-object/from16 v1, p3

    #@1a6e
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a71
    .line 1722
    const/4 v6, 0x1

    #@1a72
    return v6

    #@1a73
    .line 1726
    .end local v257    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_86
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a76
    move-object/from16 v0, p2

    #@1a78
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a7b
    .line 1727
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    #@1a7e
    move-result-object v224

    #@1a7f
    .line 1728
    .local v224, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a82
    .line 1729
    const/4 v6, 0x0

    #@1a83
    move-object/from16 v0, v224

    #@1a85
    move-object/from16 v1, p3

    #@1a87
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a8a
    .line 1730
    const/4 v6, 0x1

    #@1a8b
    return v6

    #@1a8c
    .line 1734
    .end local v224    # "config":Landroid/content/pm/ConfigurationInfo;
    :pswitch_87
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a8f
    move-object/from16 v0, p2

    #@1a91
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a94
    .line 1735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a97
    move-result-object v140

    #@1a98
    .line 1736
    .local v140, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a9b
    move-result v17

    #@1a9c
    .line 1737
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a9f
    move-result v6

    #@1aa0
    if-eqz v6, :cond_70

    #@1aa2
    const/16 v142, 0x1

    #@1aa4
    .line 1738
    .local v142, "start":Z
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1aa7
    move-result v144

    #@1aa8
    .line 1739
    .local v144, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1aab
    move-result v6

    #@1aac
    if-eqz v6, :cond_71

    #@1aae
    .line 1740
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ab0
    move-object/from16 v0, p2

    #@1ab2
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ab5
    move-result-object v6

    #@1ab6
    check-cast v6, Landroid/app/ProfilerInfo;

    #@1ab8
    move-object v15, v6

    #@1ab9
    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_60
    move-object/from16 v139, p0

    #@1abb
    move/from16 v141, v17

    #@1abd
    move-object/from16 v143, v15

    #@1abf
    .line 1741
    invoke-virtual/range {v139 .. v144}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    #@1ac2
    move-result v0

    #@1ac3
    move/16 v327, v0

    #@1ac6
    .line 1742
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ac9
    .line 1743
    move/from16 v0, v327

    #@1acb
    if-eqz v0, :cond_72

    #@1acd
    const/4 v6, 0x1

    #@1ace
    :goto_61
    move-object/from16 v0, p3

    #@1ad0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1ad3
    .line 1744
    const/4 v6, 0x1

    #@1ad4
    return v6

    #@1ad5
    .line 1737
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v142    # "start":Z
    .end local v144    # "profileType":I
    .end local v327    # "res":Z
    :cond_70
    const/16 v142, 0x0

    #@1ad7
    .restart local v142    # "start":Z
    goto :goto_5f

    #@1ad8
    .line 1740
    .restart local v144    # "profileType":I
    :cond_71
    const/4 v15, 0x0

    #@1ad9
    goto :goto_60

    #@1ada
    .line 1743
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v327    # "res":Z
    :cond_72
    const/4 v6, 0x0

    #@1adb
    goto :goto_61

    #@1adc
    .line 1748
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v17    # "userId":I
    .end local v140    # "process":Ljava/lang/String;
    .end local v142    # "start":Z
    .end local v144    # "profileType":I
    .end local v327    # "res":Z
    :pswitch_88
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1adf
    move-object/from16 v0, p2

    #@1ae1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ae4
    .line 1749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ae7
    move-result v6

    #@1ae8
    move-object/from16 v0, p0

    #@1aea
    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    #@1aed
    move-result v0

    #@1aee
    move/16 v327, v0

    #@1af1
    .line 1750
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1af4
    .line 1751
    move/from16 v0, v327

    #@1af6
    if-eqz v0, :cond_73

    #@1af8
    const/4 v6, 0x1

    #@1af9
    :goto_62
    move-object/from16 v0, p3

    #@1afb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1afe
    .line 1752
    const/4 v6, 0x1

    #@1aff
    return v6

    #@1b00
    .line 1751
    :cond_73
    const/4 v6, 0x0

    #@1b01
    goto :goto_62

    #@1b02
    .line 1756
    .end local v327    # "res":Z
    :pswitch_89
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1b05
    move-object/from16 v0, p2

    #@1b07
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b0a
    .line 1757
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    #@1b0d
    .line 1758
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b10
    .line 1759
    const/4 v6, 0x1

    #@1b11
    return v6

    #@1b12
    .line 1763
    :pswitch_8a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1b15
    move-object/from16 v0, p2

    #@1b17
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b1a
    .line 1764
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    #@1b1d
    .line 1765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b20
    .line 1766
    const/4 v6, 0x1

    #@1b21
    return v6

    #@1b22
    .line 1770
    :pswitch_8b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1b25
    move-object/from16 v0, p2

    #@1b27
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b2a
    .line 1771
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b2c
    move-object/from16 v0, p2

    #@1b2e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b31
    move-result-object v90

    #@1b32
    check-cast v90, Landroid/content/Intent;

    #@1b34
    .line 1772
    .restart local v90    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b37
    move-result-object v10

    #@1b38
    .line 1773
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b3b
    move-result-object v8

    #@1b3c
    .line 1774
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1b3e
    move-object/from16 v1, v90

    #@1b40
    invoke-virtual {v0, v1, v10, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    #@1b43
    move-result-object v215

    #@1b44
    .line 1775
    .local v215, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b47
    .line 1776
    move-object/from16 v0, p3

    #@1b49
    move-object/from16 v1, v215

    #@1b4b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b4e
    .line 1777
    const/4 v6, 0x1

    #@1b4f
    return v6

    #@1b50
    .line 1781
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v90    # "service":Landroid/content/Intent;
    .end local v215    # "binder":Landroid/os/IBinder;
    :pswitch_8c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1b53
    move-object/from16 v0, p2

    #@1b55
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b58
    .line 1782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b5b
    move-result-object v32

    #@1b5c
    .line 1783
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b5f
    move-result v214

    #@1b60
    .line 1784
    .local v214, "backupRestoreMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b63
    move-result v17

    #@1b64
    .line 1785
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1b66
    move-object/from16 v1, v32

    #@1b68
    move/from16 v2, v214

    #@1b6a
    move/from16 v3, v17

    #@1b6c
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Ljava/lang/String;II)Z

    #@1b6f
    move-result v0

    #@1b70
    move/16 v350, v0

    #@1b73
    .line 1786
    .local v350, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b76
    .line 1787
    move/from16 v0, v350

    #@1b78
    if-eqz v0, :cond_74

    #@1b7a
    const/4 v6, 0x1

    #@1b7b
    :goto_63
    move-object/from16 v0, p3

    #@1b7d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1b80
    .line 1788
    const/4 v6, 0x1

    #@1b81
    return v6

    #@1b82
    .line 1787
    :cond_74
    const/4 v6, 0x0

    #@1b83
    goto :goto_63

    #@1b84
    .line 1792
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v214    # "backupRestoreMode":I
    .end local v350    # "success":Z
    :pswitch_8d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1b87
    move-object/from16 v0, p2

    #@1b89
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b8c
    .line 1793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b8f
    move-result-object v32

    #@1b90
    .line 1794
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b93
    move-result-object v206

    #@1b94
    .line 1795
    .local v206, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1b96
    move-object/from16 v1, v32

    #@1b98
    move-object/from16 v2, v206

    #@1b9a
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    #@1b9d
    .line 1796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ba0
    .line 1797
    const/4 v6, 0x1

    #@1ba1
    return v6

    #@1ba2
    .line 1801
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v206    # "agent":Landroid/os/IBinder;
    :pswitch_8e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1ba5
    move-object/from16 v0, p2

    #@1ba7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1baa
    .line 1802
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1bac
    move-object/from16 v0, p2

    #@1bae
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1bb1
    move-result-object v0

    #@1bb2
    move-object/16 v261, v0

    #@1bb5
    move-object/from16 v0, v261

    #@1bb7
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@1bb9
    move-object/16 v261, v0

    #@1bbc
    .line 1803
    .local v261, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    #@1bbe
    move-object/from16 v1, v261

    #@1bc0
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    #@1bc3
    .line 1804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bc6
    .line 1805
    const/4 v6, 0x1

    #@1bc7
    return v6

    #@1bc8
    .line 1809
    .end local v261    # "info":Landroid/content/pm/ApplicationInfo;
    :pswitch_8f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1bcb
    move-object/from16 v0, p2

    #@1bcd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bd0
    .line 1810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1bd3
    move-result-object v32

    #@1bd4
    .line 1811
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1bd6
    move-object/from16 v1, v32

    #@1bd8
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    #@1bdb
    .line 1812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bde
    .line 1813
    const/4 v6, 0x1

    #@1bdf
    return v6

    #@1be0
    .line 1817
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_90
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1be3
    move-object/from16 v0, p2

    #@1be5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1be8
    .line 1818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1beb
    move-result-object v0

    #@1bec
    move-object/16 v310, v0

    #@1bef
    .line 1819
    .local v310, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bf2
    move-result v210

    #@1bf3
    .line 1820
    .local v210, "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bf6
    move-result v17

    #@1bf7
    .line 1821
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1bfa
    move-result-object v0

    #@1bfb
    move-object/16 v318, v0

    #@1bfe
    .line 1822
    .restart local v318    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1c00
    move-object/from16 v1, v310

    #@1c02
    move/from16 v2, v210

    #@1c04
    move/from16 v3, v17

    #@1c06
    move-object/from16 v4, v318

    #@1c08
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    #@1c0b
    .line 1823
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c0e
    .line 1824
    const/4 v6, 0x1

    #@1c0f
    return v6

    #@1c10
    .line 1828
    .end local v17    # "userId":I
    .end local v210    # "appId":I
    .end local v310    # "pkg":Ljava/lang/String;
    .end local v318    # "reason":Ljava/lang/String;
    :pswitch_91
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1c13
    move-object/from16 v0, p2

    #@1c15
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c18
    .line 1829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c1b
    move-result-object v0

    #@1c1c
    move-object/16 v318, v0

    #@1c1f
    .line 1830
    .restart local v318    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1c21
    move-object/from16 v1, v318

    #@1c23
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    #@1c26
    .line 1831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c29
    .line 1832
    const/4 v6, 0x1

    #@1c2a
    return v6

    #@1c2b
    .line 1836
    .end local v318    # "reason":Ljava/lang/String;
    :pswitch_92
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1c2e
    move-object/from16 v0, p2

    #@1c30
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c33
    .line 1837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@1c36
    move-result-object v0

    #@1c37
    move-object/16 v309, v0

    #@1c3a
    .line 1838
    .restart local v309    # "pids":[I
    move-object/from16 v0, p0

    #@1c3c
    move-object/from16 v1, v309

    #@1c3e
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    #@1c41
    move-result-object v0

    #@1c42
    move-object/16 v328, v0

    #@1c45
    .line 1839
    .local v328, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c48
    .line 1840
    const/4 v6, 0x1

    #@1c49
    move-object/from16 v0, p3

    #@1c4b
    move-object/from16 v1, v328

    #@1c4d
    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1c50
    .line 1841
    const/4 v6, 0x1

    #@1c51
    return v6

    #@1c52
    .line 1845
    .end local v309    # "pids":[I
    .end local v328    # "res":[Landroid/os/Debug$MemoryInfo;
    :pswitch_93
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1c55
    move-object/from16 v0, p2

    #@1c57
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c5a
    .line 1846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c5d
    move-result-object v0

    #@1c5e
    move-object/16 v314, v0

    #@1c61
    .line 1847
    .local v314, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c64
    move-result v132

    #@1c65
    .line 1848
    .restart local v132    # "uid":I
    move-object/from16 v0, p0

    #@1c67
    move-object/from16 v1, v314

    #@1c69
    move/from16 v2, v132

    #@1c6b
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    #@1c6e
    .line 1849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c71
    .line 1850
    const/4 v6, 0x1

    #@1c72
    return v6

    #@1c73
    .line 1854
    .end local v132    # "uid":I
    .end local v314    # "processName":Ljava/lang/String;
    :pswitch_94
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1c76
    move-object/from16 v0, p2

    #@1c78
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c7b
    .line 1855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1c7e
    move-result-object v93

    #@1c7f
    .line 1856
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c82
    move-result-object v32

    #@1c83
    .line 1857
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c86
    move-result v234

    #@1c87
    .line 1858
    .local v234, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c8a
    move-result v235

    #@1c8b
    .line 1859
    .local v235, "exitAnim":I
    move-object/from16 v0, p0

    #@1c8d
    move-object/from16 v1, v93

    #@1c8f
    move-object/from16 v2, v32

    #@1c91
    move/from16 v3, v234

    #@1c93
    move/from16 v4, v235

    #@1c95
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    #@1c98
    .line 1860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c9b
    .line 1861
    const/4 v6, 0x1

    #@1c9c
    return v6

    #@1c9d
    .line 1865
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v234    # "enterAnim":I
    .end local v235    # "exitAnim":I
    :pswitch_95
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1ca0
    move-object/from16 v0, p2

    #@1ca2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ca5
    .line 1866
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    #@1ca8
    move-result v211

    #@1ca9
    .line 1867
    .local v211, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cac
    .line 1868
    if-eqz v211, :cond_75

    #@1cae
    const/4 v6, 0x1

    #@1caf
    :goto_64
    move-object/from16 v0, p3

    #@1cb1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1cb4
    .line 1869
    const/4 v6, 0x1

    #@1cb5
    return v6

    #@1cb6
    .line 1868
    :cond_75
    const/4 v6, 0x0

    #@1cb7
    goto :goto_64

    #@1cb8
    .line 1873
    .end local v211    # "areThey":Z
    :pswitch_96
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1cbb
    move-object/from16 v0, p2

    #@1cbd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cc0
    .line 1874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cc3
    move-result v6

    #@1cc4
    const/16 v18, 0x1

    #@1cc6
    move/from16 v0, v18

    #@1cc8
    if-ne v6, v0, :cond_76

    #@1cca
    const/4 v0, 0x1

    #@1ccb
    move/16 v289, v0

    #@1cce
    .line 1875
    .local v289, "monkey":Z
    :goto_65
    move-object/from16 v0, p0

    #@1cd0
    move/from16 v1, v289

    #@1cd2
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    #@1cd5
    .line 1876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cd8
    .line 1877
    const/4 v6, 0x1

    #@1cd9
    return v6

    #@1cda
    .line 1874
    .end local v289    # "monkey":Z
    :cond_76
    const/4 v0, 0x0

    #@1cdb
    move/16 v289, v0

    #@1cde
    goto :goto_65

    #@1cdf
    .line 1881
    :pswitch_97
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1ce2
    move-object/from16 v0, p2

    #@1ce4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ce7
    .line 1882
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    #@1cea
    .line 1883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ced
    .line 1884
    const/4 v6, 0x1

    #@1cee
    return v6

    #@1cef
    .line 1888
    :pswitch_98
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1cf2
    move-object/from16 v0, p2

    #@1cf4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cf7
    .line 1889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1cfa
    move-result-object v93

    #@1cfb
    .line 1890
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1cfd
    move-object/from16 v1, v93

    #@1cff
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    #@1d02
    move-result v0

    #@1d03
    move/16 v270, v0

    #@1d06
    .line 1891
    .local v270, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d09
    .line 1892
    move/from16 v0, v270

    #@1d0b
    if-eqz v0, :cond_77

    #@1d0d
    const/4 v6, 0x1

    #@1d0e
    :goto_66
    move-object/from16 v0, p3

    #@1d10
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1d13
    .line 1893
    const/4 v6, 0x1

    #@1d14
    return v6

    #@1d15
    .line 1892
    :cond_77
    const/4 v6, 0x0

    #@1d16
    goto :goto_66

    #@1d17
    .line 1897
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v270    # "isit":Z
    :pswitch_99
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1d1a
    move-object/from16 v0, p2

    #@1d1c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d1f
    .line 1898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d22
    move-result-object v93

    #@1d23
    .line 1899
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1d25
    move-object/from16 v1, v93

    #@1d27
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    #@1d2a
    move-result v0

    #@1d2b
    move/16 v269, v0

    #@1d2e
    .line 1900
    .local v269, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d31
    .line 1901
    move/from16 v0, v269

    #@1d33
    if-eqz v0, :cond_78

    #@1d35
    const/4 v6, 0x1

    #@1d36
    :goto_67
    move-object/from16 v0, p3

    #@1d38
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1d3b
    .line 1902
    const/4 v6, 0x1

    #@1d3c
    return v6

    #@1d3d
    .line 1901
    :cond_78
    const/4 v6, 0x0

    #@1d3e
    goto :goto_67

    #@1d3f
    .line 1906
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v269    # "isTopOfTask":Z
    :pswitch_9a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1d42
    move-object/from16 v0, p2

    #@1d44
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d47
    .line 1907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d4a
    move-result-object v93

    #@1d4b
    .line 1908
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1d4d
    move-object/from16 v1, v93

    #@1d4f
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    #@1d52
    move-result v225

    #@1d53
    .line 1909
    .local v225, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d56
    .line 1910
    if-eqz v225, :cond_79

    #@1d58
    const/4 v6, 0x1

    #@1d59
    :goto_68
    move-object/from16 v0, p3

    #@1d5b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1d5e
    .line 1911
    const/4 v6, 0x1

    #@1d5f
    return v6

    #@1d60
    .line 1910
    :cond_79
    const/4 v6, 0x0

    #@1d61
    goto :goto_68

    #@1d62
    .line 1915
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v225    # "converted":Z
    :pswitch_9b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1d65
    move-object/from16 v0, p2

    #@1d67
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d6a
    .line 1916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d6d
    move-result-object v93

    #@1d6e
    .line 1918
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d71
    move-result v6

    #@1d72
    if-nez v6, :cond_7a

    #@1d74
    .line 1919
    const/16 v217, 0x0

    #@1d76
    .line 1923
    :goto_69
    invoke-static/range {v217 .. v217}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    #@1d79
    move-result-object v0

    #@1d7a
    move-object/16 v299, v0

    #@1d7d
    .line 1924
    .local v299, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    #@1d7f
    move-object/from16 v1, v93

    #@1d81
    move-object/from16 v2, v299

    #@1d83
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    #@1d86
    move-result v225

    #@1d87
    .line 1925
    .restart local v225    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d8a
    .line 1926
    if-eqz v225, :cond_7b

    #@1d8c
    const/4 v6, 0x1

    #@1d8d
    :goto_6a
    move-object/from16 v0, p3

    #@1d8f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1d92
    .line 1927
    const/4 v6, 0x1

    #@1d93
    return v6

    #@1d94
    .line 1921
    .end local v225    # "converted":Z
    .end local v299    # "options":Landroid/app/ActivityOptions;
    :cond_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@1d97
    move-result-object v217

    #@1d98
    .local v217, "bundle":Landroid/os/Bundle;
    goto :goto_69

    #@1d99
    .line 1926
    .end local v217    # "bundle":Landroid/os/Bundle;
    .restart local v225    # "converted":Z
    .restart local v299    # "options":Landroid/app/ActivityOptions;
    :cond_7b
    const/4 v6, 0x0

    #@1d9a
    goto :goto_6a

    #@1d9b
    .line 1931
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v225    # "converted":Z
    .end local v299    # "options":Landroid/app/ActivityOptions;
    :pswitch_9c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1d9e
    move-object/from16 v0, p2

    #@1da0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1da3
    .line 1932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1da6
    move-result-object v93

    #@1da7
    .line 1933
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1da9
    move-object/from16 v1, v93

    #@1dab
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    #@1dae
    move-result-object v0

    #@1daf
    move-object/16 v299, v0

    #@1db2
    .line 1934
    .restart local v299    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1db5
    .line 1935
    move-object/from16 v0, v299

    #@1db7
    if-nez v0, :cond_7c

    #@1db9
    const/4 v6, 0x0

    #@1dba
    :goto_6b
    move-object/from16 v0, p3

    #@1dbc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@1dbf
    .line 1936
    const/4 v6, 0x1

    #@1dc0
    return v6

    #@1dc1
    .line 1935
    :cond_7c
    invoke-virtual/range {v299 .. v299}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@1dc4
    move-result-object v6

    #@1dc5
    goto :goto_6b

    #@1dc6
    .line 1940
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v299    # "options":Landroid/app/ActivityOptions;
    :pswitch_9d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1dc9
    move-object/from16 v0, p2

    #@1dcb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1dce
    .line 1941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1dd1
    move-result-object v93

    #@1dd2
    .line 1942
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1dd5
    move-result v6

    #@1dd6
    const/16 v18, 0x1

    #@1dd8
    move/from16 v0, v18

    #@1dda
    if-ne v6, v0, :cond_7d

    #@1ddc
    const/16 v253, 0x1

    #@1dde
    .line 1943
    .local v253, "imm":Z
    :goto_6c
    move-object/from16 v0, p0

    #@1de0
    move-object/from16 v1, v93

    #@1de2
    move/from16 v2, v253

    #@1de4
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    #@1de7
    .line 1944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1dea
    .line 1945
    const/4 v6, 0x1

    #@1deb
    return v6

    #@1dec
    .line 1942
    .end local v253    # "imm":Z
    :cond_7d
    const/16 v253, 0x0

    #@1dee
    goto :goto_6c

    #@1def
    .line 1949
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_9e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1df2
    move-object/from16 v0, p2

    #@1df4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1df7
    .line 1950
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    #@1dfa
    move-result v0

    #@1dfb
    move/16 v270, v0

    #@1dfe
    .line 1951
    .restart local v270    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e01
    .line 1952
    move/from16 v0, v270

    #@1e03
    if-eqz v0, :cond_7e

    #@1e05
    const/4 v6, 0x1

    #@1e06
    :goto_6d
    move-object/from16 v0, p3

    #@1e08
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1e0b
    .line 1953
    const/4 v6, 0x1

    #@1e0c
    return v6

    #@1e0d
    .line 1952
    :cond_7e
    const/4 v6, 0x0

    #@1e0e
    goto :goto_6d

    #@1e0f
    .line 1957
    .end local v270    # "isit":Z
    :pswitch_9f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1e12
    move-object/from16 v0, p2

    #@1e14
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e17
    .line 1958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e1a
    move-result v132

    #@1e1b
    .line 1959
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e1e
    move-result v0

    #@1e1f
    move/16 v263, v0

    #@1e22
    .line 1960
    .local v263, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e25
    move-result-object v32

    #@1e26
    .line 1961
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e29
    move-result-object v0

    #@1e2a
    move-object/16 v287, v0

    #@1e2d
    .line 1962
    .local v287, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1e2f
    move/from16 v1, v132

    #@1e31
    move/from16 v2, v263

    #@1e33
    move-object/from16 v3, v32

    #@1e35
    move-object/from16 v4, v287

    #@1e37
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    #@1e3a
    .line 1963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e3d
    .line 1964
    const/4 v6, 0x1

    #@1e3e
    return v6

    #@1e3f
    .line 1968
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v132    # "uid":I
    .end local v263    # "initialPid":I
    .end local v287    # "message":Ljava/lang/String;
    :pswitch_a0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1e42
    move-object/from16 v0, p2

    #@1e44
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e47
    .line 1969
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e49
    move-object/from16 v0, p2

    #@1e4b
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e4e
    move-result-object v130

    #@1e4f
    check-cast v130, Landroid/net/Uri;

    #@1e51
    .line 1970
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e54
    move-result v17

    #@1e55
    .line 1971
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1e57
    move-object/from16 v1, v130

    #@1e59
    move/from16 v2, v17

    #@1e5b
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    #@1e5e
    move-result-object v0

    #@1e5f
    move-object/16 v362, v0

    #@1e62
    .line 1972
    .local v362, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e65
    .line 1973
    move-object/from16 v0, p3

    #@1e67
    move-object/from16 v1, v362

    #@1e69
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e6c
    .line 1974
    const/4 v6, 0x1

    #@1e6d
    return v6

    #@1e6e
    .line 1978
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v362    # "type":Ljava/lang/String;
    :pswitch_a1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1e71
    move-object/from16 v0, p2

    #@1e73
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e76
    .line 1979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e79
    move-result-object v127

    #@1e7a
    .line 1980
    .restart local v127    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1e7c
    move-object/from16 v1, v127

    #@1e7e
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    #@1e81
    move-result-object v0

    #@1e82
    move-object/16 v304, v0

    #@1e85
    .line 1981
    .local v304, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e88
    .line 1982
    move-object/from16 v0, p3

    #@1e8a
    move-object/from16 v1, v304

    #@1e8c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1e8f
    .line 1983
    const/4 v6, 0x1

    #@1e90
    return v6

    #@1e91
    .line 1987
    .end local v127    # "name":Ljava/lang/String;
    .end local v304    # "perm":Landroid/os/IBinder;
    :pswitch_a2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1e94
    move-object/from16 v0, p2

    #@1e96
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e99
    .line 1988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1e9c
    move-result-object v173

    #@1e9d
    .line 1989
    .restart local v173    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1e9f
    move-object/from16 v1, v173

    #@1ea1
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    #@1ea4
    move-result-object v0

    #@1ea5
    move-object/16 v304, v0

    #@1ea8
    .line 1990
    .restart local v304    # "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1eab
    .line 1991
    move-object/from16 v0, p3

    #@1ead
    move-object/from16 v1, v304

    #@1eaf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1eb2
    .line 1992
    const/4 v6, 0x1

    #@1eb3
    return v6

    #@1eb4
    .line 1996
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v304    # "perm":Landroid/os/IBinder;
    :pswitch_a3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1eb7
    move-object/from16 v0, p2

    #@1eb9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ebc
    .line 1997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1ebf
    move-result-object v146

    #@1ec0
    .line 1998
    .local v146, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ec3
    move-result v147

    #@1ec4
    .line 1999
    .local v147, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ec7
    move-result-object v138

    #@1ec8
    .line 2000
    .restart local v138    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1eca
    move-object/from16 v0, p2

    #@1ecc
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ecf
    move-result-object v130

    #@1ed0
    check-cast v130, Landroid/net/Uri;

    #@1ed2
    .line 2001
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ed5
    move-result v133

    #@1ed6
    .line 2002
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ed9
    move-result v151

    #@1eda
    .line 2003
    .local v151, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1edd
    move-result v152

    #@1ede
    .local v152, "targetUserId":I
    move-object/from16 v145, p0

    #@1ee0
    move-object/from16 v148, v138

    #@1ee2
    move-object/from16 v149, v130

    #@1ee4
    move/from16 v150, v133

    #@1ee6
    .line 2004
    invoke-virtual/range {v145 .. v152}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    #@1ee9
    .line 2006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1eec
    .line 2007
    const/4 v6, 0x1

    #@1eed
    return v6

    #@1eee
    .line 2011
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    .end local v138    # "targetPkg":Ljava/lang/String;
    .end local v146    # "owner":Landroid/os/IBinder;
    .end local v147    # "fromUid":I
    .end local v151    # "sourceUserId":I
    .end local v152    # "targetUserId":I
    :pswitch_a4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1ef1
    move-object/from16 v0, p2

    #@1ef3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ef6
    .line 2012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1ef9
    move-result-object v146

    #@1efa
    .line 2013
    .restart local v146    # "owner":Landroid/os/IBinder;
    const/16 v130, 0x0

    #@1efc
    .line 2014
    .local v130, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1eff
    move-result v6

    #@1f00
    if-eqz v6, :cond_7f

    #@1f02
    .line 2015
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f04
    move-object/from16 v0, p2

    #@1f06
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f09
    move-result-object v130

    #@1f0a
    .end local v130    # "uri":Landroid/net/Uri;
    check-cast v130, Landroid/net/Uri;

    #@1f0c
    .line 2017
    :cond_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f0f
    move-result v133

    #@1f10
    .line 2018
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f13
    move-result v17

    #@1f14
    .line 2019
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1f16
    move-object/from16 v1, v146

    #@1f18
    move-object/from16 v2, v130

    #@1f1a
    move/from16 v3, v133

    #@1f1c
    move/from16 v4, v17

    #@1f1e
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    #@1f21
    .line 2020
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f24
    .line 2021
    const/4 v6, 0x1

    #@1f25
    return v6

    #@1f26
    .line 2025
    .end local v17    # "userId":I
    .end local v133    # "mode":I
    .end local v146    # "owner":Landroid/os/IBinder;
    :pswitch_a5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1f29
    move-object/from16 v0, p2

    #@1f2b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f2e
    .line 2026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f31
    move-result v43

    #@1f32
    .line 2027
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f35
    move-result-object v138

    #@1f36
    .line 2028
    .restart local v138    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f38
    move-object/from16 v0, p2

    #@1f3a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f3d
    move-result-object v130

    #@1f3e
    check-cast v130, Landroid/net/Uri;

    #@1f40
    .line 2029
    .local v130, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f43
    move-result v157

    #@1f44
    .line 2030
    .local v157, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f47
    move-result v17

    #@1f48
    .restart local v17    # "userId":I
    move-object/from16 v153, p0

    #@1f4a
    move/from16 v154, v43

    #@1f4c
    move-object/from16 v155, v138

    #@1f4e
    move-object/from16 v156, v130

    #@1f50
    move/from16 v158, v17

    #@1f52
    .line 2031
    invoke-virtual/range {v153 .. v158}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    #@1f55
    move-result v0

    #@1f56
    move/16 v321, v0

    #@1f59
    .line 2032
    .restart local v321    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f5c
    .line 2033
    move-object/from16 v0, p3

    #@1f5e
    move/from16 v1, v321

    #@1f60
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f63
    .line 2034
    const/4 v6, 0x1

    #@1f64
    return v6

    #@1f65
    .line 2038
    .end local v17    # "userId":I
    .end local v43    # "callingUid":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v138    # "targetPkg":Ljava/lang/String;
    .end local v157    # "modeFlags":I
    .end local v321    # "res":I
    :pswitch_a6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1f68
    move-object/from16 v0, p2

    #@1f6a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f6d
    .line 2039
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f70
    move-result-object v140

    #@1f71
    .line 2040
    .restart local v140    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f74
    move-result v17

    #@1f75
    .line 2041
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f78
    move-result v6

    #@1f79
    if-eqz v6, :cond_80

    #@1f7b
    const/16 v161, 0x1

    #@1f7d
    .line 2042
    .local v161, "managed":Z
    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f80
    move-result-object v162

    #@1f81
    .line 2043
    .local v162, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f84
    move-result v6

    #@1f85
    if-eqz v6, :cond_81

    #@1f87
    .line 2044
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f89
    move-object/from16 v0, p2

    #@1f8b
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f8e
    move-result-object v6

    #@1f8f
    check-cast v6, Landroid/os/ParcelFileDescriptor;

    #@1f91
    move-object/from16 v163, v6

    #@1f93
    .local v163, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_6f
    move-object/from16 v158, p0

    #@1f95
    move-object/from16 v159, v140

    #@1f97
    move/from16 v160, v17

    #@1f99
    .line 2045
    invoke-virtual/range {v158 .. v163}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    #@1f9c
    move-result v0

    #@1f9d
    move/16 v327, v0

    #@1fa0
    .line 2046
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fa3
    .line 2047
    move/from16 v0, v327

    #@1fa5
    if-eqz v0, :cond_82

    #@1fa7
    const/4 v6, 0x1

    #@1fa8
    :goto_70
    move-object/from16 v0, p3

    #@1faa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1fad
    .line 2048
    const/4 v6, 0x1

    #@1fae
    return v6

    #@1faf
    .line 2041
    .end local v161    # "managed":Z
    .end local v162    # "path":Ljava/lang/String;
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v327    # "res":Z
    :cond_80
    const/16 v161, 0x0

    #@1fb1
    .restart local v161    # "managed":Z
    goto :goto_6e

    #@1fb2
    .line 2044
    .restart local v162    # "path":Ljava/lang/String;
    :cond_81
    const/16 v163, 0x0

    #@1fb4
    goto :goto_6f

    #@1fb5
    .line 2047
    .restart local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v327    # "res":Z
    :cond_82
    const/4 v6, 0x0

    #@1fb6
    goto :goto_70

    #@1fb7
    .line 2053
    .end local v17    # "userId":I
    .end local v140    # "process":Ljava/lang/String;
    .end local v161    # "managed":Z
    .end local v162    # "path":Ljava/lang/String;
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v327    # "res":Z
    :pswitch_a7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1fba
    move-object/from16 v0, p2

    #@1fbc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fbf
    .line 2054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1fc2
    move-result-object v213

    #@1fc3
    .line 2055
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@1fc6
    move-result-object v7

    #@1fc7
    .line 2056
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1fca
    move-result-object v8

    #@1fcb
    .line 2057
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1fcd
    move-object/from16 v0, p2

    #@1fcf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1fd2
    move-result-object v167

    #@1fd3
    check-cast v167, [Landroid/content/Intent;

    #@1fd5
    .line 2058
    .local v167, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1fd8
    move-result-object v168

    #@1fd9
    .line 2059
    .local v168, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1fdc
    move-result-object v11

    #@1fdd
    .line 2060
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fe0
    move-result v6

    #@1fe1
    if-eqz v6, :cond_83

    #@1fe3
    .line 2061
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1fe5
    move-object/from16 v0, p2

    #@1fe7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1fea
    move-result-object v16

    #@1feb
    check-cast v16, Landroid/os/Bundle;

    #@1fed
    .line 2062
    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ff0
    move-result v17

    #@1ff1
    .restart local v17    # "userId":I
    move-object/from16 v164, p0

    #@1ff3
    move-object/from16 v165, v7

    #@1ff5
    move-object/from16 v166, v8

    #@1ff7
    move-object/from16 v169, v11

    #@1ff9
    move-object/from16 v170, v16

    #@1ffb
    move/from16 v171, v17

    #@1ffd
    .line 2063
    invoke-virtual/range {v164 .. v171}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    #@2000
    move-result v0

    #@2001
    move/16 v331, v0

    #@2004
    .line 2065
    .restart local v331    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2007
    .line 2066
    move-object/from16 v0, p3

    #@2009
    move/from16 v1, v331

    #@200b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@200e
    .line 2067
    const/4 v6, 0x1

    #@200f
    return v6

    #@2010
    .line 2061
    .end local v17    # "userId":I
    .end local v331    # "result":I
    :cond_83
    const/16 v16, 0x0

    #@2012
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_71

    #@2013
    .line 2072
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v167    # "intents":[Landroid/content/Intent;
    .end local v168    # "resolvedTypes":[Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_a8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2016
    move-object/from16 v0, p2

    #@2018
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@201b
    .line 2073
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    #@201e
    move-result v133

    #@201f
    .line 2074
    .restart local v133    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2022
    .line 2075
    move-object/from16 v0, p3

    #@2024
    move/from16 v1, v133

    #@2026
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2029
    .line 2076
    const/4 v6, 0x1

    #@202a
    return v6

    #@202b
    .line 2081
    .end local v133    # "mode":I
    :pswitch_a9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@202e
    move-object/from16 v0, p2

    #@2030
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2033
    .line 2082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2036
    move-result v133

    #@2037
    .line 2083
    .restart local v133    # "mode":I
    move-object/from16 v0, p0

    #@2039
    move/from16 v1, v133

    #@203b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    #@203e
    .line 2084
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2041
    .line 2085
    move-object/from16 v0, p3

    #@2043
    move/from16 v1, v133

    #@2045
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2048
    .line 2086
    const/4 v6, 0x1

    #@2049
    return v6

    #@204a
    .line 2091
    .end local v133    # "mode":I
    :pswitch_aa
    const-string/jumbo v6, "android.app.IActivityManager"

    #@204d
    move-object/from16 v0, p2

    #@204f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2052
    .line 2092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2055
    move-result-object v0

    #@2056
    move-object/16 v310, v0

    #@2059
    .line 2093
    .restart local v310    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@205b
    move-object/from16 v1, v310

    #@205d
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    #@2060
    move-result v133

    #@2061
    .line 2094
    .restart local v133    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2064
    .line 2095
    move-object/from16 v0, p3

    #@2066
    move/from16 v1, v133

    #@2068
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@206b
    .line 2096
    const/4 v6, 0x1

    #@206c
    return v6

    #@206d
    .line 2101
    .end local v133    # "mode":I
    .end local v310    # "pkg":Ljava/lang/String;
    :pswitch_ab
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2070
    move-object/from16 v0, p2

    #@2072
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2075
    .line 2102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2078
    move-result-object v0

    #@2079
    move-object/16 v310, v0

    #@207c
    .line 2103
    .restart local v310    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@207f
    move-result v133

    #@2080
    .line 2104
    .restart local v133    # "mode":I
    move-object/from16 v0, p0

    #@2082
    move-object/from16 v1, v310

    #@2084
    move/from16 v2, v133

    #@2086
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    #@2089
    .line 2105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@208c
    .line 2106
    const/4 v6, 0x1

    #@208d
    return v6

    #@208e
    .line 2110
    .end local v133    # "mode":I
    .end local v310    # "pkg":Ljava/lang/String;
    :pswitch_ac
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2091
    move-object/from16 v0, p2

    #@2093
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2096
    .line 2111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2099
    move-result v0

    #@209a
    move/16 v365, v0

    #@209d
    .line 2112
    .local v365, "userid":I
    move-object/from16 v0, p0

    #@209f
    move/from16 v1, v365

    #@20a1
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    #@20a4
    move-result v0

    #@20a5
    move/16 v333, v0

    #@20a8
    .line 2113
    .restart local v333    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20ab
    .line 2114
    move/from16 v0, v333

    #@20ad
    if-eqz v0, :cond_84

    #@20af
    const/4 v6, 0x1

    #@20b0
    :goto_72
    move-object/from16 v0, p3

    #@20b2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@20b5
    .line 2115
    const/4 v6, 0x1

    #@20b6
    return v6

    #@20b7
    .line 2114
    :cond_84
    const/4 v6, 0x0

    #@20b8
    goto :goto_72

    #@20b9
    .line 2119
    .end local v333    # "result":Z
    .end local v365    # "userid":I
    :pswitch_ad
    const-string/jumbo v6, "android.app.IActivityManager"

    #@20bc
    move-object/from16 v0, p2

    #@20be
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20c1
    .line 2120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20c4
    move-result v0

    #@20c5
    move/16 v365, v0

    #@20c8
    .line 2121
    .restart local v365    # "userid":I
    move-object/from16 v0, p0

    #@20ca
    move/from16 v1, v365

    #@20cc
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    #@20cf
    move-result v0

    #@20d0
    move/16 v333, v0

    #@20d3
    .line 2122
    .restart local v333    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20d6
    .line 2123
    move/from16 v0, v333

    #@20d8
    if-eqz v0, :cond_85

    #@20da
    const/4 v6, 0x1

    #@20db
    :goto_73
    move-object/from16 v0, p3

    #@20dd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@20e0
    .line 2124
    const/4 v6, 0x1

    #@20e1
    return v6

    #@20e2
    .line 2123
    :cond_85
    const/4 v6, 0x0

    #@20e3
    goto :goto_73

    #@20e4
    .line 2128
    .end local v333    # "result":Z
    .end local v365    # "userid":I
    :pswitch_ae
    const-string/jumbo v6, "android.app.IActivityManager"

    #@20e7
    move-object/from16 v0, p2

    #@20e9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20ec
    .line 2129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20ef
    move-result v17

    #@20f0
    .line 2130
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@20f3
    move-result-object v0

    #@20f4
    move-object/16 v361, v0

    #@20f7
    .line 2131
    .local v361, "token":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@20fa
    move-result-object v0

    #@20fb
    move-object/16 v337, v0

    #@20fe
    .line 2133
    .local v337, "secret":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2101
    move-result-object v6

    #@2102
    .line 2132
    invoke-static {v6}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    #@2105
    move-result-object v0

    #@2106
    move-object/16 v282, v0

    #@2109
    .line 2134
    .local v282, "listener":Landroid/os/IProgressListener;
    move-object/from16 v0, p0

    #@210b
    move/from16 v1, v17

    #@210d
    move-object/from16 v2, v361

    #@210f
    move-object/from16 v3, v337

    #@2111
    move-object/from16 v4, v282

    #@2113
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    #@2116
    move-result v0

    #@2117
    move/16 v333, v0

    #@211a
    .line 2135
    .restart local v333    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@211d
    .line 2136
    move/from16 v0, v333

    #@211f
    if-eqz v0, :cond_86

    #@2121
    const/4 v6, 0x1

    #@2122
    :goto_74
    move-object/from16 v0, p3

    #@2124
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2127
    .line 2137
    const/4 v6, 0x1

    #@2128
    return v6

    #@2129
    .line 2136
    :cond_86
    const/4 v6, 0x0

    #@212a
    goto :goto_74

    #@212b
    .line 2141
    .end local v17    # "userId":I
    .end local v282    # "listener":Landroid/os/IProgressListener;
    .end local v333    # "result":Z
    .end local v337    # "secret":[B
    .end local v361    # "token":[B
    :pswitch_af
    const-string/jumbo v6, "android.app.IActivityManager"

    #@212e
    move-object/from16 v0, p2

    #@2130
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2133
    .line 2142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2136
    move-result v0

    #@2137
    move/16 v365, v0

    #@213a
    .line 2143
    .restart local v365    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@213d
    move-result v6

    #@213e
    if-eqz v6, :cond_87

    #@2140
    const/16 v240, 0x1

    #@2142
    .line 2145
    .local v240, "force":Z
    :goto_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2145
    move-result-object v6

    #@2146
    .line 2144
    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    #@2149
    move-result-object v219

    #@214a
    .line 2146
    .local v219, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    #@214c
    move/from16 v1, v365

    #@214e
    move/from16 v2, v240

    #@2150
    move-object/from16 v3, v219

    #@2152
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopUser(IZLandroid/app/IStopUserCallback;)I

    #@2155
    move-result v0

    #@2156
    move/16 v331, v0

    #@2159
    .line 2147
    .restart local v331    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@215c
    .line 2148
    move-object/from16 v0, p3

    #@215e
    move/from16 v1, v331

    #@2160
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2163
    .line 2149
    const/4 v6, 0x1

    #@2164
    return v6

    #@2165
    .line 2143
    .end local v219    # "callback":Landroid/app/IStopUserCallback;
    .end local v240    # "force":Z
    .end local v331    # "result":I
    :cond_87
    const/16 v240, 0x0

    #@2167
    .restart local v240    # "force":Z
    goto :goto_75

    #@2168
    .line 2153
    .end local v240    # "force":Z
    .end local v365    # "userid":I
    :pswitch_b0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@216b
    move-object/from16 v0, p2

    #@216d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2170
    .line 2154
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@2173
    move-result-object v0

    #@2174
    move-object/16 v364, v0

    #@2177
    .line 2155
    .local v364, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@217a
    .line 2156
    const/4 v6, 0x0

    #@217b
    move-object/from16 v0, v364

    #@217d
    move-object/from16 v1, p3

    #@217f
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@2182
    .line 2157
    const/4 v6, 0x1

    #@2183
    return v6

    #@2184
    .line 2161
    .end local v364    # "userInfo":Landroid/content/pm/UserInfo;
    :pswitch_b1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2187
    move-object/from16 v0, p2

    #@2189
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@218c
    .line 2162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@218f
    move-result v0

    #@2190
    move/16 v365, v0

    #@2193
    .line 2163
    .restart local v365    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2196
    move-result v203

    #@2197
    .line 2164
    .local v203, "_flags":I
    move-object/from16 v0, p0

    #@2199
    move/from16 v1, v365

    #@219b
    move/from16 v2, v203

    #@219d
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(II)Z

    #@21a0
    move-result v0

    #@21a1
    move/16 v333, v0

    #@21a4
    .line 2165
    .restart local v333    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21a7
    .line 2166
    move/from16 v0, v333

    #@21a9
    if-eqz v0, :cond_88

    #@21ab
    const/4 v6, 0x1

    #@21ac
    :goto_76
    move-object/from16 v0, p3

    #@21ae
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@21b1
    .line 2167
    const/4 v6, 0x1

    #@21b2
    return v6

    #@21b3
    .line 2166
    :cond_88
    const/4 v6, 0x0

    #@21b4
    goto :goto_76

    #@21b5
    .line 2171
    .end local v203    # "_flags":I
    .end local v333    # "result":Z
    .end local v365    # "userid":I
    :pswitch_b2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@21b8
    move-object/from16 v0, p2

    #@21ba
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21bd
    .line 2172
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    #@21c0
    move-result-object v0

    #@21c1
    move-object/16 v334, v0

    #@21c4
    .line 2173
    .local v334, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21c7
    .line 2174
    move-object/from16 v0, p3

    #@21c9
    move-object/from16 v1, v334

    #@21cb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@21ce
    .line 2175
    const/4 v6, 0x1

    #@21cf
    return v6

    #@21d0
    .line 2180
    .end local v334    # "result":[I
    :pswitch_b3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@21d3
    move-object/from16 v0, p2

    #@21d5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21d8
    .line 2181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21db
    move-result v69

    #@21dc
    .line 2182
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    #@21de
    move/from16 v1, v69

    #@21e0
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeTask(I)Z

    #@21e3
    move-result v0

    #@21e4
    move/16 v333, v0

    #@21e7
    .line 2183
    .restart local v333    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21ea
    .line 2184
    move/from16 v0, v333

    #@21ec
    if-eqz v0, :cond_89

    #@21ee
    const/4 v6, 0x1

    #@21ef
    :goto_77
    move-object/from16 v0, p3

    #@21f1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@21f4
    .line 2185
    const/4 v6, 0x1

    #@21f5
    return v6

    #@21f6
    .line 2184
    :cond_89
    const/4 v6, 0x0

    #@21f7
    goto :goto_77

    #@21f8
    .line 2189
    .end local v69    # "taskId":I
    .end local v333    # "result":Z
    :pswitch_b4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@21fb
    move-object/from16 v0, p2

    #@21fd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2200
    .line 2191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2203
    move-result-object v6

    #@2204
    .line 2190
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    #@2207
    move-result-object v0

    #@2208
    move-object/16 v292, v0

    #@220b
    .line 2192
    .local v292, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    #@220d
    move-object/from16 v1, v292

    #@220f
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    #@2212
    .line 2193
    const/4 v6, 0x1

    #@2213
    return v6

    #@2214
    .line 2197
    .end local v292    # "observer":Landroid/app/IProcessObserver;
    :pswitch_b5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2217
    move-object/from16 v0, p2

    #@2219
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@221c
    .line 2199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@221f
    move-result-object v6

    #@2220
    .line 2198
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    #@2223
    move-result-object v0

    #@2224
    move-object/16 v292, v0

    #@2227
    .line 2200
    .restart local v292    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    #@2229
    move-object/from16 v1, v292

    #@222b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    #@222e
    .line 2201
    const/4 v6, 0x1

    #@222f
    return v6

    #@2230
    .line 2205
    .end local v292    # "observer":Landroid/app/IProcessObserver;
    :pswitch_b6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2233
    move-object/from16 v0, p2

    #@2235
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2238
    .line 2207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@223b
    move-result-object v6

    #@223c
    .line 2206
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    #@223f
    move-result-object v0

    #@2240
    move-object/16 v293, v0

    #@2243
    .line 2208
    .local v293, "observer":Landroid/app/IUidObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2246
    move-result v0

    #@2247
    move/16 v372, v0

    #@224a
    .line 2209
    .local v372, "which":I
    move-object/from16 v0, p0

    #@224c
    move-object/from16 v1, v293

    #@224e
    move/from16 v2, v372

    #@2250
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->registerUidObserver(Landroid/app/IUidObserver;I)V

    #@2253
    .line 2210
    const/4 v6, 0x1

    #@2254
    return v6

    #@2255
    .line 2214
    .end local v293    # "observer":Landroid/app/IUidObserver;
    .end local v372    # "which":I
    :pswitch_b7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2258
    move-object/from16 v0, p2

    #@225a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@225d
    .line 2216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2260
    move-result-object v6

    #@2261
    .line 2215
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    #@2264
    move-result-object v0

    #@2265
    move-object/16 v293, v0

    #@2268
    .line 2217
    .restart local v293    # "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    #@226a
    move-object/from16 v1, v293

    #@226c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    #@226f
    .line 2218
    const/4 v6, 0x1

    #@2270
    return v6

    #@2271
    .line 2223
    .end local v293    # "observer":Landroid/app/IUidObserver;
    :pswitch_b8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2274
    move-object/from16 v0, p2

    #@2276
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2279
    .line 2224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@227c
    move-result-object v0

    #@227d
    move-object/16 v310, v0

    #@2280
    .line 2225
    .restart local v310    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2282
    move-object/from16 v1, v310

    #@2284
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    #@2287
    move-result v212

    #@2288
    .line 2226
    .local v212, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@228b
    .line 2227
    if-eqz v212, :cond_8a

    #@228d
    const/4 v6, 0x1

    #@228e
    :goto_78
    move-object/from16 v0, p3

    #@2290
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2293
    .line 2228
    const/4 v6, 0x1

    #@2294
    return v6

    #@2295
    .line 2227
    :cond_8a
    const/4 v6, 0x0

    #@2296
    goto :goto_78

    #@2297
    .line 2233
    .end local v212    # "ask":Z
    .end local v310    # "pkg":Ljava/lang/String;
    :pswitch_b9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@229a
    move-object/from16 v0, p2

    #@229c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@229f
    .line 2234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22a2
    move-result-object v0

    #@22a3
    move-object/16 v310, v0

    #@22a6
    .line 2235
    .restart local v310    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22a9
    move-result v6

    #@22aa
    if-eqz v6, :cond_8b

    #@22ac
    const/16 v212, 0x1

    #@22ae
    .line 2236
    .restart local v212    # "ask":Z
    :goto_79
    move-object/from16 v0, p0

    #@22b0
    move-object/from16 v1, v310

    #@22b2
    move/from16 v2, v212

    #@22b4
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    #@22b7
    .line 2237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22ba
    .line 2238
    const/4 v6, 0x1

    #@22bb
    return v6

    #@22bc
    .line 2235
    .end local v212    # "ask":Z
    :cond_8b
    const/16 v212, 0x0

    #@22be
    goto :goto_79

    #@22bf
    .line 2242
    .end local v310    # "pkg":Ljava/lang/String;
    :pswitch_ba
    const-string/jumbo v6, "android.app.IActivityManager"

    #@22c2
    move-object/from16 v0, p2

    #@22c4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22c7
    .line 2244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22ca
    move-result-object v6

    #@22cb
    .line 2243
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@22ce
    move-result-object v0

    #@22cf
    move-object/16 v317, v0

    #@22d2
    .line 2245
    .restart local v317    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@22d4
    move-object/from16 v1, v317

    #@22d6
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    #@22d9
    move-result v0

    #@22da
    move/16 v327, v0

    #@22dd
    .line 2246
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22e0
    .line 2247
    move/from16 v0, v327

    #@22e2
    if-eqz v0, :cond_8c

    #@22e4
    const/4 v6, 0x1

    #@22e5
    :goto_7a
    move-object/from16 v0, p3

    #@22e7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@22ea
    .line 2248
    const/4 v6, 0x1

    #@22eb
    return v6

    #@22ec
    .line 2247
    :cond_8c
    const/4 v6, 0x0

    #@22ed
    goto :goto_7a

    #@22ee
    .line 2252
    .end local v317    # "r":Landroid/content/IIntentSender;
    .end local v327    # "res":Z
    :pswitch_bb
    const-string/jumbo v6, "android.app.IActivityManager"

    #@22f1
    move-object/from16 v0, p2

    #@22f3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22f6
    .line 2254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22f9
    move-result-object v6

    #@22fa
    .line 2253
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@22fd
    move-result-object v0

    #@22fe
    move-object/16 v317, v0

    #@2301
    .line 2255
    .restart local v317    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@2303
    move-object/from16 v1, v317

    #@2305
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    #@2308
    move-result v0

    #@2309
    move/16 v327, v0

    #@230c
    .line 2256
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@230f
    .line 2257
    move/from16 v0, v327

    #@2311
    if-eqz v0, :cond_8d

    #@2313
    const/4 v6, 0x1

    #@2314
    :goto_7b
    move-object/from16 v0, p3

    #@2316
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2319
    .line 2258
    const/4 v6, 0x1

    #@231a
    return v6

    #@231b
    .line 2257
    :cond_8d
    const/4 v6, 0x0

    #@231c
    goto :goto_7b

    #@231d
    .line 2262
    .end local v317    # "r":Landroid/content/IIntentSender;
    .end local v327    # "res":Z
    :pswitch_bc
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2320
    move-object/from16 v0, p2

    #@2322
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2325
    .line 2264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2328
    move-result-object v6

    #@2329
    .line 2263
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@232c
    move-result-object v0

    #@232d
    move-object/16 v317, v0

    #@2330
    .line 2265
    .restart local v317    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@2332
    move-object/from16 v1, v317

    #@2334
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    #@2337
    move-result-object v9

    #@2338
    .line 2266
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@233b
    .line 2267
    if-eqz v9, :cond_8e

    #@233d
    .line 2268
    const/4 v6, 0x1

    #@233e
    move-object/from16 v0, p3

    #@2340
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2343
    .line 2269
    const/4 v6, 0x1

    #@2344
    move-object/from16 v0, p3

    #@2346
    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@2349
    .line 2273
    :goto_7c
    const/4 v6, 0x1

    #@234a
    return v6

    #@234b
    .line 2271
    :cond_8e
    const/4 v6, 0x0

    #@234c
    move-object/from16 v0, p3

    #@234e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2351
    goto :goto_7c

    #@2352
    .line 2277
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v317    # "r":Landroid/content/IIntentSender;
    :pswitch_bd
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2355
    move-object/from16 v0, p2

    #@2357
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@235a
    .line 2279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@235d
    move-result-object v6

    #@235e
    .line 2278
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@2361
    move-result-object v0

    #@2362
    move-object/16 v317, v0

    #@2365
    .line 2280
    .restart local v317    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2368
    move-result-object v0

    #@2369
    move-object/16 v313, v0

    #@236c
    .line 2281
    .local v313, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    #@236e
    move-object/from16 v1, v317

    #@2370
    move-object/from16 v2, v313

    #@2372
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    #@2375
    move-result-object v0

    #@2376
    move-object/16 v353, v0

    #@2379
    .line 2282
    .restart local v353    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@237c
    .line 2283
    move-object/from16 v0, p3

    #@237e
    move-object/from16 v1, v353

    #@2380
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2383
    .line 2284
    const/4 v6, 0x1

    #@2384
    return v6

    #@2385
    .line 2288
    .end local v313    # "prefix":Ljava/lang/String;
    .end local v317    # "r":Landroid/content/IIntentSender;
    .end local v353    # "tag":Ljava/lang/String;
    :pswitch_be
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2388
    move-object/from16 v0, p2

    #@238a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@238d
    .line 2289
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@238f
    move-object/from16 v0, p2

    #@2391
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2394
    move-result-object v39

    #@2395
    check-cast v39, Landroid/content/res/Configuration;

    #@2397
    .line 2290
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    #@2399
    move-object/from16 v1, v39

    #@239b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    #@239e
    .line 2291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23a1
    .line 2292
    const/4 v6, 0x1

    #@23a2
    return v6

    #@23a3
    .line 2296
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_bf
    const-string/jumbo v6, "android.app.IActivityManager"

    #@23a6
    move-object/from16 v0, p2

    #@23a8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23ab
    .line 2297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@23ae
    move-result-object v0

    #@23af
    move-object/16 v309, v0

    #@23b2
    .line 2298
    .restart local v309    # "pids":[I
    move-object/from16 v0, p0

    #@23b4
    move-object/from16 v1, v309

    #@23b6
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    #@23b9
    move-result-object v0

    #@23ba
    move-object/16 v316, v0

    #@23bd
    .line 2299
    .local v316, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23c0
    .line 2300
    move-object/from16 v0, p3

    #@23c2
    move-object/from16 v1, v316

    #@23c4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    #@23c7
    .line 2301
    const/4 v6, 0x1

    #@23c8
    return v6

    #@23c9
    .line 2305
    .end local v309    # "pids":[I
    .end local v316    # "pss":[J
    :pswitch_c0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@23cc
    move-object/from16 v0, p2

    #@23ce
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23d1
    .line 2306
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@23d3
    move-object/from16 v0, p2

    #@23d5
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23d8
    move-result-object v0

    #@23d9
    move-object/16 v290, v0

    #@23dc
    move-object/from16 v0, v290

    #@23de
    check-cast v0, Ljava/lang/CharSequence;

    #@23e0
    move-object/16 v290, v0

    #@23e3
    .line 2307
    .local v290, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23e6
    move-result v6

    #@23e7
    if-eqz v6, :cond_8f

    #@23e9
    const/16 v208, 0x1

    #@23eb
    .line 2308
    .local v208, "always":Z
    :goto_7d
    move-object/from16 v0, p0

    #@23ed
    move-object/from16 v1, v290

    #@23ef
    move/from16 v2, v208

    #@23f1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    #@23f4
    .line 2309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23f7
    .line 2310
    const/4 v6, 0x1

    #@23f8
    return v6

    #@23f9
    .line 2307
    .end local v208    # "always":Z
    :cond_8f
    const/16 v208, 0x0

    #@23fb
    goto :goto_7d

    #@23fc
    .line 2314
    .end local v290    # "msg":Ljava/lang/CharSequence;
    :pswitch_c1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@23ff
    move-object/from16 v0, p2

    #@2401
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2404
    .line 2315
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    #@2407
    .line 2316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@240a
    .line 2317
    const/4 v6, 0x1

    #@240b
    return v6

    #@240c
    .line 2321
    :pswitch_c2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@240f
    move-object/from16 v0, p2

    #@2411
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2414
    .line 2322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2417
    move-result v6

    #@2418
    move-object/from16 v0, p0

    #@241a
    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->keyguardGoingAway(I)V

    #@241d
    .line 2323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2420
    .line 2324
    const/4 v6, 0x1

    #@2421
    return v6

    #@2422
    .line 2328
    :pswitch_c3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2425
    move-object/from16 v0, p2

    #@2427
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@242a
    .line 2329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@242d
    move-result-object v93

    #@242e
    .line 2330
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2431
    move-result-object v229

    #@2432
    .line 2331
    .local v229, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2434
    move-object/from16 v1, v93

    #@2436
    move-object/from16 v2, v229

    #@2438
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    #@243b
    move-result v0

    #@243c
    move/16 v327, v0

    #@243f
    .line 2332
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2442
    .line 2333
    move/from16 v0, v327

    #@2444
    if-eqz v0, :cond_90

    #@2446
    const/4 v6, 0x1

    #@2447
    :goto_7e
    move-object/from16 v0, p3

    #@2449
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@244c
    .line 2334
    const/4 v6, 0x1

    #@244d
    return v6

    #@244e
    .line 2333
    :cond_90
    const/4 v6, 0x0

    #@244f
    goto :goto_7e

    #@2450
    .line 2338
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v229    # "destAffinity":Ljava/lang/String;
    .end local v327    # "res":Z
    :pswitch_c4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2453
    move-object/from16 v0, p2

    #@2455
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2458
    .line 2339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@245b
    move-result-object v93

    #@245c
    .line 2340
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@245e
    move-object/from16 v0, p2

    #@2460
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2463
    move-result-object v0

    #@2464
    move-object/16 v354, v0

    #@2467
    move-object/from16 v0, v354

    #@2469
    check-cast v0, Landroid/content/Intent;

    #@246b
    move-object/16 v354, v0

    #@246e
    .line 2341
    .local v354, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2471
    move-result v53

    #@2472
    .line 2342
    .restart local v53    # "resultCode":I
    const/4 v0, 0x0

    #@2473
    move-object/16 v335, v0

    #@2476
    .line 2343
    .restart local v335    # "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2479
    move-result v6

    #@247a
    if-eqz v6, :cond_91

    #@247c
    .line 2344
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@247e
    move-object/from16 v0, p2

    #@2480
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2483
    move-result-object v0

    #@2484
    move-object/16 v335, v0

    #@2487
    .end local v335    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v335

    #@2489
    check-cast v0, Landroid/content/Intent;

    #@248b
    move-object/16 v335, v0

    #@248e
    .line 2346
    :cond_91
    move-object/from16 v0, p0

    #@2490
    move-object/from16 v1, v93

    #@2492
    move-object/from16 v2, v354

    #@2494
    move/from16 v3, v53

    #@2496
    move-object/from16 v4, v335

    #@2498
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    #@249b
    move-result v0

    #@249c
    move/16 v327, v0

    #@249f
    .line 2347
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24a2
    .line 2348
    move/from16 v0, v327

    #@24a4
    if-eqz v0, :cond_92

    #@24a6
    const/4 v6, 0x1

    #@24a7
    :goto_7f
    move-object/from16 v0, p3

    #@24a9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@24ac
    .line 2349
    const/4 v6, 0x1

    #@24ad
    return v6

    #@24ae
    .line 2348
    :cond_92
    const/4 v6, 0x0

    #@24af
    goto :goto_7f

    #@24b0
    .line 2353
    .end local v53    # "resultCode":I
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v327    # "res":Z
    .end local v354    # "target":Landroid/content/Intent;
    :pswitch_c5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@24b3
    move-object/from16 v0, p2

    #@24b5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24b8
    .line 2354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@24bb
    move-result-object v93

    #@24bc
    .line 2355
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@24be
    move-object/from16 v1, v93

    #@24c0
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    #@24c3
    move-result v0

    #@24c4
    move/16 v321, v0

    #@24c7
    .line 2356
    .restart local v321    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24ca
    .line 2357
    move-object/from16 v0, p3

    #@24cc
    move/from16 v1, v321

    #@24ce
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@24d1
    .line 2358
    const/4 v6, 0x1

    #@24d2
    return v6

    #@24d3
    .line 2362
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v321    # "res":I
    :pswitch_c6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@24d6
    move-object/from16 v0, p2

    #@24d8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24db
    .line 2363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@24de
    move-result-object v93

    #@24df
    .line 2364
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@24e1
    move-object/from16 v1, v93

    #@24e3
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    #@24e6
    move-result-object v0

    #@24e7
    move-object/16 v326, v0

    #@24ea
    .line 2365
    .restart local v326    # "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24ed
    .line 2366
    move-object/from16 v0, p3

    #@24ef
    move-object/from16 v1, v326

    #@24f1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24f4
    .line 2367
    const/4 v6, 0x1

    #@24f5
    return v6

    #@24f6
    .line 2371
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v326    # "res":Ljava/lang/String;
    :pswitch_c7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@24f9
    move-object/from16 v0, p2

    #@24fb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24fe
    .line 2373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2501
    move-result-object v6

    #@2502
    .line 2372
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    #@2505
    move-result-object v0

    #@2506
    move-object/16 v294, v0

    #@2509
    .line 2374
    .local v294, "observer":Landroid/app/IUserSwitchObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@250c
    move-result-object v127

    #@250d
    .line 2375
    .restart local v127    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@250f
    move-object/from16 v1, v294

    #@2511
    move-object/from16 v2, v127

    #@2513
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    #@2516
    .line 2376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2519
    .line 2377
    const/4 v6, 0x1

    #@251a
    return v6

    #@251b
    .line 2381
    .end local v127    # "name":Ljava/lang/String;
    .end local v294    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_c8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@251e
    move-object/from16 v0, p2

    #@2520
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2523
    .line 2383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2526
    move-result-object v6

    #@2527
    .line 2382
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    #@252a
    move-result-object v0

    #@252b
    move-object/16 v294, v0

    #@252e
    .line 2384
    .restart local v294    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    #@2530
    move-object/from16 v1, v294

    #@2532
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    #@2535
    .line 2385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2538
    .line 2386
    const/4 v6, 0x1

    #@2539
    return v6

    #@253a
    .line 2390
    .end local v294    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_c9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@253d
    move-object/from16 v0, p2

    #@253f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2542
    .line 2391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2545
    move-result v216

    #@2546
    .line 2392
    .local v216, "bugreportType":I
    move-object/from16 v0, p0

    #@2548
    move/from16 v1, v216

    #@254a
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->requestBugReport(I)V

    #@254d
    .line 2393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2550
    .line 2394
    const/4 v6, 0x1

    #@2551
    return v6

    #@2552
    .line 2398
    .end local v216    # "bugreportType":I
    :pswitch_ca
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2555
    move-object/from16 v0, p2

    #@2557
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@255a
    .line 2399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@255d
    move-result v131

    #@255e
    .line 2400
    .restart local v131    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2561
    move-result v6

    #@2562
    if-eqz v6, :cond_93

    #@2564
    const/16 v204, 0x1

    #@2566
    .line 2401
    .local v204, "aboveSystem":Z
    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2569
    move-result-object v0

    #@256a
    move-object/16 v318, v0

    #@256d
    .line 2402
    .restart local v318    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@256f
    move/from16 v1, v131

    #@2571
    move/from16 v2, v204

    #@2573
    move-object/from16 v3, v318

    #@2575
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    #@2578
    move-result-wide v0

    #@2579
    move-wide/16 v322, v0

    #@257c
    .line 2403
    .local v322, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@257f
    .line 2404
    move-object/from16 v0, p3

    #@2581
    move-wide/from16 v1, v322

    #@2583
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@2586
    .line 2405
    const/4 v6, 0x1

    #@2587
    return v6

    #@2588
    .line 2400
    .end local v204    # "aboveSystem":Z
    .end local v318    # "reason":Ljava/lang/String;
    .end local v322    # "res":J
    :cond_93
    const/16 v204, 0x0

    #@258a
    .restart local v204    # "aboveSystem":Z
    goto :goto_80

    #@258b
    .line 2409
    .end local v131    # "pid":I
    .end local v204    # "aboveSystem":Z
    :pswitch_cb
    const-string/jumbo v6, "android.app.IActivityManager"

    #@258e
    move-object/from16 v0, p2

    #@2590
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2593
    .line 2410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2596
    move-result v170

    #@2597
    .line 2411
    .local v170, "requestType":I
    move-object/from16 v0, p0

    #@2599
    move/from16 v1, v170

    #@259b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    #@259e
    move-result-object v0

    #@259f
    move-object/16 v325, v0

    #@25a2
    .line 2412
    .local v325, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25a5
    .line 2413
    move-object/from16 v0, p3

    #@25a7
    move-object/from16 v1, v325

    #@25a9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@25ac
    .line 2414
    const/4 v6, 0x1

    #@25ad
    return v6

    #@25ae
    .line 2418
    .end local v170    # "requestType":I
    .end local v325    # "res":Landroid/os/Bundle;
    :pswitch_cc
    const-string/jumbo v6, "android.app.IActivityManager"

    #@25b1
    move-object/from16 v0, p2

    #@25b3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25b6
    .line 2419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25b9
    move-result v170

    #@25ba
    .line 2420
    .restart local v170    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25bd
    move-result-object v6

    #@25be
    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    #@25c1
    move-result-object v171

    #@25c2
    .line 2421
    .local v171, "receiver":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@25c5
    move-result-object v172

    #@25c6
    .line 2422
    .local v172, "receiverExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25c9
    move-result-object v173

    #@25ca
    .line 2423
    .restart local v173    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25cd
    move-result v6

    #@25ce
    const/16 v18, 0x1

    #@25d0
    move/from16 v0, v18

    #@25d2
    if-ne v6, v0, :cond_94

    #@25d4
    const/16 v174, 0x1

    #@25d6
    .line 2424
    .local v174, "focused":Z
    :goto_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25d9
    move-result v6

    #@25da
    const/16 v18, 0x1

    #@25dc
    move/from16 v0, v18

    #@25de
    if-ne v6, v0, :cond_95

    #@25e0
    const/16 v175, 0x1

    #@25e2
    .local v175, "newSessionId":Z
    :goto_82
    move-object/from16 v169, p0

    #@25e4
    .line 2425
    invoke-virtual/range {v169 .. v175}, Landroid/app/ActivityManagerNative;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    #@25e7
    move-result v0

    #@25e8
    move/16 v327, v0

    #@25eb
    .line 2427
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25ee
    .line 2428
    move/from16 v0, v327

    #@25f0
    if-eqz v0, :cond_96

    #@25f2
    const/4 v6, 0x1

    #@25f3
    :goto_83
    move-object/from16 v0, p3

    #@25f5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@25f8
    .line 2429
    const/4 v6, 0x1

    #@25f9
    return v6

    #@25fa
    .line 2423
    .end local v174    # "focused":Z
    .end local v175    # "newSessionId":Z
    .end local v327    # "res":Z
    :cond_94
    const/16 v174, 0x0

    #@25fc
    .restart local v174    # "focused":Z
    goto :goto_81

    #@25fd
    .line 2424
    :cond_95
    const/16 v175, 0x0

    #@25ff
    goto :goto_82

    #@2600
    .line 2428
    .restart local v175    # "newSessionId":Z
    .restart local v327    # "res":Z
    :cond_96
    const/4 v6, 0x0

    #@2601
    goto :goto_83

    #@2602
    .line 2433
    .end local v170    # "requestType":I
    .end local v171    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v172    # "receiverExtras":Landroid/os/Bundle;
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v174    # "focused":Z
    .end local v175    # "newSessionId":Z
    .end local v327    # "res":Z
    :pswitch_cd
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2605
    move-object/from16 v0, p2

    #@2607
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@260a
    .line 2434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@260d
    move-result-object v93

    #@260e
    .line 2435
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@2611
    move-result-object v178

    #@2612
    .line 2436
    .local v178, "extras":Landroid/os/Bundle;
    sget-object v6, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2614
    move-object/from16 v0, p2

    #@2616
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2619
    move-result-object v179

    #@261a
    check-cast v179, Landroid/app/assist/AssistStructure;

    #@261c
    .line 2437
    .local v179, "structure":Landroid/app/assist/AssistStructure;
    sget-object v6, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@261e
    move-object/from16 v0, p2

    #@2620
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2623
    move-result-object v180

    #@2624
    check-cast v180, Landroid/app/assist/AssistContent;

    #@2626
    .line 2438
    .local v180, "content":Landroid/app/assist/AssistContent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2629
    move-result v6

    #@262a
    if-eqz v6, :cond_97

    #@262c
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@262e
    move-object/from16 v0, p2

    #@2630
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2633
    move-result-object v6

    #@2634
    check-cast v6, Landroid/net/Uri;

    #@2636
    move-object/from16 v181, v6

    #@2638
    .local v181, "referrer":Landroid/net/Uri;
    :goto_84
    move-object/from16 v176, p0

    #@263a
    move-object/from16 v177, v93

    #@263c
    .line 2439
    invoke-virtual/range {v176 .. v181}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    #@263f
    .line 2440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2642
    .line 2441
    const/4 v6, 0x1

    #@2643
    return v6

    #@2644
    .line 2438
    .end local v181    # "referrer":Landroid/net/Uri;
    :cond_97
    const/16 v181, 0x0

    #@2646
    goto :goto_84

    #@2647
    .line 2445
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v178    # "extras":Landroid/os/Bundle;
    .end local v179    # "structure":Landroid/app/assist/AssistStructure;
    .end local v180    # "content":Landroid/app/assist/AssistContent;
    :pswitch_ce
    const-string/jumbo v6, "android.app.IActivityManager"

    #@264a
    move-object/from16 v0, p2

    #@264c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@264f
    .line 2446
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2651
    move-object/from16 v0, p2

    #@2653
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2656
    move-result-object v9

    #@2657
    check-cast v9, Landroid/content/Intent;

    #@2659
    .line 2447
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@265c
    move-result v170

    #@265d
    .line 2448
    .restart local v170    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2660
    move-result-object v185

    #@2661
    .line 2449
    .local v185, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2664
    move-result v186

    #@2665
    .line 2450
    .local v186, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@2668
    move-result-object v187

    #@2669
    .local v187, "args":Landroid/os/Bundle;
    move-object/from16 v182, p0

    #@266b
    move-object/from16 v183, v9

    #@266d
    move/from16 v184, v170

    #@266f
    .line 2451
    invoke-virtual/range {v182 .. v187}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    #@2672
    move-result v0

    #@2673
    move/16 v327, v0

    #@2676
    .line 2452
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2679
    .line 2453
    move/from16 v0, v327

    #@267b
    if-eqz v0, :cond_98

    #@267d
    const/4 v6, 0x1

    #@267e
    :goto_85
    move-object/from16 v0, p3

    #@2680
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2683
    .line 2454
    const/4 v6, 0x1

    #@2684
    return v6

    #@2685
    .line 2453
    :cond_98
    const/4 v6, 0x0

    #@2686
    goto :goto_85

    #@2687
    .line 2458
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v170    # "requestType":I
    .end local v185    # "hint":Ljava/lang/String;
    .end local v186    # "userHandle":I
    .end local v187    # "args":Landroid/os/Bundle;
    .end local v327    # "res":Z
    :pswitch_cf
    const-string/jumbo v6, "android.app.IActivityManager"

    #@268a
    move-object/from16 v0, p2

    #@268c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@268f
    .line 2459
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isAssistDataAllowedOnCurrentActivity()Z

    #@2692
    move-result v0

    #@2693
    move/16 v327, v0

    #@2696
    .line 2460
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2699
    .line 2461
    move/from16 v0, v327

    #@269b
    if-eqz v0, :cond_99

    #@269d
    const/4 v6, 0x1

    #@269e
    :goto_86
    move-object/from16 v0, p3

    #@26a0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@26a3
    .line 2462
    const/4 v6, 0x1

    #@26a4
    return v6

    #@26a5
    .line 2461
    :cond_99
    const/4 v6, 0x0

    #@26a6
    goto :goto_86

    #@26a7
    .line 2466
    .end local v327    # "res":Z
    :pswitch_d0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@26aa
    move-object/from16 v0, p2

    #@26ac
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26af
    .line 2467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@26b2
    move-result-object v93

    #@26b3
    .line 2468
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@26b6
    move-result-object v187

    #@26b7
    .line 2469
    .restart local v187    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@26b9
    move-object/from16 v1, v93

    #@26bb
    move-object/from16 v2, v187

    #@26bd
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    #@26c0
    move-result v0

    #@26c1
    move/16 v327, v0

    #@26c4
    .line 2470
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26c7
    .line 2471
    move/from16 v0, v327

    #@26c9
    if-eqz v0, :cond_9a

    #@26cb
    const/4 v6, 0x1

    #@26cc
    :goto_87
    move-object/from16 v0, p3

    #@26ce
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@26d1
    .line 2472
    const/4 v6, 0x1

    #@26d2
    return v6

    #@26d3
    .line 2471
    :cond_9a
    const/4 v6, 0x0

    #@26d4
    goto :goto_87

    #@26d5
    .line 2476
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v187    # "args":Landroid/os/Bundle;
    .end local v327    # "res":Z
    :pswitch_d1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@26d8
    move-object/from16 v0, p2

    #@26da
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26dd
    .line 2477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26e0
    move-result v210

    #@26e1
    .line 2478
    .restart local v210    # "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26e4
    move-result v17

    #@26e5
    .line 2479
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26e8
    move-result-object v0

    #@26e9
    move-object/16 v318, v0

    #@26ec
    .line 2480
    .restart local v318    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@26ee
    move/from16 v1, v210

    #@26f0
    move/from16 v2, v17

    #@26f2
    move-object/from16 v3, v318

    #@26f4
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killUid(IILjava/lang/String;)V

    #@26f7
    .line 2481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26fa
    .line 2482
    const/4 v6, 0x1

    #@26fb
    return v6

    #@26fc
    .line 2486
    .end local v17    # "userId":I
    .end local v210    # "appId":I
    .end local v318    # "reason":Ljava/lang/String;
    :pswitch_d2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@26ff
    move-object/from16 v0, p2

    #@2701
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2704
    .line 2487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2707
    move-result-object v62

    #@2708
    .line 2488
    .restart local v62    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@270b
    move-result v6

    #@270c
    if-eqz v6, :cond_9b

    #@270e
    const/16 v207, 0x1

    #@2710
    .line 2489
    .local v207, "allowRestart":Z
    :goto_88
    move-object/from16 v0, p0

    #@2712
    move-object/from16 v1, v62

    #@2714
    move/from16 v2, v207

    #@2716
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    #@2719
    .line 2490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@271c
    .line 2491
    const/4 v6, 0x1

    #@271d
    return v6

    #@271e
    .line 2488
    .end local v207    # "allowRestart":Z
    :cond_9b
    const/16 v207, 0x0

    #@2720
    goto :goto_88

    #@2721
    .line 2495
    .end local v62    # "who":Landroid/os/IBinder;
    :pswitch_d3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2724
    move-object/from16 v0, p2

    #@2726
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2729
    .line 2496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@272c
    move-result-object v93

    #@272d
    .line 2497
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@272f
    move-object/from16 v1, v93

    #@2731
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    #@2734
    .line 2498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2737
    .line 2499
    const/4 v6, 0x1

    #@2738
    return v6

    #@2739
    .line 2503
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_d4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@273c
    move-object/from16 v0, p2

    #@273e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2741
    .line 2504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2744
    move-result-object v93

    #@2745
    .line 2505
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2747
    move-object/from16 v1, v93

    #@2749
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    #@274c
    .line 2506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@274f
    .line 2507
    const/4 v6, 0x1

    #@2750
    return v6

    #@2751
    .line 2511
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_d5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2754
    move-object/from16 v0, p2

    #@2756
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2759
    .line 2512
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    #@275c
    .line 2513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@275f
    .line 2514
    const/4 v6, 0x1

    #@2760
    return v6

    #@2761
    .line 2518
    :pswitch_d6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2764
    move-object/from16 v0, p2

    #@2766
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2769
    .line 2519
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    #@276c
    .line 2520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@276f
    .line 2521
    const/4 v6, 0x1

    #@2770
    return v6

    #@2771
    .line 2525
    :pswitch_d7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2774
    move-object/from16 v0, p2

    #@2776
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2779
    .line 2526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@277c
    move-result-object v0

    #@277d
    move-object/16 v302, v0

    #@2780
    .line 2528
    .local v302, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2783
    move-result-object v6

    #@2784
    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    #@2787
    move-result-object v218

    #@2788
    .line 2530
    .local v218, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    #@278a
    move-object/from16 v1, v302

    #@278c
    move-object/from16 v2, v218

    #@278e
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    #@2791
    move-result-object v205

    #@2792
    .line 2531
    .local v205, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2795
    .line 2532
    if-eqz v205, :cond_9c

    #@2797
    .line 2533
    const/4 v6, 0x1

    #@2798
    move-object/from16 v0, p3

    #@279a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@279d
    .line 2534
    invoke-interface/range {v205 .. v205}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    #@27a0
    move-result-object v6

    #@27a1
    move-object/from16 v0, p3

    #@27a3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@27a6
    .line 2538
    :goto_89
    const/4 v6, 0x1

    #@27a7
    return v6

    #@27a8
    .line 2536
    :cond_9c
    const/4 v6, 0x0

    #@27a9
    move-object/from16 v0, p3

    #@27ab
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@27ae
    goto :goto_89

    #@27af
    .line 2542
    .end local v205    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v218    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v302    # "parentActivityToken":Landroid/os/IBinder;
    :pswitch_d8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@27b2
    move-object/from16 v0, p2

    #@27b4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27b7
    .line 2544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@27ba
    move-result-object v6

    #@27bb
    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    #@27be
    move-result-object v205

    #@27bf
    .line 2545
    .restart local v205    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    #@27c1
    move-object/from16 v1, v205

    #@27c3
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    #@27c6
    .line 2546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27c9
    .line 2547
    const/4 v6, 0x1

    #@27ca
    return v6

    #@27cb
    .line 2551
    .end local v205    # "activityContainer":Landroid/app/IActivityContainer;
    :pswitch_d9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@27ce
    move-object/from16 v0, p2

    #@27d0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27d3
    .line 2552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27d6
    move-result v230

    #@27d7
    .line 2553
    .local v230, "displayId":I
    move-object/from16 v0, p0

    #@27d9
    move/from16 v1, v230

    #@27db
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    #@27de
    move-result-object v205

    #@27df
    .line 2554
    .restart local v205    # "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27e2
    .line 2555
    if-eqz v205, :cond_9d

    #@27e4
    .line 2556
    const/4 v6, 0x1

    #@27e5
    move-object/from16 v0, p3

    #@27e7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@27ea
    .line 2557
    invoke-interface/range {v205 .. v205}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    #@27ed
    move-result-object v6

    #@27ee
    move-object/from16 v0, p3

    #@27f0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@27f3
    .line 2561
    :goto_8a
    const/4 v6, 0x1

    #@27f4
    return v6

    #@27f5
    .line 2559
    :cond_9d
    const/4 v6, 0x0

    #@27f6
    move-object/from16 v0, p3

    #@27f8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@27fb
    goto :goto_8a

    #@27fc
    .line 2565
    .end local v205    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v230    # "displayId":I
    :pswitch_da
    const-string/jumbo v6, "android.app.IActivityManager"

    #@27ff
    move-object/from16 v0, p2

    #@2801
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2804
    .line 2566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2807
    move-result-object v173

    #@2808
    .line 2567
    .restart local v173    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@280a
    move-object/from16 v1, v173

    #@280c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityDisplayId(Landroid/os/IBinder;)I

    #@280f
    move-result v230

    #@2810
    .line 2568
    .restart local v230    # "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2813
    .line 2569
    move-object/from16 v0, p3

    #@2815
    move/from16 v1, v230

    #@2817
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@281a
    .line 2570
    const/4 v6, 0x1

    #@281b
    return v6

    #@281c
    .line 2574
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v230    # "displayId":I
    :pswitch_db
    const-string/jumbo v6, "android.app.IActivityManager"

    #@281f
    move-object/from16 v0, p2

    #@2821
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2824
    .line 2575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2827
    move-result v69

    #@2828
    .line 2576
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    #@282a
    move/from16 v1, v69

    #@282c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    #@282f
    .line 2577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2832
    .line 2578
    const/4 v6, 0x1

    #@2833
    return v6

    #@2834
    .line 2582
    .end local v69    # "taskId":I
    :pswitch_dc
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2837
    move-object/from16 v0, p2

    #@2839
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@283c
    .line 2583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@283f
    move-result-object v93

    #@2840
    .line 2584
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2842
    move-object/from16 v1, v93

    #@2844
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    #@2847
    .line 2585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@284a
    .line 2586
    const/4 v6, 0x1

    #@284b
    return v6

    #@284c
    .line 2590
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_dd
    const-string/jumbo v6, "android.app.IActivityManager"

    #@284f
    move-object/from16 v0, p2

    #@2851
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2854
    .line 2591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2857
    move-result v69

    #@2858
    .line 2592
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    #@285a
    move/from16 v1, v69

    #@285c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startSystemLockTaskMode(I)V

    #@285f
    .line 2593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2862
    .line 2594
    const/4 v6, 0x1

    #@2863
    return v6

    #@2864
    .line 2598
    .end local v69    # "taskId":I
    :pswitch_de
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2867
    move-object/from16 v0, p2

    #@2869
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@286c
    .line 2599
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    #@286f
    .line 2600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2872
    .line 2601
    const/4 v6, 0x1

    #@2873
    return v6

    #@2874
    .line 2605
    :pswitch_df
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2877
    move-object/from16 v0, p2

    #@2879
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@287c
    .line 2606
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopSystemLockTaskMode()V

    #@287f
    .line 2607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2882
    .line 2608
    const/4 v6, 0x1

    #@2883
    return v6

    #@2884
    .line 2612
    :pswitch_e0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2887
    move-object/from16 v0, p2

    #@2889
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@288c
    .line 2613
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    #@288f
    move-result v0

    #@2890
    move/16 v268, v0

    #@2893
    .line 2614
    .local v268, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2896
    .line 2615
    move/from16 v0, v268

    #@2898
    if-eqz v0, :cond_9e

    #@289a
    const/4 v6, 0x1

    #@289b
    :goto_8b
    move-object/from16 v0, p3

    #@289d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@28a0
    .line 2616
    const/4 v6, 0x1

    #@28a1
    return v6

    #@28a2
    .line 2615
    :cond_9e
    const/4 v6, 0x0

    #@28a3
    goto :goto_8b

    #@28a4
    .line 2620
    .end local v268    # "isInLockTaskMode":Z
    :pswitch_e1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@28a7
    move-object/from16 v0, p2

    #@28a9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28ac
    .line 2621
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getLockTaskModeState()I

    #@28af
    move-result v0

    #@28b0
    move/16 v283, v0

    #@28b3
    .line 2622
    .local v283, "lockTaskModeState":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28b6
    .line 2623
    move-object/from16 v0, p3

    #@28b8
    move/from16 v1, v283

    #@28ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@28bd
    .line 2624
    const/4 v6, 0x1

    #@28be
    return v6

    #@28bf
    .line 2628
    .end local v283    # "lockTaskModeState":I
    :pswitch_e2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@28c2
    move-object/from16 v0, p2

    #@28c4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28c7
    .line 2629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@28ca
    move-result-object v93

    #@28cb
    .line 2630
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@28cd
    move-object/from16 v1, v93

    #@28cf
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    #@28d2
    .line 2631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28d5
    .line 2632
    const/4 v6, 0x1

    #@28d6
    return v6

    #@28d7
    .line 2636
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_e3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@28da
    move-object/from16 v0, p2

    #@28dc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28df
    .line 2637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@28e2
    move-result-object v93

    #@28e3
    .line 2639
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28e5
    move-object/from16 v0, p2

    #@28e7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28ea
    move-result-object v0

    #@28eb
    move-object/16 v366, v0

    #@28ee
    move-object/from16 v0, v366

    #@28f0
    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    #@28f2
    move-object/16 v366, v0

    #@28f5
    .line 2640
    .local v366, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    #@28f7
    move-object/from16 v1, v93

    #@28f9
    move-object/from16 v2, v366

    #@28fb
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    #@28fe
    .line 2641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2901
    .line 2642
    const/4 v6, 0x1

    #@2902
    return v6

    #@2903
    .line 2646
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v366    # "values":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_e4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2906
    move-object/from16 v0, p2

    #@2908
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@290b
    .line 2647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@290e
    move-result v69

    #@290f
    .line 2648
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2912
    move-result v0

    #@2913
    move/16 v330, v0

    #@2916
    .line 2649
    .local v330, "resizeableMode":I
    move-object/from16 v0, p0

    #@2918
    move/from16 v1, v69

    #@291a
    move/from16 v2, v330

    #@291c
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskResizeable(II)V

    #@291f
    .line 2650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2922
    .line 2651
    const/4 v6, 0x1

    #@2923
    return v6

    #@2924
    .line 2655
    .end local v69    # "taskId":I
    .end local v330    # "resizeableMode":I
    :pswitch_e5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2927
    move-object/from16 v0, p2

    #@2929
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@292c
    .line 2656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@292f
    move-result v69

    #@2930
    .line 2657
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2933
    move-result v0

    #@2934
    move/16 v329, v0

    #@2937
    .line 2658
    .local v329, "resizeMode":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2939
    move-object/from16 v0, p2

    #@293b
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@293e
    move-result-object v77

    #@293f
    check-cast v77, Landroid/graphics/Rect;

    #@2941
    .line 2659
    .local v77, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@2943
    move/from16 v1, v69

    #@2945
    move-object/from16 v2, v77

    #@2947
    move/from16 v3, v329

    #@2949
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->resizeTask(ILandroid/graphics/Rect;I)V

    #@294c
    .line 2660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@294f
    .line 2661
    const/4 v6, 0x1

    #@2950
    return v6

    #@2951
    .line 2665
    .end local v69    # "taskId":I
    .end local v77    # "r":Landroid/graphics/Rect;
    .end local v329    # "resizeMode":I
    :pswitch_e6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2954
    move-object/from16 v0, p2

    #@2956
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2959
    .line 2666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@295c
    move-result v69

    #@295d
    .line 2667
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    #@295f
    move/from16 v1, v69

    #@2961
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskBounds(I)Landroid/graphics/Rect;

    #@2964
    move-result-object v77

    #@2965
    .line 2668
    .restart local v77    # "r":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2968
    .line 2669
    const/4 v6, 0x0

    #@2969
    move-object/from16 v0, v77

    #@296b
    move-object/from16 v1, p3

    #@296d
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@2970
    .line 2670
    const/4 v6, 0x1

    #@2971
    return v6

    #@2972
    .line 2674
    .end local v69    # "taskId":I
    .end local v77    # "r":Landroid/graphics/Rect;
    :pswitch_e7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2975
    move-object/from16 v0, p2

    #@2977
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@297a
    .line 2675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@297d
    move-result-object v236

    #@297e
    .line 2676
    .local v236, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2981
    move-result v17

    #@2982
    .line 2677
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@2984
    move-object/from16 v1, v236

    #@2986
    move/from16 v2, v17

    #@2988
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    #@298b
    move-result-object v251

    #@298c
    .line 2678
    .local v251, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@298f
    .line 2679
    if-nez v251, :cond_9f

    #@2991
    .line 2680
    const/4 v6, 0x0

    #@2992
    move-object/from16 v0, p3

    #@2994
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2997
    .line 2685
    :goto_8c
    const/4 v6, 0x1

    #@2998
    return v6

    #@2999
    .line 2682
    :cond_9f
    const/4 v6, 0x1

    #@299a
    move-object/from16 v0, p3

    #@299c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@299f
    .line 2683
    const/4 v6, 0x0

    #@29a0
    move-object/from16 v0, v251

    #@29a2
    move-object/from16 v1, p3

    #@29a4
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@29a7
    goto :goto_8c

    #@29a8
    .line 2689
    .end local v17    # "userId":I
    .end local v236    # "filename":Ljava/lang/String;
    .end local v251    # "icon":Landroid/graphics/Bitmap;
    :pswitch_e8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@29ab
    move-object/from16 v0, p2

    #@29ad
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29b0
    .line 2691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29b3
    move-result v6

    #@29b4
    if-nez v6, :cond_a0

    #@29b6
    .line 2692
    const/16 v217, 0x0

    #@29b8
    .line 2696
    :goto_8d
    invoke-static/range {v217 .. v217}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    #@29bb
    move-result-object v0

    #@29bc
    move-object/16 v299, v0

    #@29bf
    .line 2697
    .restart local v299    # "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    #@29c1
    move-object/from16 v1, v299

    #@29c3
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    #@29c6
    .line 2698
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29c9
    .line 2699
    const/4 v6, 0x1

    #@29ca
    return v6

    #@29cb
    .line 2694
    .end local v299    # "options":Landroid/app/ActivityOptions;
    :cond_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@29ce
    move-result-object v217

    #@29cf
    .restart local v217    # "bundle":Landroid/os/Bundle;
    goto :goto_8d

    #@29d0
    .line 2703
    .end local v217    # "bundle":Landroid/os/Bundle;
    :pswitch_e9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@29d3
    move-object/from16 v0, p2

    #@29d5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29d8
    .line 2704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29db
    move-result-object v93

    #@29dc
    .line 2705
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29df
    move-result v6

    #@29e0
    if-lez v6, :cond_a1

    #@29e2
    const/16 v232, 0x1

    #@29e4
    .line 2706
    .local v232, "enable":Z
    :goto_8e
    move-object/from16 v0, p0

    #@29e6
    move-object/from16 v1, v93

    #@29e8
    move/from16 v2, v232

    #@29ea
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    #@29ed
    move-result v0

    #@29ee
    move/16 v350, v0

    #@29f1
    .line 2707
    .restart local v350    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29f4
    .line 2708
    move/from16 v0, v350

    #@29f6
    if-eqz v0, :cond_a2

    #@29f8
    const/4 v6, 0x1

    #@29f9
    :goto_8f
    move-object/from16 v0, p3

    #@29fb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@29fe
    .line 2709
    const/4 v6, 0x1

    #@29ff
    return v6

    #@2a00
    .line 2705
    .end local v232    # "enable":Z
    .end local v350    # "success":Z
    :cond_a1
    const/16 v232, 0x0

    #@2a02
    goto :goto_8e

    #@2a03
    .line 2708
    .restart local v232    # "enable":Z
    .restart local v350    # "success":Z
    :cond_a2
    const/4 v6, 0x0

    #@2a04
    goto :goto_8f

    #@2a05
    .line 2713
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v232    # "enable":Z
    .end local v350    # "success":Z
    :pswitch_ea
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2a08
    move-object/from16 v0, p2

    #@2a0a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a0d
    .line 2714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a10
    move-result-object v93

    #@2a11
    .line 2715
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2a13
    move-object/from16 v1, v93

    #@2a15
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    #@2a18
    move-result v233

    #@2a19
    .line 2716
    .restart local v233    # "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a1c
    .line 2717
    if-eqz v233, :cond_a3

    #@2a1e
    const/4 v6, 0x1

    #@2a1f
    :goto_90
    move-object/from16 v0, p3

    #@2a21
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2a24
    .line 2718
    const/4 v6, 0x1

    #@2a25
    return v6

    #@2a26
    .line 2717
    :cond_a3
    const/4 v6, 0x0

    #@2a27
    goto :goto_90

    #@2a28
    .line 2722
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v233    # "enabled":Z
    :pswitch_eb
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2a2b
    move-object/from16 v0, p2

    #@2a2d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a30
    .line 2723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a33
    move-result-object v93

    #@2a34
    .line 2724
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2a36
    move-object/from16 v1, v93

    #@2a38
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    #@2a3b
    .line 2725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a3e
    .line 2726
    const/4 v6, 0x1

    #@2a3f
    return v6

    #@2a40
    .line 2730
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_ec
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2a43
    move-object/from16 v0, p2

    #@2a45
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a48
    .line 2731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a4b
    move-result-object v93

    #@2a4c
    .line 2732
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2a4e
    move-object/from16 v1, v93

    #@2a50
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    #@2a53
    .line 2733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a56
    .line 2734
    const/4 v6, 0x1

    #@2a57
    return v6

    #@2a58
    .line 2738
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_ed
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2a5b
    move-object/from16 v0, p2

    #@2a5d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a60
    .line 2739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a63
    move-result-object v93

    #@2a64
    .line 2740
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2a66
    move-object/from16 v1, v93

    #@2a68
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    #@2a6b
    .line 2741
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a6e
    .line 2742
    const/4 v6, 0x1

    #@2a6f
    return v6

    #@2a70
    .line 2746
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_ee
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2a73
    move-object/from16 v0, p2

    #@2a75
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a78
    .line 2747
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    #@2a7b
    .line 2748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a7e
    .line 2749
    const/4 v6, 0x1

    #@2a7f
    return v6

    #@2a80
    .line 2753
    :pswitch_ef
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2a83
    move-object/from16 v0, p2

    #@2a85
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a88
    .line 2754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a8b
    move-result v132

    #@2a8c
    .line 2755
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@2a8f
    move-result-object v238

    #@2a90
    .line 2756
    .local v238, "firstPacket":[B
    move-object/from16 v0, p0

    #@2a92
    move/from16 v1, v132

    #@2a94
    move-object/from16 v2, v238

    #@2a96
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->notifyCleartextNetwork(I[B)V

    #@2a99
    .line 2757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a9c
    .line 2758
    const/4 v6, 0x1

    #@2a9d
    return v6

    #@2a9e
    .line 2762
    .end local v132    # "uid":I
    .end local v238    # "firstPacket":[B
    :pswitch_f0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2aa1
    move-object/from16 v0, p2

    #@2aa3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2aa6
    .line 2763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2aa9
    move-result-object v190

    #@2aaa
    .line 2764
    .local v190, "procName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2aad
    move-result v132

    #@2aae
    .line 2765
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@2ab1
    move-result-wide v192

    #@2ab2
    .line 2766
    .local v192, "maxMemSize":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ab5
    move-result-object v194

    #@2ab6
    .local v194, "reportPackage":Ljava/lang/String;
    move-object/from16 v189, p0

    #@2ab8
    move/from16 v191, v132

    #@2aba
    .line 2767
    invoke-virtual/range {v189 .. v194}, Landroid/app/ActivityManagerNative;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    #@2abd
    .line 2768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ac0
    .line 2769
    const/4 v6, 0x1

    #@2ac1
    return v6

    #@2ac2
    .line 2773
    .end local v132    # "uid":I
    .end local v190    # "procName":Ljava/lang/String;
    .end local v192    # "maxMemSize":J
    .end local v194    # "reportPackage":Ljava/lang/String;
    :pswitch_f1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2ac5
    move-object/from16 v0, p2

    #@2ac7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2aca
    .line 2774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2acd
    move-result-object v162

    #@2ace
    .line 2775
    .restart local v162    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2ad0
    move-object/from16 v1, v162

    #@2ad2
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->dumpHeapFinished(Ljava/lang/String;)V

    #@2ad5
    .line 2776
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ad8
    .line 2777
    const/4 v6, 0x1

    #@2ad9
    return v6

    #@2ada
    .line 2781
    .end local v162    # "path":Ljava/lang/String;
    :pswitch_f2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2add
    move-object/from16 v0, p2

    #@2adf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ae2
    .line 2783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2ae5
    move-result-object v6

    #@2ae6
    .line 2782
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    #@2ae9
    move-result-object v46

    #@2aea
    .line 2784
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2aed
    move-result v6

    #@2aee
    if-eqz v6, :cond_a4

    #@2af0
    const/4 v0, 0x1

    #@2af1
    move/16 v271, v0

    #@2af4
    .line 2785
    .local v271, "keepAwake":Z
    :goto_91
    move-object/from16 v0, p0

    #@2af6
    move-object/from16 v1, v46

    #@2af8
    move/from16 v2, v271

    #@2afa
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    #@2afd
    .line 2786
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b00
    .line 2787
    const/4 v6, 0x1

    #@2b01
    return v6

    #@2b02
    .line 2784
    .end local v271    # "keepAwake":Z
    :cond_a4
    const/4 v0, 0x0

    #@2b03
    move/16 v271, v0

    #@2b06
    goto :goto_91

    #@2b07
    .line 2791
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_f3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2b0a
    move-object/from16 v0, p2

    #@2b0c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b0f
    .line 2792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b12
    move-result v17

    #@2b13
    .line 2793
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@2b16
    move-result-object v0

    #@2b17
    move-object/16 v301, v0

    #@2b1a
    .line 2794
    .local v301, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b1c
    move/from16 v1, v17

    #@2b1e
    move-object/from16 v2, v301

    #@2b20
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateLockTaskPackages(I[Ljava/lang/String;)V

    #@2b23
    .line 2795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b26
    .line 2796
    const/4 v6, 0x1

    #@2b27
    return v6

    #@2b28
    .line 2800
    .end local v17    # "userId":I
    .end local v301    # "packages":[Ljava/lang/String;
    :pswitch_f4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2b2b
    move-object/from16 v0, p2

    #@2b2d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b30
    .line 2801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b33
    move-result-object v32

    #@2b34
    .line 2802
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b36
    move-object/from16 v1, v32

    #@2b38
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateDeviceOwner(Ljava/lang/String;)V

    #@2b3b
    .line 2803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b3e
    .line 2804
    const/4 v6, 0x1

    #@2b3f
    return v6

    #@2b40
    .line 2808
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_f5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2b43
    move-object/from16 v0, p2

    #@2b45
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b48
    .line 2809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b4b
    move-result-object v0

    #@2b4c
    move-object/16 v310, v0

    #@2b4f
    .line 2810
    .restart local v310    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b52
    move-result-object v8

    #@2b53
    .line 2811
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b55
    move-object/from16 v1, v310

    #@2b57
    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    #@2b5a
    move-result v0

    #@2b5b
    move/16 v321, v0

    #@2b5e
    .line 2812
    .restart local v321    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b61
    .line 2813
    move-object/from16 v0, p3

    #@2b63
    move/from16 v1, v321

    #@2b65
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2b68
    .line 2814
    const/4 v6, 0x1

    #@2b69
    return v6

    #@2b6a
    .line 2818
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v310    # "pkg":Ljava/lang/String;
    .end local v321    # "res":I
    :pswitch_f6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2b6d
    move-object/from16 v0, p2

    #@2b6f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b72
    .line 2819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b75
    move-result-object v140

    #@2b76
    .line 2820
    .restart local v140    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b79
    move-result v17

    #@2b7a
    .line 2821
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b7d
    move-result v0

    #@2b7e
    move/16 v272, v0

    #@2b81
    .line 2822
    .restart local v272    # "level":I
    move-object/from16 v0, p0

    #@2b83
    move-object/from16 v1, v140

    #@2b85
    move/from16 v2, v17

    #@2b87
    move/from16 v3, v272

    #@2b89
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    #@2b8c
    move-result v0

    #@2b8d
    move/16 v327, v0

    #@2b90
    .line 2823
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b93
    .line 2824
    move/from16 v0, v327

    #@2b95
    if-eqz v0, :cond_a5

    #@2b97
    const/4 v6, 0x1

    #@2b98
    :goto_92
    move-object/from16 v0, p3

    #@2b9a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2b9d
    .line 2825
    const/4 v6, 0x1

    #@2b9e
    return v6

    #@2b9f
    .line 2824
    :cond_a5
    const/4 v6, 0x0

    #@2ba0
    goto :goto_92

    #@2ba1
    .line 2829
    .end local v17    # "userId":I
    .end local v140    # "process":Ljava/lang/String;
    .end local v272    # "level":I
    .end local v327    # "res":Z
    :pswitch_f7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2ba4
    move-object/from16 v0, p2

    #@2ba6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ba9
    .line 2830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2bac
    move-result-object v93

    #@2bad
    .line 2831
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2baf
    move-object/from16 v1, v93

    #@2bb1
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    #@2bb4
    move-result v0

    #@2bb5
    move/16 v327, v0

    #@2bb8
    .line 2832
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bbb
    .line 2833
    move/from16 v0, v327

    #@2bbd
    if-eqz v0, :cond_a6

    #@2bbf
    const/4 v6, 0x1

    #@2bc0
    :goto_93
    move-object/from16 v0, p3

    #@2bc2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2bc5
    .line 2834
    const/4 v6, 0x1

    #@2bc6
    return v6

    #@2bc7
    .line 2833
    :cond_a6
    const/4 v6, 0x0

    #@2bc8
    goto :goto_93

    #@2bc9
    .line 2838
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v327    # "res":Z
    :pswitch_f8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2bcc
    move-object/from16 v0, p2

    #@2bce
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2bd1
    .line 2839
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startBinderTracking()Z

    #@2bd4
    move-result v0

    #@2bd5
    move/16 v327, v0

    #@2bd8
    .line 2840
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bdb
    .line 2841
    move/from16 v0, v327

    #@2bdd
    if-eqz v0, :cond_a7

    #@2bdf
    const/4 v6, 0x1

    #@2be0
    :goto_94
    move-object/from16 v0, p3

    #@2be2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2be5
    .line 2842
    const/4 v6, 0x1

    #@2be6
    return v6

    #@2be7
    .line 2841
    :cond_a7
    const/4 v6, 0x0

    #@2be8
    goto :goto_94

    #@2be9
    .line 2846
    .end local v327    # "res":Z
    :pswitch_f9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2bec
    move-object/from16 v0, p2

    #@2bee
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2bf1
    .line 2847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2bf4
    move-result v6

    #@2bf5
    if-eqz v6, :cond_a8

    #@2bf7
    .line 2848
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2bf9
    move-object/from16 v0, p2

    #@2bfb
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2bfe
    move-result-object v6

    #@2bff
    check-cast v6, Landroid/os/ParcelFileDescriptor;

    #@2c01
    move-object/from16 v163, v6

    #@2c03
    .line 2849
    .restart local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_95
    move-object/from16 v0, p0

    #@2c05
    move-object/from16 v1, v163

    #@2c07
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    #@2c0a
    move-result v0

    #@2c0b
    move/16 v327, v0

    #@2c0e
    .line 2850
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c11
    .line 2851
    move/from16 v0, v327

    #@2c13
    if-eqz v0, :cond_a9

    #@2c15
    const/4 v6, 0x1

    #@2c16
    :goto_96
    move-object/from16 v0, p3

    #@2c18
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2c1b
    .line 2852
    const/4 v6, 0x1

    #@2c1c
    return v6

    #@2c1d
    .line 2848
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v327    # "res":Z
    :cond_a8
    const/16 v163, 0x0

    #@2c1f
    goto :goto_95

    #@2c20
    .line 2851
    .restart local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v327    # "res":Z
    :cond_a9
    const/4 v6, 0x0

    #@2c21
    goto :goto_96

    #@2c22
    .line 2855
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v327    # "res":Z
    :pswitch_fa
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2c25
    move-object/from16 v0, p2

    #@2c27
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c2a
    .line 2856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2c2d
    move-result-object v93

    #@2c2e
    .line 2857
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2c30
    move-object/from16 v1, v93

    #@2c32
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityStackId(Landroid/os/IBinder;)I

    #@2c35
    move-result v76

    #@2c36
    .line 2858
    .restart local v76    # "stackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c39
    .line 2859
    move-object/from16 v0, p3

    #@2c3b
    move/from16 v1, v76

    #@2c3d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2c40
    .line 2860
    const/4 v6, 0x1

    #@2c41
    return v6

    #@2c42
    .line 2863
    .end local v76    # "stackId":I
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_fb
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2c45
    move-object/from16 v0, p2

    #@2c47
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c4a
    .line 2864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2c4d
    move-result-object v93

    #@2c4e
    .line 2865
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2c50
    move-object/from16 v1, v93

    #@2c52
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->exitFreeformMode(Landroid/os/IBinder;)V

    #@2c55
    .line 2866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c58
    .line 2867
    const/4 v6, 0x1

    #@2c59
    return v6

    #@2c5a
    .line 2870
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_fc
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2c5d
    move-object/from16 v0, p2

    #@2c5f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c62
    .line 2871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2c65
    move-result-object v93

    #@2c66
    .line 2872
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2c68
    move-object/from16 v1, p2

    #@2c6a
    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    #@2c6d
    move-result-object v249

    #@2c6e
    .line 2873
    .local v249, "horizontal":[I
    move-object/from16 v0, p0

    #@2c70
    move-object/from16 v1, p2

    #@2c72
    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    #@2c75
    move-result-object v0

    #@2c76
    move-object/16 v367, v0

    #@2c79
    .line 2874
    .local v367, "vertical":[I
    move-object/from16 v0, p0

    #@2c7b
    move-object/from16 v1, p2

    #@2c7d
    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    #@2c80
    move-result-object v0

    #@2c81
    move-object/16 v343, v0

    #@2c84
    .line 2875
    .local v343, "smallest":[I
    move-object/from16 v0, p0

    #@2c86
    move-object/from16 v1, v93

    #@2c88
    move-object/from16 v2, v249

    #@2c8a
    move-object/from16 v3, v367

    #@2c8c
    move-object/from16 v4, v343

    #@2c8e
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V

    #@2c91
    .line 2876
    const/4 v6, 0x1

    #@2c92
    return v6

    #@2c93
    .line 2879
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v249    # "horizontal":[I
    .end local v343    # "smallest":[I
    .end local v367    # "vertical":[I
    :pswitch_fd
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2c96
    move-object/from16 v0, p2

    #@2c98
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c9b
    .line 2880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c9e
    move-result v6

    #@2c9f
    const/16 v18, 0x1

    #@2ca1
    move/from16 v0, v18

    #@2ca3
    if-ne v6, v0, :cond_aa

    #@2ca5
    const/4 v0, 0x1

    #@2ca6
    move/16 v351, v0

    #@2ca9
    .line 2881
    .local v351, "suppress":Z
    :goto_97
    move-object/from16 v0, p0

    #@2cab
    move/from16 v1, v351

    #@2cad
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->suppressResizeConfigChanges(Z)V

    #@2cb0
    .line 2882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cb3
    .line 2883
    const/4 v6, 0x1

    #@2cb4
    return v6

    #@2cb5
    .line 2880
    .end local v351    # "suppress":Z
    :cond_aa
    const/4 v0, 0x0

    #@2cb6
    move/16 v351, v0

    #@2cb9
    goto :goto_97

    #@2cba
    .line 2886
    :pswitch_fe
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2cbd
    move-object/from16 v0, p2

    #@2cbf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2cc2
    .line 2887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cc5
    move-result v76

    #@2cc6
    .line 2888
    .restart local v76    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cc9
    move-result v6

    #@2cca
    const/16 v18, 0x1

    #@2ccc
    move/from16 v0, v18

    #@2cce
    if-ne v6, v0, :cond_ab

    #@2cd0
    const/4 v0, 0x1

    #@2cd1
    move/16 v297, v0

    #@2cd4
    .line 2889
    .local v297, "onTop":Z
    :goto_98
    move-object/from16 v0, p0

    #@2cd6
    move/from16 v1, v76

    #@2cd8
    move/from16 v2, v297

    #@2cda
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTasksToFullscreenStack(IZ)V

    #@2cdd
    .line 2890
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ce0
    .line 2891
    const/4 v6, 0x1

    #@2ce1
    return v6

    #@2ce2
    .line 2888
    .end local v297    # "onTop":Z
    :cond_ab
    const/4 v0, 0x0

    #@2ce3
    move/16 v297, v0

    #@2ce6
    goto :goto_98

    #@2ce7
    .line 2894
    .end local v76    # "stackId":I
    :pswitch_ff
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2cea
    move-object/from16 v0, p2

    #@2cec
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2cef
    .line 2895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cf2
    move-result v132

    #@2cf3
    .line 2896
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2cf6
    move-result-object v0

    #@2cf7
    move-object/16 v310, v0

    #@2cfa
    .line 2897
    .restart local v310    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2cfc
    move/from16 v1, v132

    #@2cfe
    move-object/from16 v2, v310

    #@2d00
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getAppStartMode(ILjava/lang/String;)I

    #@2d03
    move-result v0

    #@2d04
    move/16 v321, v0

    #@2d07
    .line 2898
    .restart local v321    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d0a
    .line 2899
    move-object/from16 v0, p3

    #@2d0c
    move/from16 v1, v321

    #@2d0e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d11
    .line 2900
    const/4 v6, 0x1

    #@2d12
    return v6

    #@2d13
    .line 2903
    .end local v132    # "uid":I
    .end local v310    # "pkg":Ljava/lang/String;
    .end local v321    # "res":I
    :pswitch_100
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2d16
    move-object/from16 v0, p2

    #@2d18
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d1b
    .line 2904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d1e
    move-result-object v93

    #@2d1f
    .line 2905
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2d21
    move-object/from16 v1, v93

    #@2d23
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInMultiWindowMode(Landroid/os/IBinder;)Z

    #@2d26
    move-result v254

    #@2d27
    .line 2906
    .local v254, "inMultiWindow":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d2a
    .line 2907
    if-eqz v254, :cond_ac

    #@2d2c
    const/4 v6, 0x1

    #@2d2d
    :goto_99
    move-object/from16 v0, p3

    #@2d2f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2d32
    .line 2908
    const/4 v6, 0x1

    #@2d33
    return v6

    #@2d34
    .line 2907
    :cond_ac
    const/4 v6, 0x0

    #@2d35
    goto :goto_99

    #@2d36
    .line 2911
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v254    # "inMultiWindow":Z
    :pswitch_101
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2d39
    move-object/from16 v0, p2

    #@2d3b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d3e
    .line 2912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d41
    move-result-object v93

    #@2d42
    .line 2913
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2d44
    move-object/from16 v1, v93

    #@2d46
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInPictureInPictureMode(Landroid/os/IBinder;)Z

    #@2d49
    move-result v255

    #@2d4a
    .line 2914
    .local v255, "inPip":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d4d
    .line 2915
    if-eqz v255, :cond_ad

    #@2d4f
    const/4 v6, 0x1

    #@2d50
    :goto_9a
    move-object/from16 v0, p3

    #@2d52
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2d55
    .line 2916
    const/4 v6, 0x1

    #@2d56
    return v6

    #@2d57
    .line 2915
    :cond_ad
    const/4 v6, 0x0

    #@2d58
    goto :goto_9a

    #@2d59
    .line 2919
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v255    # "inPip":Z
    :pswitch_102
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2d5c
    move-object/from16 v0, p2

    #@2d5e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d61
    .line 2920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d64
    move-result-object v93

    #@2d65
    .line 2921
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2d67
    move-object/from16 v1, v93

    #@2d69
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->enterPictureInPictureMode(Landroid/os/IBinder;)V

    #@2d6c
    .line 2922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d6f
    .line 2923
    const/4 v6, 0x1

    #@2d70
    return v6

    #@2d71
    .line 2926
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_103
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2d74
    move-object/from16 v0, p2

    #@2d76
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d79
    .line 2927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d7c
    move-result-object v93

    #@2d7d
    .line 2928
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d80
    move-result v6

    #@2d81
    const/16 v18, 0x1

    #@2d83
    move/from16 v0, v18

    #@2d85
    if-ne v6, v0, :cond_ae

    #@2d87
    const/16 v232, 0x1

    #@2d89
    .line 2929
    .local v232, "enable":Z
    :goto_9b
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d8b
    move-object/from16 v0, p2

    #@2d8d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d90
    move-result-object v0

    #@2d91
    move-object/16 v300, v0

    #@2d94
    move-object/from16 v0, v300

    #@2d96
    check-cast v0, Landroid/content/ComponentName;

    #@2d98
    move-object/16 v300, v0

    #@2d9b
    .line 2930
    .local v300, "packageName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@2d9d
    move-object/from16 v1, v93

    #@2d9f
    move/from16 v2, v232

    #@2da1
    move-object/from16 v3, v300

    #@2da3
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    #@2da6
    move-result v0

    #@2da7
    move/16 v321, v0

    #@2daa
    .line 2931
    .restart local v321    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2dad
    .line 2932
    move-object/from16 v0, p3

    #@2daf
    move/from16 v1, v321

    #@2db1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2db4
    .line 2933
    const/4 v6, 0x1

    #@2db5
    return v6

    #@2db6
    .line 2928
    .end local v232    # "enable":Z
    .end local v300    # "packageName":Landroid/content/ComponentName;
    .end local v321    # "res":I
    :cond_ae
    const/16 v232, 0x0

    #@2db8
    .restart local v232    # "enable":Z
    goto :goto_9b

    #@2db9
    .line 2936
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v232    # "enable":Z
    :pswitch_104
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2dbc
    move-object/from16 v0, p2

    #@2dbe
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2dc1
    .line 2937
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2dc3
    move-object/from16 v0, p2

    #@2dc5
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2dc8
    move-result-object v0

    #@2dc9
    move-object/16 v300, v0

    #@2dcc
    move-object/from16 v0, v300

    #@2dce
    check-cast v0, Landroid/content/ComponentName;

    #@2dd0
    move-object/16 v300, v0

    #@2dd3
    .line 2938
    .restart local v300    # "packageName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@2dd5
    move-object/from16 v1, v300

    #@2dd7
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    #@2dda
    move-result v0

    #@2ddb
    move/16 v327, v0

    #@2dde
    .line 2939
    .restart local v327    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2de1
    .line 2940
    move/from16 v0, v327

    #@2de3
    if-eqz v0, :cond_af

    #@2de5
    const/4 v6, 0x1

    #@2de6
    :goto_9c
    move-object/from16 v0, p3

    #@2de8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2deb
    .line 2941
    const/4 v6, 0x1

    #@2dec
    return v6

    #@2ded
    .line 2940
    :cond_af
    const/4 v6, 0x0

    #@2dee
    goto :goto_9c

    #@2def
    .line 2944
    .end local v300    # "packageName":Landroid/content/ComponentName;
    .end local v327    # "res":Z
    :pswitch_105
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2df2
    move-object/from16 v0, p2

    #@2df4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2df7
    .line 2945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2dfa
    move-result v186

    #@2dfb
    .line 2946
    .restart local v186    # "userHandle":I
    move-object/from16 v0, p0

    #@2dfd
    move/from16 v1, v186

    #@2dff
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isAppForeground(I)Z

    #@2e02
    move-result v0

    #@2e03
    move/16 v266, v0

    #@2e06
    .line 2947
    .restart local v266    # "isForeground":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e09
    .line 2948
    move/from16 v0, v266

    #@2e0b
    if-eqz v0, :cond_b0

    #@2e0d
    const/4 v6, 0x1

    #@2e0e
    :goto_9d
    move-object/from16 v0, p3

    #@2e10
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2e13
    .line 2949
    const/4 v6, 0x1

    #@2e14
    return v6

    #@2e15
    .line 2948
    :cond_b0
    const/4 v6, 0x0

    #@2e16
    goto :goto_9d

    #@2e17
    .line 2952
    .end local v186    # "userHandle":I
    .end local v266    # "isForeground":Z
    :pswitch_106
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2e1a
    move-object/from16 v0, p2

    #@2e1c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e1f
    .line 2953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e22
    .line 2954
    const/4 v6, 0x1

    #@2e23
    return v6

    #@2e24
    .line 2957
    :pswitch_107
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2e27
    move-object/from16 v0, p2

    #@2e29
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e2c
    .line 2958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e2f
    move-result v76

    #@2e30
    .line 2959
    .restart local v76    # "stackId":I
    move-object/from16 v0, p0

    #@2e32
    move/from16 v1, v76

    #@2e34
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeStack(I)V

    #@2e37
    .line 2960
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e3a
    .line 2961
    const/4 v6, 0x1

    #@2e3b
    return v6

    #@2e3c
    .line 2964
    .end local v76    # "stackId":I
    :pswitch_108
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2e3f
    move-object/from16 v0, p2

    #@2e41
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e44
    .line 2965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e47
    move-result v17

    #@2e48
    .line 2966
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@2e4a
    move/from16 v1, v17

    #@2e4c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLockedProfile(I)V

    #@2e4f
    .line 2967
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e52
    .line 2968
    const/4 v6, 0x1

    #@2e53
    return v6

    #@2e54
    .line 2971
    .end local v17    # "userId":I
    :pswitch_109
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2e57
    move-object/from16 v0, p2

    #@2e59
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e5c
    .line 2972
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e5e
    move-object/from16 v0, p2

    #@2e60
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e63
    move-result-object v9

    #@2e64
    check-cast v9, Landroid/content/Intent;

    #@2e66
    .line 2973
    .restart local v9    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@2e68
    invoke-virtual {v0, v9}, Landroid/app/ActivityManagerNative;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;)V

    #@2e6b
    .line 2974
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e6e
    .line 2975
    const/4 v6, 0x1

    #@2e6f
    return v6

    #@2e70
    .line 2978
    .end local v9    # "intent":Landroid/content/Intent;
    :pswitch_10a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2e73
    move-object/from16 v0, p2

    #@2e75
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e78
    .line 2979
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->sendIdleJobTrigger()V

    #@2e7b
    .line 2980
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e7e
    .line 2981
    const/4 v6, 0x1

    #@2e7f
    return v6

    #@2e80
    .line 2984
    :pswitch_10b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2e83
    move-object/from16 v0, p2

    #@2e85
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e88
    .line 2985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e8b
    move-result-object v6

    #@2e8c
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@2e8f
    move-result-object v196

    #@2e90
    .line 2986
    .local v196, "sender":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e93
    move-result v197

    #@2e94
    .line 2987
    .local v197, "scode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e97
    move-result v6

    #@2e98
    if-eqz v6, :cond_b1

    #@2e9a
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e9c
    move-object/from16 v0, p2

    #@2e9e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2ea1
    move-result-object v9

    #@2ea2
    check-cast v9, Landroid/content/Intent;

    #@2ea4
    .line 2988
    :goto_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ea7
    move-result-object v10

    #@2ea8
    .line 2990
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2eab
    move-result-object v6

    #@2eac
    .line 2989
    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    #@2eaf
    move-result-object v200

    #@2eb0
    .line 2991
    .local v200, "finishedReceiver":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2eb3
    move-result-object v201

    #@2eb4
    .line 2992
    .local v201, "requiredPermission":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2eb7
    move-result v6

    #@2eb8
    if-eqz v6, :cond_b2

    #@2eba
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2ebc
    move-object/from16 v0, p2

    #@2ebe
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2ec1
    move-result-object v6

    #@2ec2
    check-cast v6, Landroid/os/Bundle;

    #@2ec4
    move-object/from16 v16, v6

    #@2ec6
    .local v16, "options":Landroid/os/Bundle;
    :goto_9f
    move-object/from16 v195, p0

    #@2ec8
    move-object/from16 v198, v9

    #@2eca
    move-object/from16 v199, v10

    #@2ecc
    move-object/from16 v202, v16

    #@2ece
    .line 2993
    invoke-virtual/range {v195 .. v202}, Landroid/app/ActivityManagerNative;->sendIntentSender(Landroid/content/IIntentSender;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    #@2ed1
    move-result v0

    #@2ed2
    move/16 v331, v0

    #@2ed5
    .line 2995
    .restart local v331    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ed8
    .line 2996
    move-object/from16 v0, p3

    #@2eda
    move/from16 v1, v331

    #@2edc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2edf
    .line 2997
    const/4 v6, 0x1

    #@2ee0
    return v6

    #@2ee1
    .line 2987
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v200    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .end local v201    # "requiredPermission":Ljava/lang/String;
    .end local v331    # "result":I
    :cond_b1
    const/4 v9, 0x0

    #@2ee2
    .local v9, "intent":Landroid/content/Intent;
    goto :goto_9e

    #@2ee3
    .line 2992
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    .restart local v200    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .restart local v201    # "requiredPermission":Ljava/lang/String;
    :cond_b2
    const/16 v16, 0x0

    #@2ee5
    goto :goto_9f

    #@2ee6
    .line 3000
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v196    # "sender":Landroid/content/IIntentSender;
    .end local v197    # "scode":I
    .end local v200    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .end local v201    # "requiredPermission":Ljava/lang/String;
    :pswitch_10c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2ee9
    move-object/from16 v0, p2

    #@2eeb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2eee
    .line 3001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ef1
    move-result v0

    #@2ef2
    move/16 v360, v0

    #@2ef5
    .line 3002
    .local v360, "tid":I
    move-object/from16 v0, p0

    #@2ef7
    move/from16 v1, v360

    #@2ef9
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setVrThread(I)V

    #@2efc
    .line 3003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2eff
    .line 3004
    const/4 v6, 0x1

    #@2f00
    return v6

    #@2f01
    .line 3007
    .end local v360    # "tid":I
    :pswitch_10d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2f04
    move-object/from16 v0, p2

    #@2f06
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f09
    .line 3008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f0c
    move-result v0

    #@2f0d
    move/16 v360, v0

    #@2f10
    .line 3009
    .restart local v360    # "tid":I
    move-object/from16 v0, p0

    #@2f12
    move/from16 v1, v360

    #@2f14
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setRenderThread(I)V

    #@2f17
    .line 3010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f1a
    .line 3011
    const/4 v6, 0x1

    #@2f1b
    return v6

    #@2f1c
    .line 3014
    .end local v360    # "tid":I
    :pswitch_10e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2f1f
    move-object/from16 v0, p2

    #@2f21
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f24
    .line 3015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f27
    move-result v6

    #@2f28
    if-eqz v6, :cond_b3

    #@2f2a
    const/16 v248, 0x1

    #@2f2c
    .line 3016
    .local v248, "hasTopUi":Z
    :goto_a0
    move-object/from16 v0, p0

    #@2f2e
    move/from16 v1, v248

    #@2f30
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setHasTopUi(Z)V

    #@2f33
    .line 3017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f36
    .line 3018
    const/4 v6, 0x1

    #@2f37
    return v6

    #@2f38
    .line 3015
    .end local v248    # "hasTopUi":Z
    :cond_b3
    const/16 v248, 0x0

    #@2f3a
    goto :goto_a0

    #@2f3b
    .line 3021
    :pswitch_10f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2f3e
    move-object/from16 v0, p2

    #@2f40
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f43
    .line 3022
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f45
    move-object/from16 v0, p2

    #@2f47
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f4a
    move-result-object v0

    #@2f4b
    move-object/16 v264, v0

    #@2f4e
    move-object/from16 v0, v264

    #@2f50
    check-cast v0, Landroid/app/PendingIntent;

    #@2f52
    move-object/16 v264, v0

    #@2f55
    .line 3023
    .local v264, "intent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    #@2f57
    move-object/from16 v1, v264

    #@2f59
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->canBypassWorkChallenge(Landroid/app/PendingIntent;)Z

    #@2f5c
    move-result v0

    #@2f5d
    move/16 v333, v0

    #@2f60
    .line 3024
    .restart local v333    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f63
    .line 3025
    move/from16 v0, v333

    #@2f65
    if-eqz v0, :cond_b4

    #@2f67
    const/4 v6, 0x1

    #@2f68
    :goto_a1
    move-object/from16 v0, p3

    #@2f6a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2f6d
    .line 3026
    const/4 v6, 0x1

    #@2f6e
    return v6

    #@2f6f
    .line 3025
    :cond_b4
    const/4 v6, 0x0

    #@2f70
    goto :goto_a1

    #@2f71
    .line 148
    nop

    #@2f72
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7d
        :pswitch_1
        :pswitch_6f
        :pswitch_70
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1d
        :pswitch_21
        :pswitch_22
        :pswitch_26
        :pswitch_2d
        :pswitch_0
        :pswitch_2f
        :pswitch_3f
        :pswitch_0
        :pswitch_40
        :pswitch_42
        :pswitch_43
        :pswitch_e
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_72
        :pswitch_73
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_4b
        :pswitch_58
        :pswitch_59
        :pswitch_5f
        :pswitch_60
        :pswitch_62
        :pswitch_64
        :pswitch_66
        :pswitch_67
        :pswitch_74
        :pswitch_6d
        :pswitch_80
        :pswitch_27
        :pswitch_51
        :pswitch_1f
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_77
        :pswitch_b
        :pswitch_78
        :pswitch_46
        :pswitch_56
        :pswitch_57
        :pswitch_50
        :pswitch_61
        :pswitch_4c
        :pswitch_2e
        :pswitch_6e
        :pswitch_2a
        :pswitch_65
        :pswitch_84
        :pswitch_7b
        :pswitch_29
        :pswitch_28
        :pswitch_2b
        :pswitch_86
        :pswitch_8b
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_5d
        :pswitch_5e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_6
        :pswitch_94
        :pswitch_7e
        :pswitch_81
        :pswitch_95
        :pswitch_4
        :pswitch_13
        :pswitch_5
        :pswitch_2c
        :pswitch_97
        :pswitch_7f
        :pswitch_98
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_b1
        :pswitch_1e
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
        :pswitch_b8
        :pswitch_b9
        :pswitch_ac
        :pswitch_3d
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_ba
        :pswitch_be
        :pswitch_bf
        :pswitch_c0
        :pswitch_0
        :pswitch_82
        :pswitch_41
        :pswitch_47
        :pswitch_85
        :pswitch_7c
        :pswitch_b0
        :pswitch_c3
        :pswitch_c4
        :pswitch_71
        :pswitch_f
        :pswitch_c5
        :pswitch_44
        :pswitch_bb
        :pswitch_2
        :pswitch_af
        :pswitch_c7
        :pswitch_c8
        :pswitch_b2
        :pswitch_c9
        :pswitch_ca
        :pswitch_0
        :pswitch_bc
        :pswitch_cb
        :pswitch_cd
        :pswitch_c6
        :pswitch_d1
        :pswitch_96
        :pswitch_d2
        :pswitch_d7
        :pswitch_30
        :pswitch_33
        :pswitch_38
        :pswitch_3b
        :pswitch_39
        :pswitch_9a
        :pswitch_9b
        :pswitch_d4
        :pswitch_d3
        :pswitch_d5
        :pswitch_d6
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_45
        :pswitch_e6
        :pswitch_da
        :pswitch_d8
        :pswitch_f6
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
        :pswitch_bd
        :pswitch_ad
        :pswitch_3a
        :pswitch_db
        :pswitch_dc
        :pswitch_de
        :pswitch_e0
        :pswitch_e3
        :pswitch_7
        :pswitch_9c
        :pswitch_23
        :pswitch_dd
        :pswitch_df
        :pswitch_10
        :pswitch_99
        :pswitch_e9
        :pswitch_ea
        :pswitch_eb
        :pswitch_ec
        :pswitch_c
        :pswitch_ed
        :pswitch_c1
        :pswitch_3
        :pswitch_24
        :pswitch_25
        :pswitch_11
        :pswitch_12
        :pswitch_ee
        :pswitch_e7
        :pswitch_ce
        :pswitch_e8
        :pswitch_63
        :pswitch_3e
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
        :pswitch_ef
        :pswitch_d9
        :pswitch_3c
        :pswitch_e4
        :pswitch_cc
        :pswitch_e5
        :pswitch_e1
        :pswitch_f0
        :pswitch_f1
        :pswitch_f2
        :pswitch_f3
        :pswitch_79
        :pswitch_7a
        :pswitch_f5
        :pswitch_e2
        :pswitch_f4
        :pswitch_c2
        :pswitch_b6
        :pswitch_b7
        :pswitch_cf
        :pswitch_d0
        :pswitch_f7
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
        :pswitch_0
        :pswitch_f8
        :pswitch_f9
        :pswitch_37
        :pswitch_fa
        :pswitch_fb
        :pswitch_fc
        :pswitch_31
        :pswitch_fd
        :pswitch_fe
        :pswitch_32
        :pswitch_ff
        :pswitch_ae
        :pswitch_100
        :pswitch_101
        :pswitch_83
        :pswitch_102
        :pswitch_20
        :pswitch_a2
        :pswitch_36
        :pswitch_103
        :pswitch_6b
        :pswitch_6c
        :pswitch_105
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_106
        :pswitch_107
        :pswitch_75
        :pswitch_76
        :pswitch_34
        :pswitch_104
        :pswitch_35
        :pswitch_108
        :pswitch_109
        :pswitch_10a
        :pswitch_10b
        :pswitch_10c
        :pswitch_10d
        :pswitch_10e
        :pswitch_10f
    .end packed-switch
.end method
