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
    .line 3017
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
    .line 3004
    const/4 v0, 0x0

    #@1
    .line 3005
    .local v0, "smallest":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 3006
    .local v1, "smallestSize":I
    if-lez v1, :cond_0

    #@7
    .line 3007
    new-array v0, v1, [I

    #@9
    .line 3008
    .local v0, "smallest":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    #@c
    .line 3010
    .end local v0    # "smallest":[I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 3014
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 370
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
    .line 3000
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
    move/16 v329, v0

    #@67
    .line 167
    .local v329, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a
    .line 168
    move-object/from16 v0, p3

    #@6c
    move/from16 v1, v329

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
    .end local v329    # "result":I
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
    move/16 v329, v0

    #@d7
    .line 191
    .restart local v329    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@da
    .line 192
    move-object/from16 v0, p3

    #@dc
    move/from16 v1, v329

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
    .end local v329    # "result":I
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
    move/16 v329, v0

    #@165
    .line 217
    .restart local v329    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@168
    .line 218
    move-object/from16 v0, p3

    #@16a
    move/from16 v1, v329

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
    .end local v329    # "result":I
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
    move-object/16 v330, v0

    #@1d8
    .line 241
    .local v330, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1db
    .line 242
    const/4 v6, 0x0

    #@1dc
    move-object/from16 v0, v330

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
    .end local v330    # "result":Landroid/app/IActivityManager$WaitResult;
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
    move/16 v329, v0

    #@257
    .line 264
    .restart local v329    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25a
    .line 265
    move-object/from16 v0, p3

    #@25c
    move/from16 v1, v329

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
    .end local v329    # "result":I
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
    move/16 v329, v0

    #@2d1
    .line 290
    .restart local v329    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d4
    .line 291
    move-object/from16 v0, p3

    #@2d6
    move/from16 v1, v329

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
    .end local v329    # "result":I
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
    move/16 v329, v0

    #@351
    .line 315
    .restart local v329    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@354
    .line 316
    move-object/from16 v0, p3

    #@356
    move/from16 v1, v329

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
    .end local v329    # "result":I
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
    move/16 v331, v0

    #@3a7
    .line 343
    .local v331, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3aa
    .line 344
    move/from16 v0, v331

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
    .end local v331    # "result":Z
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
    move/16 v331, v0

    #@3ed
    .line 356
    .restart local v331    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f0
    .line 357
    move/from16 v0, v331

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
    .end local v331    # "result":Z
    :cond_f
    const/16 v16, 0x0

    #@3fe
    goto :goto_e

    #@3ff
    .line 357
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v331    # "result":Z
    :cond_10
    const/4 v6, 0x0

    #@400
    goto :goto_f

    #@401
    .line 363
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v220    # "callingActivity":Landroid/os/IBinder;
    .end local v331    # "result":Z
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
    move/16 v329, v0

    #@422
    .line 368
    .restart local v329    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@425
    .line 369
    move-object/from16 v0, p3

    #@427
    move/from16 v1, v329

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
    .end local v329    # "result":I
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
    move-object/16 v333, v0

    #@44b
    .line 377
    .local v333, "resultData":Landroid/content/Intent;
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
    move-object/16 v333, v0

    #@460
    .end local v333    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v333

    #@462
    check-cast v0, Landroid/content/Intent;

    #@464
    move-object/16 v333, v0

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
    move-object/from16 v3, v333

    #@473
    move/from16 v4, v237

    #@475
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    #@478
    move-result v0

    #@479
    move/16 v325, v0

    #@47c
    .line 383
    .local v325, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@47f
    .line 384
    move/from16 v0, v325

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
    .end local v325    # "res":Z
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
    move/16 v325, v0

    #@4c4
    .line 402
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c7
    .line 403
    move/from16 v0, v325

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
    .end local v325    # "res":Z
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
    move/16 v325, v0

    #@508
    .line 420
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@50b
    .line 421
    move/from16 v0, v325

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
    .end local v325    # "res":Z
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
    move/16 v325, v0

    #@54a
    .line 437
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54d
    .line 438
    move/from16 v0, v325

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
    .end local v325    # "res":Z
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
    move/16 v319, v0

    #@63f
    .line 502
    .local v319, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@642
    .line 503
    move-object/from16 v0, p3

    #@644
    move/from16 v1, v319

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
    .end local v319    # "res":I
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
    move/16 v347, v0

    #@701
    .line 553
    .local v347, "stopProfiling":Z
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
    move/from16 v3, v347

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
    .end local v347    # "stopProfiling":Z
    :cond_25
    const/4 v0, 0x0

    #@714
    move/16 v347, v0

    #@717
    .restart local v347    # "stopProfiling":Z
    goto :goto_1e

    #@718
    .line 561
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v347    # "stopProfiling":Z
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
    move-object/16 v282, v0

    #@75b
    .line 580
    .local v282, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    #@75e
    move-result-object v0

    #@75f
    move-object/16 v304, v0

    #@762
    .line 581
    .local v304, "persistentState":Landroid/os/PersistableBundle;
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
    move-object/from16 v2, v282

    #@772
    move-object/from16 v3, v304

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
    .end local v282    # "map":Landroid/os/Bundle;
    .end local v304    # "persistentState":Landroid/os/PersistableBundle;
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
    move-object/16 v324, v0

    #@7df
    .line 615
    :goto_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e2
    .line 616
    move-object/from16 v0, p3

    #@7e4
    move-object/from16 v1, v324

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
    move-object/16 v324, v0

    #@7ef
    .local v324, "res":Ljava/lang/String;
    goto :goto_1f

    #@7f0
    .line 621
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v324    # "res":Ljava/lang/String;
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
    move-object/16 v278, v0

    #@825
    .line 633
    .local v278, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@828
    .line 634
    move-object/from16 v0, v278

    #@82a
    if-eqz v0, :cond_27

    #@82c
    invoke-interface/range {v278 .. v278}, Ljava/util/List;->size()I

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
    const/16 v249, 0x0

    #@839
    .local v249, "i":I
    :goto_21
    move/from16 v0, v249

    #@83b
    move/from16 v1, v188

    #@83d
    if-ge v0, v1, :cond_28

    #@83f
    .line 638
    move-object/from16 v0, v278

    #@841
    move/from16 v1, v249

    #@843
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@846
    move-result-object v0

    #@847
    move-object/16 v354, v0

    #@84a
    move-object/from16 v0, v354

    #@84c
    check-cast v0, Landroid/app/IAppTask;

    #@84e
    move-object/16 v354, v0

    #@851
    .line 639
    .local v354, "task":Landroid/app/IAppTask;
    invoke-interface/range {v354 .. v354}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    #@854
    move-result-object v6

    #@855
    move-object/from16 v0, p3

    #@857
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@85a
    .line 637
    add-int/lit8 v249, v249, 0x1

    #@85c
    goto :goto_21

    #@85d
    .line 634
    .end local v188    # "N":I
    .end local v249    # "i":I
    .end local v354    # "task":Landroid/app/IAppTask;
    :cond_27
    const/16 v188, -0x1

    #@85f
    goto :goto_20

    #@860
    .line 641
    .restart local v188    # "N":I
    .restart local v249    # "i":I
    :cond_28
    const/4 v6, 0x1

    #@861
    return v6

    #@862
    .line 645
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v188    # "N":I
    .end local v249    # "i":I
    .end local v278    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
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
    move-object/16 v357, v0

    #@88d
    move-object/from16 v0, v357

    #@88f
    check-cast v0, Landroid/graphics/Bitmap;

    #@891
    move-object/16 v357, v0

    #@894
    .line 651
    .local v357, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    #@896
    move-object/from16 v1, v173

    #@898
    move-object/from16 v2, v227

    #@89a
    move-object/from16 v3, v357

    #@89c
    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    #@89f
    move-result v0

    #@8a0
    move/16 v319, v0

    #@8a3
    .line 652
    .restart local v319    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a6
    .line 653
    move-object/from16 v0, p3

    #@8a8
    move/from16 v1, v319

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
    .end local v319    # "res":I
    .end local v357    # "thumbnail":Landroid/graphics/Bitmap;
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
    move-object/16 v340, v0

    #@8be
    .line 660
    .local v340, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c1
    .line 661
    const/4 v6, 0x0

    #@8c2
    move-object/from16 v0, v340

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
    .end local v340    # "size":Landroid/graphics/Point;
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
    move/16 v284, v0

    #@8da
    .line 668
    .local v284, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8dd
    move-result v103

    #@8de
    .line 669
    .local v103, "fl":I
    move-object/from16 v0, p0

    #@8e0
    move/from16 v1, v284

    #@8e2
    move/from16 v2, v103

    #@8e4
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    #@8e7
    move-result-object v0

    #@8e8
    move-object/16 v276, v0

    #@8eb
    .line 670
    .local v276, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ee
    .line 671
    move-object/from16 v0, v276

    #@8f0
    if-eqz v0, :cond_29

    #@8f2
    invoke-interface/range {v276 .. v276}, Ljava/util/List;->size()I

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
    const/16 v249, 0x0

    #@8ff
    .restart local v249    # "i":I
    :goto_23
    move/from16 v0, v249

    #@901
    move/from16 v1, v188

    #@903
    if-ge v0, v1, :cond_2a

    #@905
    .line 675
    move-object/from16 v0, v276

    #@907
    move/from16 v1, v249

    #@909
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@90c
    move-result-object v0

    #@90d
    move-object/16 v258, v0

    #@910
    move-object/from16 v0, v258

    #@912
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    #@914
    move-object/16 v258, v0

    #@917
    .line 676
    .local v258, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    #@918
    move-object/from16 v0, v258

    #@91a
    move-object/from16 v1, p3

    #@91c
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@91f
    .line 674
    add-int/lit8 v249, v249, 0x1

    #@921
    goto :goto_23

    #@922
    .line 671
    .end local v188    # "N":I
    .end local v249    # "i":I
    .end local v258    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_29
    const/16 v188, -0x1

    #@924
    goto :goto_22

    #@925
    .line 678
    .restart local v188    # "N":I
    .restart local v249    # "i":I
    :cond_2a
    const/4 v6, 0x1

    #@926
    return v6

    #@927
    .line 682
    .end local v103    # "fl":I
    .end local v188    # "N":I
    .end local v249    # "i":I
    .end local v276    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v284    # "maxNum":I
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
    move/16 v284, v0

    #@936
    .line 684
    .restart local v284    # "maxNum":I
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
    move/from16 v1, v284

    #@942
    move/from16 v2, v103

    #@944
    move/from16 v3, v17

    #@946
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    #@949
    move-result-object v0

    #@94a
    move-object/16 v272, v0

    #@94d
    .line 688
    .local v272, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@950
    .line 689
    const/4 v6, 0x1

    #@951
    move-object/from16 v0, v272

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
    .end local v272    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v284    # "maxNum":I
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
    move-object/16 v355, v0

    #@971
    .line 697
    .local v355, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@974
    .line 698
    move-object/from16 v0, v355

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
    move-object/from16 v0, v355

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
    .end local v355    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
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
    move/16 v284, v0

    #@99e
    .line 710
    .restart local v284    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9a1
    move-result v103

    #@9a2
    .line 711
    .restart local v103    # "fl":I
    move-object/from16 v0, p0

    #@9a4
    move/from16 v1, v284

    #@9a6
    move/from16 v2, v103

    #@9a8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    #@9ab
    move-result-object v0

    #@9ac
    move-object/16 v275, v0

    #@9af
    .line 712
    .local v275, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9b2
    .line 713
    move-object/from16 v0, v275

    #@9b4
    if-eqz v0, :cond_2c

    #@9b6
    invoke-interface/range {v275 .. v275}, Ljava/util/List;->size()I

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
    const/16 v249, 0x0

    #@9c3
    .restart local v249    # "i":I
    :goto_26
    move/from16 v0, v249

    #@9c5
    move/from16 v1, v188

    #@9c7
    if-ge v0, v1, :cond_2d

    #@9c9
    .line 717
    move-object/from16 v0, v275

    #@9cb
    move/from16 v1, v249

    #@9cd
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9d0
    move-result-object v0

    #@9d1
    move-object/16 v257, v0

    #@9d4
    move-object/from16 v0, v257

    #@9d6
    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    #@9d8
    move-object/16 v257, v0

    #@9db
    .line 718
    .local v257, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    #@9dc
    move-object/from16 v0, v257

    #@9de
    move-object/from16 v1, p3

    #@9e0
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@9e3
    .line 716
    add-int/lit8 v249, v249, 0x1

    #@9e5
    goto :goto_26

    #@9e6
    .line 713
    .end local v188    # "N":I
    .end local v249    # "i":I
    .end local v257    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2c
    const/16 v188, -0x1

    #@9e8
    goto :goto_25

    #@9e9
    .line 720
    .restart local v188    # "N":I
    .restart local v249    # "i":I
    :cond_2d
    const/4 v6, 0x1

    #@9ea
    return v6

    #@9eb
    .line 724
    .end local v103    # "fl":I
    .end local v188    # "N":I
    .end local v249    # "i":I
    .end local v275    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v284    # "maxNum":I
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
    move-object/16 v273, v0

    #@9fa
    .line 726
    .local v273, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9fd
    .line 727
    move-object/from16 v0, p3

    #@9ff
    move-object/from16 v1, v273

    #@a01
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a04
    .line 728
    const/4 v6, 0x1

    #@a05
    return v6

    #@a06
    .line 732
    .end local v273    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
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
    move-object/16 v274, v0

    #@a15
    .line 734
    .local v274, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a18
    .line 735
    move-object/from16 v0, p3

    #@a1a
    move-object/from16 v1, v274

    #@a1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a1f
    .line 736
    const/4 v6, 0x1

    #@a20
    return v6

    #@a21
    .line 740
    .end local v274    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
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
    move-object/16 v279, v0

    #@a30
    .line 742
    .local v279, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a33
    .line 743
    move-object/from16 v0, p3

    #@a35
    move-object/from16 v1, v279

    #@a37
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a3a
    .line 744
    const/4 v6, 0x1

    #@a3b
    return v6

    #@a3c
    .line 748
    .end local v279    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
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
    move/16 v353, v0

    #@a4b
    .line 750
    .local v353, "task":I
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
    move/from16 v1, v353

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
    .end local v353    # "task":I
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
    move/16 v289, v0

    #@a8a
    .line 762
    .local v289, "nonRoot":Z
    :goto_28
    move-object/from16 v0, p0

    #@a8c
    move-object/from16 v1, v93

    #@a8e
    move/from16 v2, v289

    #@a90
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    #@a93
    move-result v0

    #@a94
    move/16 v325, v0

    #@a97
    .line 763
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a9a
    .line 764
    move/from16 v0, v325

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
    .end local v289    # "nonRoot":Z
    .end local v325    # "res":Z
    :cond_2f
    const/4 v0, 0x0

    #@aa7
    move/16 v289, v0

    #@aaa
    goto :goto_28

    #@aab
    .line 764
    .restart local v289    # "nonRoot":Z
    .restart local v325    # "res":Z
    :cond_30
    const/4 v6, 0x0

    #@aac
    goto :goto_29

    #@aad
    .line 769
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v289    # "nonRoot":Z
    .end local v325    # "res":Z
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
    move/16 v353, v0

    #@abc
    .line 771
    .restart local v353    # "task":I
    move-object/from16 v0, p0

    #@abe
    move/from16 v1, v353

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
    .end local v353    # "task":I
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
    move/16 v325, v0

    #@b3a
    .line 800
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b3d
    .line 801
    move/from16 v0, v325

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
    .end local v325    # "res":Z
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
    .restart local v325    # "res":Z
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
    .end local v325    # "res":Z
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
    move/16 v325, v0

    #@b7a
    .line 810
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b7d
    .line 811
    move/from16 v0, v325

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
    .end local v325    # "res":Z
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
    move-object/16 v356, v0

    #@c17
    .line 841
    .local v356, "tempPinnedTaskBounds":Landroid/graphics/Rect;
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
    move-object/16 v356, v0

    #@c24
    .end local v356    # "tempPinnedTaskBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v356

    #@c26
    check-cast v0, Landroid/graphics/Rect;

    #@c28
    move-object/16 v356, v0

    #@c2b
    .line 844
    :cond_3f
    move-object/from16 v0, p0

    #@c2d
    move-object/from16 v1, v73

    #@c2f
    move-object/from16 v2, v356

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
    move/16 v310, v0

    #@cf4
    .line 891
    .local v310, "position":I
    move-object/from16 v0, p0

    #@cf6
    move/from16 v1, v69

    #@cf8
    move/from16 v2, v76

    #@cfa
    move/from16 v3, v310

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
    .end local v310    # "position":I
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
    move-object/16 v277, v0

    #@d13
    .line 899
    .local v277, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d16
    .line 900
    move-object/from16 v0, p3

    #@d18
    move-object/from16 v1, v277

    #@d1a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d1d
    .line 901
    const/4 v6, 0x1

    #@d1e
    return v6

    #@d1f
    .line 905
    .end local v277    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
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
    move-object/16 v259, v0

    #@d36
    .line 908
    .local v259, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d39
    .line 909
    move-object/from16 v0, v259

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
    move-object/from16 v0, v259

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
    .end local v259    # "info":Landroid/app/ActivityManager$StackInfo;
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
    move/16 v265, v0

    #@d6b
    .line 922
    .local v265, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d6e
    .line 923
    move/from16 v0, v265

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
    .end local v265    # "isInHomeStack":Z
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
    move/16 v296, v0

    #@df4
    .line 963
    .local v296, "onlyRoot":Z
    :goto_3e
    if-eqz v93, :cond_4f

    #@df6
    .line 964
    move-object/from16 v0, p0

    #@df8
    move-object/from16 v1, v93

    #@dfa
    move/from16 v2, v296

    #@dfc
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    #@dff
    move-result v0

    #@e00
    move/16 v319, v0

    #@e03
    .line 965
    .restart local v319    # "res":I
    :goto_3f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e06
    .line 966
    move-object/from16 v0, p3

    #@e08
    move/from16 v1, v319

    #@e0a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e0d
    .line 967
    const/4 v6, 0x1

    #@e0e
    return v6

    #@e0f
    .line 962
    .end local v296    # "onlyRoot":Z
    .end local v319    # "res":I
    :cond_4e
    const/4 v0, 0x0

    #@e10
    move/16 v296, v0

    #@e13
    .restart local v296    # "onlyRoot":Z
    goto :goto_3e

    #@e14
    .line 964
    :cond_4f
    const/4 v0, -0x1

    #@e15
    move/16 v319, v0

    #@e18
    .restart local v319    # "res":I
    goto :goto_3f

    #@e19
    .line 971
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v296    # "onlyRoot":Z
    .end local v319    # "res":I
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
    move/16 v345, v0

    #@e3b
    .line 977
    .local v345, "stable":Z
    :goto_40
    move-object/from16 v0, p0

    #@e3d
    move-object/from16 v1, v127

    #@e3f
    move/from16 v2, v17

    #@e41
    move/from16 v3, v345

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
    .end local v345    # "stable":Z
    :cond_50
    const/4 v0, 0x0

    #@e5d
    move/16 v345, v0

    #@e60
    goto :goto_40

    #@e61
    .line 983
    .restart local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v345    # "stable":Z
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
    .end local v345    # "stable":Z
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
    move-object/16 v313, v0

    #@ebf
    .line 1010
    .local v313, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    #@ec1
    move-object/from16 v1, v313

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
    .end local v313    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
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
    move/16 v344, v0

    #@ede
    .line 1019
    .local v344, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ee1
    move-result v0

    #@ee2
    move/16 v360, v0

    #@ee5
    .line 1020
    .local v360, "unstable":I
    move-object/from16 v0, p0

    #@ee7
    move-object/from16 v1, v213

    #@ee9
    move/from16 v2, v344

    #@eeb
    move/from16 v3, v360

    #@eed
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    #@ef0
    move-result v0

    #@ef1
    move/16 v325, v0

    #@ef4
    .line 1021
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ef7
    .line 1022
    move/from16 v0, v325

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
    .end local v325    # "res":Z
    .end local v344    # "stable":I
    .end local v360    # "unstable":I
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
    move/16 v345, v0

    #@f4b
    .line 1046
    .restart local v345    # "stable":Z
    :goto_44
    move-object/from16 v0, p0

    #@f4d
    move-object/from16 v1, v213

    #@f4f
    move/from16 v2, v345

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
    .end local v345    # "stable":Z
    :cond_54
    const/4 v0, 0x0

    #@f5a
    move/16 v345, v0

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
    move-object/16 v306, v0

    #@f99
    .line 1064
    .local v306, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f9c
    .line 1065
    move-object/from16 v0, v306

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
    .end local v306    # "pi":Landroid/app/PendingIntent;
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
    move/16 v319, v0

    #@1014
    .line 1091
    .restart local v319    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1017
    .line 1092
    move-object/from16 v0, p3

    #@1019
    move/from16 v1, v319

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
    .end local v319    # "res":I
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
    move/16 v346, v0

    #@1037
    .line 1101
    .local v346, "startId":I
    move-object/from16 v0, p0

    #@1039
    move-object/from16 v1, v92

    #@103b
    move-object/from16 v2, v93

    #@103d
    move/from16 v3, v346

    #@103f
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    #@1042
    move-result v0

    #@1043
    move/16 v325, v0

    #@1046
    .line 1102
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1049
    .line 1103
    move/from16 v0, v325

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
    .end local v325    # "res":Z
    .end local v346    # "startId":I
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
    move/16 v319, v0

    #@10d6
    .line 1136
    .restart local v319    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10d9
    .line 1137
    move-object/from16 v0, p3

    #@10db
    move/from16 v1, v319

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
    .end local v319    # "res":I
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
    move/16 v325, v0

    #@10fd
    .line 1146
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1100
    .line 1147
    move/from16 v0, v325

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
    .end local v325    # "res":Z
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
    move-object/16 v337, v0

    #@112b
    .line 1156
    .local v337, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@112d
    move-object/from16 v1, v93

    #@112f
    move-object/from16 v2, v337

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
    .end local v337    # "service":Landroid/os/IBinder;
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
    move/16 v346, v0

    #@117f
    .line 1176
    .restart local v346    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1182
    move-result v0

    #@1183
    move/16 v319, v0

    #@1186
    .line 1177
    .restart local v319    # "res":I
    move-object/from16 v0, p0

    #@1188
    move-object/from16 v1, v93

    #@118a
    move/from16 v2, v114

    #@118c
    move/from16 v3, v346

    #@118e
    move/from16 v4, v319

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
    .end local v319    # "res":I
    .end local v346    # "startId":I
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
    move/16 v325, v0

    #@11d7
    .line 1196
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11da
    .line 1197
    move/from16 v0, v325

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
    .end local v325    # "res":Z
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
    move-object/16 v334, v0

    #@1203
    .line 1208
    .local v334, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@1205
    move/from16 v1, v53

    #@1207
    move-object/from16 v2, v334

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
    .end local v334    # "results":Landroid/os/Bundle;
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
    move/16 v318, v0

    #@125b
    .line 1233
    .local v318, "requestedOrientation":I
    move-object/from16 v0, p0

    #@125d
    move-object/from16 v1, v93

    #@125f
    move/from16 v2, v318

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
    .end local v318    # "requestedOrientation":I
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
    move/16 v317, v0

    #@1280
    .line 1242
    .local v317, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1283
    .line 1243
    move-object/from16 v0, p3

    #@1285
    move/from16 v1, v317

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
    .end local v317    # "req":I
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
    move-object/16 v322, v0

    #@1329
    .line 1287
    .local v322, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@132c
    .line 1288
    move-object/from16 v0, v322

    #@132e
    if-eqz v0, :cond_5c

    #@1330
    invoke-interface/range {v322 .. v322}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

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
    .end local v322    # "res":Landroid/content/IIntentSender;
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
    .restart local v322    # "res":Landroid/content/IIntentSender;
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
    .end local v322    # "res":Landroid/content/IIntentSender;
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
    move-object/16 v315, v0

    #@1358
    .line 1296
    .local v315, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@135a
    move-object/from16 v1, v315

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
    .end local v315    # "r":Landroid/content/IIntentSender;
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
    move-object/16 v315, v0

    #@1377
    .line 1305
    .restart local v315    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@1379
    move-object/from16 v1, v315

    #@137b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    #@137e
    move-result-object v0

    #@137f
    move-object/16 v324, v0

    #@1382
    .line 1306
    .local v324, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1385
    .line 1307
    move-object/from16 v0, p3

    #@1387
    move-object/from16 v1, v324

    #@1389
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@138c
    .line 1308
    const/4 v6, 0x1

    #@138d
    return v6

    #@138e
    .line 1312
    .end local v315    # "r":Landroid/content/IIntentSender;
    .end local v324    # "res":Ljava/lang/String;
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
    move-object/16 v315, v0

    #@13a1
    .line 1315
    .restart local v315    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@13a3
    move-object/from16 v1, v315

    #@13a5
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    #@13a8
    move-result v0

    #@13a9
    move/16 v319, v0

    #@13ac
    .line 1316
    .restart local v319    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13af
    .line 1317
    move-object/from16 v0, p3

    #@13b1
    move/from16 v1, v319

    #@13b3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13b6
    .line 1318
    const/4 v6, 0x1

    #@13b7
    return v6

    #@13b8
    .line 1322
    .end local v315    # "r":Landroid/content/IIntentSender;
    .end local v319    # "res":I
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
    move/16 v319, v0

    #@13f3
    .line 1332
    .restart local v319    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13f6
    .line 1333
    move-object/from16 v0, p3

    #@13f8
    move/from16 v1, v319

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
    .end local v319    # "res":I
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
    move/16 v283, v0

    #@1414
    .line 1340
    .local v283, "max":I
    move-object/from16 v0, p0

    #@1416
    move/from16 v1, v283

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
    .end local v283    # "max":I
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
    move/16 v271, v0

    #@142f
    .line 1348
    .local v271, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1432
    .line 1349
    move-object/from16 v0, p3

    #@1434
    move/from16 v1, v271

    #@1436
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1439
    .line 1350
    const/4 v6, 0x1

    #@143a
    return v6

    #@143b
    .line 1354
    .end local v271    # "limit":I
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
    move/16 v264, v0

    #@1455
    .line 1358
    .local v264, "isForeground":Z
    :goto_4e
    move-object/from16 v0, p0

    #@1457
    move-object/from16 v1, v93

    #@1459
    move/from16 v2, v131

    #@145b
    move/from16 v3, v264

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
    .end local v264    # "isForeground":Z
    :cond_5f
    const/4 v0, 0x0

    #@1466
    move/16 v264, v0

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
    move/16 v319, v0

    #@148d
    .line 1369
    .restart local v319    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1490
    .line 1370
    move-object/from16 v0, p3

    #@1492
    move/from16 v1, v319

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
    .end local v319    # "res":I
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
    move/16 v319, v0

    #@14c2
    .line 1381
    .restart local v319    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14c5
    .line 1382
    move-object/from16 v0, p3

    #@14c7
    move/from16 v1, v319

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
    .end local v319    # "res":I
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
    move/16 v319, v0

    #@14ff
    .line 1395
    .restart local v319    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1502
    .line 1396
    move-object/from16 v0, p3

    #@1504
    move/from16 v1, v319

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
    .end local v319    # "res":I
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
    move-object/16 v293, v0

    #@1522
    .line 1405
    .local v293, "observer":Landroid/content/pm/IPackageDataObserver;
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
    move-object/from16 v2, v293

    #@152c
    move/from16 v3, v17

    #@152e
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    #@1531
    move-result v0

    #@1532
    move/16 v325, v0

    #@1535
    .line 1407
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1538
    .line 1408
    move/from16 v0, v325

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
    .end local v293    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v325    # "res":Z
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
    const/16 v255, 0x1

    #@1618
    .line 1461
    .local v255, "incoming":Z
    :goto_50
    move-object/from16 v0, p0

    #@161a
    move-object/from16 v1, v32

    #@161c
    move/from16 v2, v255

    #@161e
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    #@1621
    move-result-object v0

    #@1622
    move-object/16 v303, v0

    #@1625
    .line 1463
    .local v303, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1628
    .line 1464
    const/4 v6, 0x1

    #@1629
    move-object/from16 v0, v303

    #@162b
    move-object/from16 v1, p3

    #@162d
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@1630
    .line 1465
    const/4 v6, 0x1

    #@1631
    return v6

    #@1632
    .line 1460
    .end local v255    # "incoming":Z
    .end local v303    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_61
    const/16 v255, 0x0

    #@1634
    goto :goto_50

    #@1635
    .line 1469
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_6b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1638
    move-object/from16 v0, p2

    #@163a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@163d
    .line 1470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1640
    move-result-object v32

    #@1641
    .line 1471
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1644
    move-result v17

    #@1645
    .line 1472
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1647
    move-object/from16 v1, v32

    #@1649
    move/from16 v2, v17

    #@164b
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@164e
    move-result-object v0

    #@164f
    move-object/16 v303, v0

    #@1652
    .line 1474
    .restart local v303    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1655
    .line 1475
    const/4 v6, 0x1

    #@1656
    move-object/from16 v0, v303

    #@1658
    move-object/from16 v1, p3

    #@165a
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@165d
    .line 1476
    const/4 v6, 0x1

    #@165e
    return v6

    #@165f
    .line 1480
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v303    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :pswitch_6c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1662
    move-object/from16 v0, p2

    #@1664
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1667
    .line 1481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@166a
    move-result-object v32

    #@166b
    .line 1482
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@166e
    move-result v17

    #@166f
    .line 1483
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1671
    move-object/from16 v1, v32

    #@1673
    move/from16 v2, v17

    #@1675
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->clearGrantedUriPermissions(Ljava/lang/String;I)V

    #@1678
    .line 1484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@167b
    .line 1485
    const/4 v6, 0x1

    #@167c
    return v6

    #@167d
    .line 1489
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_6d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1680
    move-object/from16 v0, p2

    #@1682
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1685
    .line 1490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1688
    move-result-object v213

    #@1689
    .line 1491
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@168c
    move-result-object v7

    #@168d
    .line 1492
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1690
    move-result v6

    #@1691
    if-eqz v6, :cond_62

    #@1693
    const/4 v0, 0x1

    #@1694
    move/16 v366, v0

    #@1697
    .line 1493
    .local v366, "waiting":Z
    :goto_51
    move-object/from16 v0, p0

    #@1699
    move/from16 v1, v366

    #@169b
    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    #@169e
    .line 1494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16a1
    .line 1495
    const/4 v6, 0x1

    #@16a2
    return v6

    #@16a3
    .line 1492
    .end local v366    # "waiting":Z
    :cond_62
    const/4 v0, 0x0

    #@16a4
    move/16 v366, v0

    #@16a7
    goto :goto_51

    #@16a8
    .line 1499
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_6e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@16ab
    move-object/from16 v0, p2

    #@16ad
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16b0
    .line 1500
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    #@16b2
    move-object/16 v286, v0

    #@16b5
    invoke-direct/range {v286 .. v286}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    #@16b8
    .line 1501
    .local v286, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    #@16ba
    move-object/from16 v1, v286

    #@16bc
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    #@16bf
    .line 1502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16c2
    .line 1503
    const/4 v6, 0x0

    #@16c3
    move-object/from16 v0, v286

    #@16c5
    move-object/from16 v1, p3

    #@16c7
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@16ca
    .line 1504
    const/4 v6, 0x1

    #@16cb
    return v6

    #@16cc
    .line 1508
    .end local v286    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_6f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@16cf
    move-object/from16 v0, p2

    #@16d1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16d4
    .line 1509
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    #@16d7
    .line 1510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16da
    .line 1511
    const/4 v6, 0x1

    #@16db
    return v6

    #@16dc
    .line 1515
    :pswitch_70
    const-string/jumbo v6, "android.app.IActivityManager"

    #@16df
    move-object/from16 v0, p2

    #@16e1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16e4
    .line 1516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16e7
    move-result-object v6

    #@16e8
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@16eb
    move-result-object v130

    #@16ec
    .line 1517
    .restart local v130    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@16ee
    move-object/from16 v1, v130

    #@16f0
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    #@16f3
    move-result-object v0

    #@16f4
    move-object/16 v305, v0

    #@16f7
    .line 1518
    .local v305, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16fa
    .line 1519
    move-object/from16 v0, v305

    #@16fc
    if-eqz v0, :cond_63

    #@16fe
    .line 1520
    const/4 v6, 0x1

    #@16ff
    move-object/from16 v0, p3

    #@1701
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1704
    .line 1521
    const/4 v6, 0x1

    #@1705
    move-object/from16 v0, v305

    #@1707
    move-object/from16 v1, p3

    #@1709
    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@170c
    .line 1525
    :goto_52
    const/4 v6, 0x1

    #@170d
    return v6

    #@170e
    .line 1523
    :cond_63
    const/4 v6, 0x0

    #@170f
    move-object/from16 v0, p3

    #@1711
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1714
    goto :goto_52

    #@1715
    .line 1529
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v305    # "pfd":Landroid/os/ParcelFileDescriptor;
    :pswitch_71
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1718
    move-object/from16 v0, p2

    #@171a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@171d
    .line 1530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1720
    move-result v6

    #@1721
    if-eqz v6, :cond_64

    #@1723
    const/4 v0, 0x1

    #@1724
    move/16 v338, v0

    #@1727
    .line 1531
    .local v338, "showing":Z
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@172a
    move-result v6

    #@172b
    if-eqz v6, :cond_65

    #@172d
    const/4 v0, 0x1

    #@172e
    move/16 v294, v0

    #@1731
    .line 1532
    .local v294, "occluded":Z
    :goto_54
    move-object/from16 v0, p0

    #@1733
    move/from16 v1, v338

    #@1735
    move/from16 v2, v294

    #@1737
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setLockScreenShown(ZZ)V

    #@173a
    .line 1533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@173d
    .line 1534
    const/4 v6, 0x1

    #@173e
    return v6

    #@173f
    .line 1530
    .end local v294    # "occluded":Z
    .end local v338    # "showing":Z
    :cond_64
    const/4 v0, 0x0

    #@1740
    move/16 v338, v0

    #@1743
    .restart local v338    # "showing":Z
    goto :goto_53

    #@1744
    .line 1531
    :cond_65
    const/4 v0, 0x0

    #@1745
    move/16 v294, v0

    #@1748
    goto :goto_54

    #@1749
    .line 1538
    .end local v338    # "showing":Z
    :pswitch_72
    const-string/jumbo v6, "android.app.IActivityManager"

    #@174c
    move-object/from16 v0, p2

    #@174e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1751
    .line 1539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1754
    move-result-object v0

    #@1755
    move-object/16 v309, v0

    #@1758
    .line 1540
    .local v309, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@175b
    move-result v6

    #@175c
    if-eqz v6, :cond_66

    #@175e
    const/4 v0, 0x1

    #@175f
    move/16 v368, v0

    #@1762
    .line 1541
    .local v368, "wfd":Z
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1765
    move-result v6

    #@1766
    if-eqz v6, :cond_67

    #@1768
    const/4 v0, 0x1

    #@1769
    move/16 v301, v0

    #@176c
    .line 1542
    .local v301, "per":Z
    :goto_56
    move-object/from16 v0, p0

    #@176e
    move-object/from16 v1, v309

    #@1770
    move/from16 v2, v368

    #@1772
    move/from16 v3, v301

    #@1774
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    #@1777
    .line 1543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@177a
    .line 1544
    const/4 v6, 0x1

    #@177b
    return v6

    #@177c
    .line 1540
    .end local v301    # "per":Z
    .end local v368    # "wfd":Z
    :cond_66
    const/4 v0, 0x0

    #@177d
    move/16 v368, v0

    #@1780
    .restart local v368    # "wfd":Z
    goto :goto_55

    #@1781
    .line 1541
    :cond_67
    const/4 v0, 0x0

    #@1782
    move/16 v301, v0

    #@1785
    goto :goto_56

    #@1786
    .line 1548
    .end local v309    # "pn":Ljava/lang/String;
    .end local v368    # "wfd":Z
    :pswitch_73
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1789
    move-object/from16 v0, p2

    #@178b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@178e
    .line 1549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1791
    move-result v6

    #@1792
    if-eqz v6, :cond_68

    #@1794
    const/16 v233, 0x1

    #@1796
    .line 1550
    .local v233, "enabled":Z
    :goto_57
    move-object/from16 v0, p0

    #@1798
    move/from16 v1, v233

    #@179a
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    #@179d
    .line 1551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17a0
    .line 1552
    const/4 v6, 0x1

    #@17a1
    return v6

    #@17a2
    .line 1549
    .end local v233    # "enabled":Z
    :cond_68
    const/16 v233, 0x0

    #@17a4
    goto :goto_57

    #@17a5
    .line 1556
    :pswitch_74
    const-string/jumbo v6, "android.app.IActivityManager"

    #@17a8
    move-object/from16 v0, p2

    #@17aa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17ad
    .line 1558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@17b0
    move-result-object v6

    #@17b1
    .line 1557
    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    #@17b4
    move-result-object v0

    #@17b5
    move-object/16 v367, v0

    #@17b8
    .line 1559
    .local v367, "watcher":Landroid/app/IActivityController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17bb
    move-result v6

    #@17bc
    if-eqz v6, :cond_69

    #@17be
    const/16 v251, 0x1

    #@17c0
    .line 1560
    .local v251, "imAMonkey":Z
    :goto_58
    move-object/from16 v0, p0

    #@17c2
    move-object/from16 v1, v367

    #@17c4
    move/from16 v2, v251

    #@17c6
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;Z)V

    #@17c9
    .line 1561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17cc
    .line 1562
    const/4 v6, 0x1

    #@17cd
    return v6

    #@17ce
    .line 1559
    .end local v251    # "imAMonkey":Z
    :cond_69
    const/16 v251, 0x0

    #@17d0
    goto :goto_58

    #@17d1
    .line 1566
    .end local v367    # "watcher":Landroid/app/IActivityController;
    :pswitch_75
    const-string/jumbo v6, "android.app.IActivityManager"

    #@17d4
    move-object/from16 v0, p2

    #@17d6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17d9
    .line 1567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17dc
    move-result v6

    #@17dd
    if-eqz v6, :cond_6a

    #@17df
    const/16 v233, 0x1

    #@17e1
    .line 1568
    .restart local v233    # "enabled":Z
    :goto_59
    move-object/from16 v0, p0

    #@17e3
    move/from16 v1, v233

    #@17e5
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setLenientBackgroundCheck(Z)V

    #@17e8
    .line 1569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17eb
    .line 1570
    const/4 v6, 0x1

    #@17ec
    return v6

    #@17ed
    .line 1567
    .end local v233    # "enabled":Z
    :cond_6a
    const/16 v233, 0x0

    #@17ef
    goto :goto_59

    #@17f0
    .line 1574
    :pswitch_76
    const-string/jumbo v6, "android.app.IActivityManager"

    #@17f3
    move-object/from16 v0, p2

    #@17f5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17f8
    .line 1575
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getMemoryTrimLevel()I

    #@17fb
    move-result v0

    #@17fc
    move/16 v270, v0

    #@17ff
    .line 1576
    .local v270, "level":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1802
    .line 1577
    move-object/from16 v0, p3

    #@1804
    move/from16 v1, v270

    #@1806
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1809
    .line 1578
    const/4 v6, 0x1

    #@180a
    return v6

    #@180b
    .line 1582
    .end local v270    # "level":I
    :pswitch_77
    const-string/jumbo v6, "android.app.IActivityManager"

    #@180e
    move-object/from16 v0, p2

    #@1810
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1813
    .line 1583
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    #@1816
    .line 1584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1819
    .line 1585
    const/4 v6, 0x1

    #@181a
    return v6

    #@181b
    .line 1589
    :pswitch_78
    const-string/jumbo v6, "android.app.IActivityManager"

    #@181e
    move-object/from16 v0, p2

    #@1820
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1823
    .line 1591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1826
    move-result-object v6

    #@1827
    .line 1590
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@182a
    move-result-object v0

    #@182b
    move-object/16 v263, v0

    #@182e
    .line 1592
    .local v263, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1831
    move-result v0

    #@1832
    move/16 v343, v0

    #@1835
    .line 1593
    .local v343, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1838
    move-result-object v0

    #@1839
    move-object/16 v342, v0

    #@183c
    .line 1594
    .local v342, "sourcePkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@183f
    move-result-object v0

    #@1840
    move-object/16 v351, v0

    #@1843
    .line 1595
    .local v351, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1845
    move-object/from16 v1, v263

    #@1847
    move/from16 v2, v343

    #@1849
    move-object/from16 v3, v342

    #@184b
    move-object/from16 v4, v351

    #@184d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    #@1850
    .line 1596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1853
    .line 1597
    const/4 v6, 0x1

    #@1854
    return v6

    #@1855
    .line 1601
    .end local v263    # "is":Landroid/content/IIntentSender;
    .end local v342    # "sourcePkg":Ljava/lang/String;
    .end local v343    # "sourceUid":I
    .end local v351    # "tag":Ljava/lang/String;
    :pswitch_79
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1858
    move-object/from16 v0, p2

    #@185a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@185d
    .line 1603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1860
    move-result-object v6

    #@1861
    .line 1602
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@1864
    move-result-object v0

    #@1865
    move-object/16 v263, v0

    #@1868
    .line 1604
    .restart local v263    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@186b
    move-result v0

    #@186c
    move/16 v343, v0

    #@186f
    .line 1605
    .restart local v343    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1872
    move-result-object v0

    #@1873
    move-object/16 v351, v0

    #@1876
    .line 1606
    .restart local v351    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1878
    move-object/from16 v1, v263

    #@187a
    move/from16 v2, v343

    #@187c
    move-object/from16 v3, v351

    #@187e
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    #@1881
    .line 1607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1884
    .line 1608
    const/4 v6, 0x1

    #@1885
    return v6

    #@1886
    .line 1612
    .end local v263    # "is":Landroid/content/IIntentSender;
    .end local v343    # "sourceUid":I
    .end local v351    # "tag":Ljava/lang/String;
    :pswitch_7a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1889
    move-object/from16 v0, p2

    #@188b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@188e
    .line 1614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1891
    move-result-object v6

    #@1892
    .line 1613
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@1895
    move-result-object v0

    #@1896
    move-object/16 v263, v0

    #@1899
    .line 1615
    .restart local v263    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@189c
    move-result v0

    #@189d
    move/16 v343, v0

    #@18a0
    .line 1616
    .restart local v343    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18a3
    move-result-object v0

    #@18a4
    move-object/16 v351, v0

    #@18a7
    .line 1617
    .restart local v351    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    #@18a9
    move-object/from16 v1, v263

    #@18ab
    move/from16 v2, v343

    #@18ad
    move-object/from16 v3, v351

    #@18af
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    #@18b2
    .line 1618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18b5
    .line 1619
    const/4 v6, 0x1

    #@18b6
    return v6

    #@18b7
    .line 1623
    .end local v263    # "is":Landroid/content/IIntentSender;
    .end local v343    # "sourceUid":I
    .end local v351    # "tag":Ljava/lang/String;
    :pswitch_7b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@18ba
    move-object/from16 v0, p2

    #@18bc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18bf
    .line 1624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@18c2
    move-result-object v0

    #@18c3
    move-object/16 v307, v0

    #@18c6
    .line 1625
    .local v307, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18c9
    move-result-object v0

    #@18ca
    move-object/16 v316, v0

    #@18cd
    .line 1626
    .local v316, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18d0
    move-result v6

    #@18d1
    if-eqz v6, :cond_6b

    #@18d3
    const/4 v0, 0x1

    #@18d4
    move/16 v336, v0

    #@18d7
    .line 1627
    .local v336, "secure":Z
    :goto_5a
    move-object/from16 v0, p0

    #@18d9
    move-object/from16 v1, v307

    #@18db
    move-object/from16 v2, v316

    #@18dd
    move/from16 v3, v336

    #@18df
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    #@18e2
    move-result v0

    #@18e3
    move/16 v325, v0

    #@18e6
    .line 1628
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18e9
    .line 1629
    move/from16 v0, v325

    #@18eb
    if-eqz v0, :cond_6c

    #@18ed
    const/4 v6, 0x1

    #@18ee
    :goto_5b
    move-object/from16 v0, p3

    #@18f0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@18f3
    .line 1630
    const/4 v6, 0x1

    #@18f4
    return v6

    #@18f5
    .line 1626
    .end local v325    # "res":Z
    .end local v336    # "secure":Z
    :cond_6b
    const/4 v0, 0x0

    #@18f6
    move/16 v336, v0

    #@18f9
    goto :goto_5a

    #@18fa
    .line 1629
    .restart local v325    # "res":Z
    .restart local v336    # "secure":Z
    :cond_6c
    const/4 v6, 0x0

    #@18fb
    goto :goto_5b

    #@18fc
    .line 1634
    .end local v307    # "pids":[I
    .end local v316    # "reason":Ljava/lang/String;
    .end local v325    # "res":Z
    .end local v336    # "secure":Z
    :pswitch_7c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@18ff
    move-object/from16 v0, p2

    #@1901
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1904
    .line 1635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1907
    move-result-object v0

    #@1908
    move-object/16 v316, v0

    #@190b
    .line 1636
    .restart local v316    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@190d
    move-object/from16 v1, v316

    #@190f
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    #@1912
    move-result v0

    #@1913
    move/16 v325, v0

    #@1916
    .line 1637
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1919
    .line 1638
    move/from16 v0, v325

    #@191b
    if-eqz v0, :cond_6d

    #@191d
    const/4 v6, 0x1

    #@191e
    :goto_5c
    move-object/from16 v0, p3

    #@1920
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1923
    .line 1639
    const/4 v6, 0x1

    #@1924
    return v6

    #@1925
    .line 1638
    :cond_6d
    const/4 v6, 0x0

    #@1926
    goto :goto_5c

    #@1927
    .line 1643
    .end local v316    # "reason":Ljava/lang/String;
    .end local v325    # "res":Z
    :pswitch_7d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@192a
    move-object/from16 v0, p2

    #@192c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@192f
    .line 1644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1932
    move-result-object v209

    #@1933
    .line 1645
    .local v209, "app":Landroid/os/IBinder;
    new-instance v221, Landroid/app/ApplicationErrorReport$CrashInfo;

    #@1935
    move-object/from16 v0, v221

    #@1937
    move-object/from16 v1, p2

    #@1939
    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    #@193c
    .line 1646
    .local v221, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    #@193e
    move-object/from16 v1, v209

    #@1940
    move-object/from16 v2, v221

    #@1942
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    #@1945
    .line 1647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1948
    .line 1648
    const/4 v6, 0x1

    #@1949
    return v6

    #@194a
    .line 1652
    .end local v209    # "app":Landroid/os/IBinder;
    .end local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_7e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@194d
    move-object/from16 v0, p2

    #@194f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1952
    .line 1653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1955
    move-result-object v209

    #@1956
    .line 1654
    .restart local v209    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1959
    move-result-object v0

    #@195a
    move-object/16 v351, v0

    #@195d
    .line 1655
    .restart local v351    # "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1960
    move-result v6

    #@1961
    if-eqz v6, :cond_6e

    #@1963
    const/4 v0, 0x1

    #@1964
    move/16 v350, v0

    #@1967
    .line 1656
    .local v350, "system":Z
    :goto_5d
    new-instance v221, Landroid/app/ApplicationErrorReport$CrashInfo;

    #@1969
    move-object/from16 v0, v221

    #@196b
    move-object/from16 v1, p2

    #@196d
    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    #@1970
    .line 1657
    .restart local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    #@1972
    move-object/from16 v1, v209

    #@1974
    move-object/from16 v2, v351

    #@1976
    move/from16 v3, v350

    #@1978
    move-object/from16 v4, v221

    #@197a
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    #@197d
    move-result v0

    #@197e
    move/16 v325, v0

    #@1981
    .line 1658
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1984
    .line 1659
    move/from16 v0, v325

    #@1986
    if-eqz v0, :cond_6f

    #@1988
    const/4 v6, 0x1

    #@1989
    :goto_5e
    move-object/from16 v0, p3

    #@198b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@198e
    .line 1660
    const/4 v6, 0x1

    #@198f
    return v6

    #@1990
    .line 1655
    .end local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v325    # "res":Z
    .end local v350    # "system":Z
    :cond_6e
    const/4 v0, 0x0

    #@1991
    move/16 v350, v0

    #@1994
    .restart local v350    # "system":Z
    goto :goto_5d

    #@1995
    .line 1659
    .restart local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v325    # "res":Z
    :cond_6f
    const/4 v6, 0x0

    #@1996
    goto :goto_5e

    #@1997
    .line 1664
    .end local v209    # "app":Landroid/os/IBinder;
    .end local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v325    # "res":Z
    .end local v350    # "system":Z
    .end local v351    # "tag":Ljava/lang/String;
    :pswitch_7f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@199a
    move-object/from16 v0, p2

    #@199c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@199f
    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19a2
    move-result-object v209

    #@19a3
    .line 1666
    .restart local v209    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19a6
    move-result v0

    #@19a7
    move/16 v365, v0

    #@19aa
    .line 1667
    .local v365, "violationMask":I
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    #@19ac
    move-object/16 v261, v0

    #@19af
    move-object/from16 v0, v261

    #@19b1
    move-object/from16 v1, p2

    #@19b3
    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    #@19b6
    .line 1668
    .local v261, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    #@19b8
    move-object/from16 v1, v209

    #@19ba
    move/from16 v2, v365

    #@19bc
    move-object/from16 v3, v261

    #@19be
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    #@19c1
    .line 1669
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19c4
    .line 1670
    const/4 v6, 0x1

    #@19c5
    return v6

    #@19c6
    .line 1674
    .end local v209    # "app":Landroid/os/IBinder;
    .end local v261    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v365    # "violationMask":I
    :pswitch_80
    const-string/jumbo v6, "android.app.IActivityManager"

    #@19c9
    move-object/from16 v0, p2

    #@19cb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19ce
    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19d1
    move-result v0

    #@19d2
    move/16 v339, v0

    #@19d5
    .line 1676
    .local v339, "sig":I
    move-object/from16 v0, p0

    #@19d7
    move/from16 v1, v339

    #@19d9
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    #@19dc
    .line 1677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19df
    .line 1678
    const/4 v6, 0x1

    #@19e0
    return v6

    #@19e1
    .line 1682
    .end local v339    # "sig":I
    :pswitch_81
    const-string/jumbo v6, "android.app.IActivityManager"

    #@19e4
    move-object/from16 v0, p2

    #@19e6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19e9
    .line 1683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19ec
    move-result-object v32

    #@19ed
    .line 1684
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19f0
    move-result v17

    #@19f1
    .line 1685
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@19f3
    move-object/from16 v1, v32

    #@19f5
    move/from16 v2, v17

    #@19f7
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    #@19fa
    .line 1686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19fd
    .line 1687
    const/4 v6, 0x1

    #@19fe
    return v6

    #@19ff
    .line 1691
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_82
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a02
    move-object/from16 v0, p2

    #@1a04
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a07
    .line 1692
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    #@1a0a
    .line 1693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a0d
    .line 1694
    const/4 v6, 0x1

    #@1a0e
    return v6

    #@1a0f
    .line 1698
    :pswitch_83
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a12
    move-object/from16 v0, p2

    #@1a14
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a17
    .line 1699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a1a
    move-result-object v32

    #@1a1b
    .line 1700
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a1e
    move-result v17

    #@1a1f
    .line 1701
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1a21
    move-object/from16 v1, v32

    #@1a23
    move/from16 v2, v17

    #@1a25
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killPackageDependents(Ljava/lang/String;I)V

    #@1a28
    .line 1702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a2b
    .line 1703
    const/4 v6, 0x1

    #@1a2c
    return v6

    #@1a2d
    .line 1707
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_84
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a30
    move-object/from16 v0, p2

    #@1a32
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a35
    .line 1708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a38
    move-result-object v32

    #@1a39
    .line 1709
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a3c
    move-result v17

    #@1a3d
    .line 1710
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1a3f
    move-object/from16 v1, v32

    #@1a41
    move/from16 v2, v17

    #@1a43
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    #@1a46
    .line 1711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a49
    .line 1712
    const/4 v6, 0x1

    #@1a4a
    return v6

    #@1a4b
    .line 1716
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_85
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a4e
    move-object/from16 v0, p2

    #@1a50
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a53
    .line 1718
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    #@1a55
    move-object/16 v256, v0

    #@1a58
    invoke-direct/range {v256 .. v256}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    #@1a5b
    .line 1719
    .local v256, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    #@1a5d
    move-object/from16 v1, v256

    #@1a5f
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    #@1a62
    .line 1720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a65
    .line 1721
    const/4 v6, 0x0

    #@1a66
    move-object/from16 v0, v256

    #@1a68
    move-object/from16 v1, p3

    #@1a6a
    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a6d
    .line 1722
    const/4 v6, 0x1

    #@1a6e
    return v6

    #@1a6f
    .line 1726
    .end local v256    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_86
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a72
    move-object/from16 v0, p2

    #@1a74
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a77
    .line 1727
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    #@1a7a
    move-result-object v224

    #@1a7b
    .line 1728
    .local v224, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a7e
    .line 1729
    const/4 v6, 0x0

    #@1a7f
    move-object/from16 v0, v224

    #@1a81
    move-object/from16 v1, p3

    #@1a83
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a86
    .line 1730
    const/4 v6, 0x1

    #@1a87
    return v6

    #@1a88
    .line 1734
    .end local v224    # "config":Landroid/content/pm/ConfigurationInfo;
    :pswitch_87
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1a8b
    move-object/from16 v0, p2

    #@1a8d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a90
    .line 1735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a93
    move-result-object v140

    #@1a94
    .line 1736
    .local v140, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a97
    move-result v17

    #@1a98
    .line 1737
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a9b
    move-result v6

    #@1a9c
    if-eqz v6, :cond_70

    #@1a9e
    const/16 v142, 0x1

    #@1aa0
    .line 1738
    .local v142, "start":Z
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1aa3
    move-result v144

    #@1aa4
    .line 1739
    .local v144, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1aa7
    move-result v6

    #@1aa8
    if-eqz v6, :cond_71

    #@1aaa
    .line 1740
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1aac
    move-object/from16 v0, p2

    #@1aae
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ab1
    move-result-object v6

    #@1ab2
    check-cast v6, Landroid/app/ProfilerInfo;

    #@1ab4
    move-object v15, v6

    #@1ab5
    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_60
    move-object/from16 v139, p0

    #@1ab7
    move/from16 v141, v17

    #@1ab9
    move-object/from16 v143, v15

    #@1abb
    .line 1741
    invoke-virtual/range {v139 .. v144}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    #@1abe
    move-result v0

    #@1abf
    move/16 v325, v0

    #@1ac2
    .line 1742
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ac5
    .line 1743
    move/from16 v0, v325

    #@1ac7
    if-eqz v0, :cond_72

    #@1ac9
    const/4 v6, 0x1

    #@1aca
    :goto_61
    move-object/from16 v0, p3

    #@1acc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1acf
    .line 1744
    const/4 v6, 0x1

    #@1ad0
    return v6

    #@1ad1
    .line 1737
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v142    # "start":Z
    .end local v144    # "profileType":I
    .end local v325    # "res":Z
    :cond_70
    const/16 v142, 0x0

    #@1ad3
    .restart local v142    # "start":Z
    goto :goto_5f

    #@1ad4
    .line 1740
    .restart local v144    # "profileType":I
    :cond_71
    const/4 v15, 0x0

    #@1ad5
    goto :goto_60

    #@1ad6
    .line 1743
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v325    # "res":Z
    :cond_72
    const/4 v6, 0x0

    #@1ad7
    goto :goto_61

    #@1ad8
    .line 1748
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v17    # "userId":I
    .end local v140    # "process":Ljava/lang/String;
    .end local v142    # "start":Z
    .end local v144    # "profileType":I
    .end local v325    # "res":Z
    :pswitch_88
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1adb
    move-object/from16 v0, p2

    #@1add
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ae0
    .line 1749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ae3
    move-result v6

    #@1ae4
    move-object/from16 v0, p0

    #@1ae6
    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    #@1ae9
    move-result v0

    #@1aea
    move/16 v325, v0

    #@1aed
    .line 1750
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1af0
    .line 1751
    move/from16 v0, v325

    #@1af2
    if-eqz v0, :cond_73

    #@1af4
    const/4 v6, 0x1

    #@1af5
    :goto_62
    move-object/from16 v0, p3

    #@1af7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1afa
    .line 1752
    const/4 v6, 0x1

    #@1afb
    return v6

    #@1afc
    .line 1751
    :cond_73
    const/4 v6, 0x0

    #@1afd
    goto :goto_62

    #@1afe
    .line 1756
    .end local v325    # "res":Z
    :pswitch_89
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1b01
    move-object/from16 v0, p2

    #@1b03
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b06
    .line 1757
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    #@1b09
    .line 1758
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b0c
    .line 1759
    const/4 v6, 0x1

    #@1b0d
    return v6

    #@1b0e
    .line 1763
    :pswitch_8a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1b11
    move-object/from16 v0, p2

    #@1b13
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b16
    .line 1764
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    #@1b19
    .line 1765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b1c
    .line 1766
    const/4 v6, 0x1

    #@1b1d
    return v6

    #@1b1e
    .line 1770
    :pswitch_8b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1b21
    move-object/from16 v0, p2

    #@1b23
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b26
    .line 1771
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b28
    move-object/from16 v0, p2

    #@1b2a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b2d
    move-result-object v90

    #@1b2e
    check-cast v90, Landroid/content/Intent;

    #@1b30
    .line 1772
    .restart local v90    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b33
    move-result-object v10

    #@1b34
    .line 1773
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b37
    move-result-object v8

    #@1b38
    .line 1774
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1b3a
    move-object/from16 v1, v90

    #@1b3c
    invoke-virtual {v0, v1, v10, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    #@1b3f
    move-result-object v215

    #@1b40
    .line 1775
    .local v215, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b43
    .line 1776
    move-object/from16 v0, p3

    #@1b45
    move-object/from16 v1, v215

    #@1b47
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b4a
    .line 1777
    const/4 v6, 0x1

    #@1b4b
    return v6

    #@1b4c
    .line 1781
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v90    # "service":Landroid/content/Intent;
    .end local v215    # "binder":Landroid/os/IBinder;
    :pswitch_8c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1b4f
    move-object/from16 v0, p2

    #@1b51
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b54
    .line 1782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b57
    move-result-object v32

    #@1b58
    .line 1783
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b5b
    move-result v214

    #@1b5c
    .line 1784
    .local v214, "backupRestoreMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b5f
    move-result v17

    #@1b60
    .line 1785
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1b62
    move-object/from16 v1, v32

    #@1b64
    move/from16 v2, v214

    #@1b66
    move/from16 v3, v17

    #@1b68
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Ljava/lang/String;II)Z

    #@1b6b
    move-result v0

    #@1b6c
    move/16 v348, v0

    #@1b6f
    .line 1786
    .local v348, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b72
    .line 1787
    move/from16 v0, v348

    #@1b74
    if-eqz v0, :cond_74

    #@1b76
    const/4 v6, 0x1

    #@1b77
    :goto_63
    move-object/from16 v0, p3

    #@1b79
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1b7c
    .line 1788
    const/4 v6, 0x1

    #@1b7d
    return v6

    #@1b7e
    .line 1787
    :cond_74
    const/4 v6, 0x0

    #@1b7f
    goto :goto_63

    #@1b80
    .line 1792
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v214    # "backupRestoreMode":I
    .end local v348    # "success":Z
    :pswitch_8d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1b83
    move-object/from16 v0, p2

    #@1b85
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b88
    .line 1793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b8b
    move-result-object v32

    #@1b8c
    .line 1794
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b8f
    move-result-object v206

    #@1b90
    .line 1795
    .local v206, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1b92
    move-object/from16 v1, v32

    #@1b94
    move-object/from16 v2, v206

    #@1b96
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    #@1b99
    .line 1796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b9c
    .line 1797
    const/4 v6, 0x1

    #@1b9d
    return v6

    #@1b9e
    .line 1801
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v206    # "agent":Landroid/os/IBinder;
    :pswitch_8e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1ba1
    move-object/from16 v0, p2

    #@1ba3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ba6
    .line 1802
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ba8
    move-object/from16 v0, p2

    #@1baa
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1bad
    move-result-object v0

    #@1bae
    move-object/16 v260, v0

    #@1bb1
    move-object/from16 v0, v260

    #@1bb3
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@1bb5
    move-object/16 v260, v0

    #@1bb8
    .line 1803
    .local v260, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    #@1bba
    move-object/from16 v1, v260

    #@1bbc
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    #@1bbf
    .line 1804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bc2
    .line 1805
    const/4 v6, 0x1

    #@1bc3
    return v6

    #@1bc4
    .line 1809
    .end local v260    # "info":Landroid/content/pm/ApplicationInfo;
    :pswitch_8f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1bc7
    move-object/from16 v0, p2

    #@1bc9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bcc
    .line 1810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1bcf
    move-result-object v32

    #@1bd0
    .line 1811
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1bd2
    move-object/from16 v1, v32

    #@1bd4
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    #@1bd7
    .line 1812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bda
    .line 1813
    const/4 v6, 0x1

    #@1bdb
    return v6

    #@1bdc
    .line 1817
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_90
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1bdf
    move-object/from16 v0, p2

    #@1be1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1be4
    .line 1818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1be7
    move-result-object v0

    #@1be8
    move-object/16 v308, v0

    #@1beb
    .line 1819
    .local v308, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bee
    move-result v210

    #@1bef
    .line 1820
    .local v210, "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bf2
    move-result v17

    #@1bf3
    .line 1821
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1bf6
    move-result-object v0

    #@1bf7
    move-object/16 v316, v0

    #@1bfa
    .line 1822
    .restart local v316    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1bfc
    move-object/from16 v1, v308

    #@1bfe
    move/from16 v2, v210

    #@1c00
    move/from16 v3, v17

    #@1c02
    move-object/from16 v4, v316

    #@1c04
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    #@1c07
    .line 1823
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c0a
    .line 1824
    const/4 v6, 0x1

    #@1c0b
    return v6

    #@1c0c
    .line 1828
    .end local v17    # "userId":I
    .end local v210    # "appId":I
    .end local v308    # "pkg":Ljava/lang/String;
    .end local v316    # "reason":Ljava/lang/String;
    :pswitch_91
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1c0f
    move-object/from16 v0, p2

    #@1c11
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c14
    .line 1829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c17
    move-result-object v0

    #@1c18
    move-object/16 v316, v0

    #@1c1b
    .line 1830
    .restart local v316    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1c1d
    move-object/from16 v1, v316

    #@1c1f
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    #@1c22
    .line 1831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c25
    .line 1832
    const/4 v6, 0x1

    #@1c26
    return v6

    #@1c27
    .line 1836
    .end local v316    # "reason":Ljava/lang/String;
    :pswitch_92
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1c2a
    move-object/from16 v0, p2

    #@1c2c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c2f
    .line 1837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@1c32
    move-result-object v0

    #@1c33
    move-object/16 v307, v0

    #@1c36
    .line 1838
    .restart local v307    # "pids":[I
    move-object/from16 v0, p0

    #@1c38
    move-object/from16 v1, v307

    #@1c3a
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    #@1c3d
    move-result-object v0

    #@1c3e
    move-object/16 v326, v0

    #@1c41
    .line 1839
    .local v326, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c44
    .line 1840
    const/4 v6, 0x1

    #@1c45
    move-object/from16 v0, p3

    #@1c47
    move-object/from16 v1, v326

    #@1c49
    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1c4c
    .line 1841
    const/4 v6, 0x1

    #@1c4d
    return v6

    #@1c4e
    .line 1845
    .end local v307    # "pids":[I
    .end local v326    # "res":[Landroid/os/Debug$MemoryInfo;
    :pswitch_93
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1c51
    move-object/from16 v0, p2

    #@1c53
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c56
    .line 1846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c59
    move-result-object v0

    #@1c5a
    move-object/16 v312, v0

    #@1c5d
    .line 1847
    .local v312, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c60
    move-result v132

    #@1c61
    .line 1848
    .restart local v132    # "uid":I
    move-object/from16 v0, p0

    #@1c63
    move-object/from16 v1, v312

    #@1c65
    move/from16 v2, v132

    #@1c67
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    #@1c6a
    .line 1849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c6d
    .line 1850
    const/4 v6, 0x1

    #@1c6e
    return v6

    #@1c6f
    .line 1854
    .end local v132    # "uid":I
    .end local v312    # "processName":Ljava/lang/String;
    :pswitch_94
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1c72
    move-object/from16 v0, p2

    #@1c74
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c77
    .line 1855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1c7a
    move-result-object v93

    #@1c7b
    .line 1856
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c7e
    move-result-object v32

    #@1c7f
    .line 1857
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c82
    move-result v234

    #@1c83
    .line 1858
    .local v234, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c86
    move-result v235

    #@1c87
    .line 1859
    .local v235, "exitAnim":I
    move-object/from16 v0, p0

    #@1c89
    move-object/from16 v1, v93

    #@1c8b
    move-object/from16 v2, v32

    #@1c8d
    move/from16 v3, v234

    #@1c8f
    move/from16 v4, v235

    #@1c91
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    #@1c94
    .line 1860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c97
    .line 1861
    const/4 v6, 0x1

    #@1c98
    return v6

    #@1c99
    .line 1865
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v234    # "enterAnim":I
    .end local v235    # "exitAnim":I
    :pswitch_95
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1c9c
    move-object/from16 v0, p2

    #@1c9e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ca1
    .line 1866
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    #@1ca4
    move-result v211

    #@1ca5
    .line 1867
    .local v211, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ca8
    .line 1868
    if-eqz v211, :cond_75

    #@1caa
    const/4 v6, 0x1

    #@1cab
    :goto_64
    move-object/from16 v0, p3

    #@1cad
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1cb0
    .line 1869
    const/4 v6, 0x1

    #@1cb1
    return v6

    #@1cb2
    .line 1868
    :cond_75
    const/4 v6, 0x0

    #@1cb3
    goto :goto_64

    #@1cb4
    .line 1873
    .end local v211    # "areThey":Z
    :pswitch_96
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1cb7
    move-object/from16 v0, p2

    #@1cb9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cbc
    .line 1874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cbf
    move-result v6

    #@1cc0
    const/16 v18, 0x1

    #@1cc2
    move/from16 v0, v18

    #@1cc4
    if-ne v6, v0, :cond_76

    #@1cc6
    const/4 v0, 0x1

    #@1cc7
    move/16 v287, v0

    #@1cca
    .line 1875
    .local v287, "monkey":Z
    :goto_65
    move-object/from16 v0, p0

    #@1ccc
    move/from16 v1, v287

    #@1cce
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    #@1cd1
    .line 1876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cd4
    .line 1877
    const/4 v6, 0x1

    #@1cd5
    return v6

    #@1cd6
    .line 1874
    .end local v287    # "monkey":Z
    :cond_76
    const/4 v0, 0x0

    #@1cd7
    move/16 v287, v0

    #@1cda
    goto :goto_65

    #@1cdb
    .line 1881
    :pswitch_97
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1cde
    move-object/from16 v0, p2

    #@1ce0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ce3
    .line 1882
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    #@1ce6
    .line 1883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ce9
    .line 1884
    const/4 v6, 0x1

    #@1cea
    return v6

    #@1ceb
    .line 1888
    :pswitch_98
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1cee
    move-object/from16 v0, p2

    #@1cf0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cf3
    .line 1889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1cf6
    move-result-object v93

    #@1cf7
    .line 1890
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1cf9
    move-object/from16 v1, v93

    #@1cfb
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    #@1cfe
    move-result v0

    #@1cff
    move/16 v268, v0

    #@1d02
    .line 1891
    .local v268, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d05
    .line 1892
    move/from16 v0, v268

    #@1d07
    if-eqz v0, :cond_77

    #@1d09
    const/4 v6, 0x1

    #@1d0a
    :goto_66
    move-object/from16 v0, p3

    #@1d0c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1d0f
    .line 1893
    const/4 v6, 0x1

    #@1d10
    return v6

    #@1d11
    .line 1892
    :cond_77
    const/4 v6, 0x0

    #@1d12
    goto :goto_66

    #@1d13
    .line 1897
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v268    # "isit":Z
    :pswitch_99
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1d16
    move-object/from16 v0, p2

    #@1d18
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d1b
    .line 1898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d1e
    move-result-object v93

    #@1d1f
    .line 1899
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1d21
    move-object/from16 v1, v93

    #@1d23
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    #@1d26
    move-result v0

    #@1d27
    move/16 v267, v0

    #@1d2a
    .line 1900
    .local v267, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d2d
    .line 1901
    move/from16 v0, v267

    #@1d2f
    if-eqz v0, :cond_78

    #@1d31
    const/4 v6, 0x1

    #@1d32
    :goto_67
    move-object/from16 v0, p3

    #@1d34
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1d37
    .line 1902
    const/4 v6, 0x1

    #@1d38
    return v6

    #@1d39
    .line 1901
    :cond_78
    const/4 v6, 0x0

    #@1d3a
    goto :goto_67

    #@1d3b
    .line 1906
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v267    # "isTopOfTask":Z
    :pswitch_9a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1d3e
    move-object/from16 v0, p2

    #@1d40
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d43
    .line 1907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d46
    move-result-object v93

    #@1d47
    .line 1908
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1d49
    move-object/from16 v1, v93

    #@1d4b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    #@1d4e
    move-result v225

    #@1d4f
    .line 1909
    .local v225, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d52
    .line 1910
    if-eqz v225, :cond_79

    #@1d54
    const/4 v6, 0x1

    #@1d55
    :goto_68
    move-object/from16 v0, p3

    #@1d57
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1d5a
    .line 1911
    const/4 v6, 0x1

    #@1d5b
    return v6

    #@1d5c
    .line 1910
    :cond_79
    const/4 v6, 0x0

    #@1d5d
    goto :goto_68

    #@1d5e
    .line 1915
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v225    # "converted":Z
    :pswitch_9b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1d61
    move-object/from16 v0, p2

    #@1d63
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d66
    .line 1916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d69
    move-result-object v93

    #@1d6a
    .line 1918
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d6d
    move-result v6

    #@1d6e
    if-nez v6, :cond_7a

    #@1d70
    .line 1919
    const/16 v217, 0x0

    #@1d72
    .line 1923
    :goto_69
    invoke-static/range {v217 .. v217}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    #@1d75
    move-result-object v0

    #@1d76
    move-object/16 v297, v0

    #@1d79
    .line 1924
    .local v297, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    #@1d7b
    move-object/from16 v1, v93

    #@1d7d
    move-object/from16 v2, v297

    #@1d7f
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    #@1d82
    move-result v225

    #@1d83
    .line 1925
    .restart local v225    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d86
    .line 1926
    if-eqz v225, :cond_7b

    #@1d88
    const/4 v6, 0x1

    #@1d89
    :goto_6a
    move-object/from16 v0, p3

    #@1d8b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1d8e
    .line 1927
    const/4 v6, 0x1

    #@1d8f
    return v6

    #@1d90
    .line 1921
    .end local v225    # "converted":Z
    .end local v297    # "options":Landroid/app/ActivityOptions;
    :cond_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@1d93
    move-result-object v217

    #@1d94
    .local v217, "bundle":Landroid/os/Bundle;
    goto :goto_69

    #@1d95
    .line 1926
    .end local v217    # "bundle":Landroid/os/Bundle;
    .restart local v225    # "converted":Z
    .restart local v297    # "options":Landroid/app/ActivityOptions;
    :cond_7b
    const/4 v6, 0x0

    #@1d96
    goto :goto_6a

    #@1d97
    .line 1931
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v225    # "converted":Z
    .end local v297    # "options":Landroid/app/ActivityOptions;
    :pswitch_9c
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1d9a
    move-object/from16 v0, p2

    #@1d9c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d9f
    .line 1932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1da2
    move-result-object v93

    #@1da3
    .line 1933
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1da5
    move-object/from16 v1, v93

    #@1da7
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    #@1daa
    move-result-object v0

    #@1dab
    move-object/16 v297, v0

    #@1dae
    .line 1934
    .restart local v297    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1db1
    .line 1935
    move-object/from16 v0, v297

    #@1db3
    if-nez v0, :cond_7c

    #@1db5
    const/4 v6, 0x0

    #@1db6
    :goto_6b
    move-object/from16 v0, p3

    #@1db8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@1dbb
    .line 1936
    const/4 v6, 0x1

    #@1dbc
    return v6

    #@1dbd
    .line 1935
    :cond_7c
    invoke-virtual/range {v297 .. v297}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@1dc0
    move-result-object v6

    #@1dc1
    goto :goto_6b

    #@1dc2
    .line 1940
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v297    # "options":Landroid/app/ActivityOptions;
    :pswitch_9d
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1dc5
    move-object/from16 v0, p2

    #@1dc7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1dca
    .line 1941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1dcd
    move-result-object v93

    #@1dce
    .line 1942
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1dd1
    move-result v6

    #@1dd2
    const/16 v18, 0x1

    #@1dd4
    move/from16 v0, v18

    #@1dd6
    if-ne v6, v0, :cond_7d

    #@1dd8
    const/16 v252, 0x1

    #@1dda
    .line 1943
    .local v252, "imm":Z
    :goto_6c
    move-object/from16 v0, p0

    #@1ddc
    move-object/from16 v1, v93

    #@1dde
    move/from16 v2, v252

    #@1de0
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    #@1de3
    .line 1944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1de6
    .line 1945
    const/4 v6, 0x1

    #@1de7
    return v6

    #@1de8
    .line 1942
    .end local v252    # "imm":Z
    :cond_7d
    const/16 v252, 0x0

    #@1dea
    goto :goto_6c

    #@1deb
    .line 1949
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_9e
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1dee
    move-object/from16 v0, p2

    #@1df0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1df3
    .line 1950
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    #@1df6
    move-result v0

    #@1df7
    move/16 v268, v0

    #@1dfa
    .line 1951
    .restart local v268    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1dfd
    .line 1952
    move/from16 v0, v268

    #@1dff
    if-eqz v0, :cond_7e

    #@1e01
    const/4 v6, 0x1

    #@1e02
    :goto_6d
    move-object/from16 v0, p3

    #@1e04
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1e07
    .line 1953
    const/4 v6, 0x1

    #@1e08
    return v6

    #@1e09
    .line 1952
    :cond_7e
    const/4 v6, 0x0

    #@1e0a
    goto :goto_6d

    #@1e0b
    .line 1957
    .end local v268    # "isit":Z
    :pswitch_9f
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1e0e
    move-object/from16 v0, p2

    #@1e10
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e13
    .line 1958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e16
    move-result v132

    #@1e17
    .line 1959
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e1a
    move-result v0

    #@1e1b
    move/16 v262, v0

    #@1e1e
    .line 1960
    .local v262, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e21
    move-result-object v32

    #@1e22
    .line 1961
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e25
    move-result-object v0

    #@1e26
    move-object/16 v285, v0

    #@1e29
    .line 1962
    .local v285, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1e2b
    move/from16 v1, v132

    #@1e2d
    move/from16 v2, v262

    #@1e2f
    move-object/from16 v3, v32

    #@1e31
    move-object/from16 v4, v285

    #@1e33
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    #@1e36
    .line 1963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e39
    .line 1964
    const/4 v6, 0x1

    #@1e3a
    return v6

    #@1e3b
    .line 1968
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v132    # "uid":I
    .end local v262    # "initialPid":I
    .end local v285    # "message":Ljava/lang/String;
    :pswitch_a0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1e3e
    move-object/from16 v0, p2

    #@1e40
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e43
    .line 1969
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e45
    move-object/from16 v0, p2

    #@1e47
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e4a
    move-result-object v130

    #@1e4b
    check-cast v130, Landroid/net/Uri;

    #@1e4d
    .line 1970
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e50
    move-result v17

    #@1e51
    .line 1971
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1e53
    move-object/from16 v1, v130

    #@1e55
    move/from16 v2, v17

    #@1e57
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    #@1e5a
    move-result-object v0

    #@1e5b
    move-object/16 v359, v0

    #@1e5e
    .line 1972
    .local v359, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e61
    .line 1973
    move-object/from16 v0, p3

    #@1e63
    move-object/from16 v1, v359

    #@1e65
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e68
    .line 1974
    const/4 v6, 0x1

    #@1e69
    return v6

    #@1e6a
    .line 1978
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v359    # "type":Ljava/lang/String;
    :pswitch_a1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1e6d
    move-object/from16 v0, p2

    #@1e6f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e72
    .line 1979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e75
    move-result-object v127

    #@1e76
    .line 1980
    .restart local v127    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1e78
    move-object/from16 v1, v127

    #@1e7a
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    #@1e7d
    move-result-object v0

    #@1e7e
    move-object/16 v302, v0

    #@1e81
    .line 1981
    .local v302, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e84
    .line 1982
    move-object/from16 v0, p3

    #@1e86
    move-object/from16 v1, v302

    #@1e88
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1e8b
    .line 1983
    const/4 v6, 0x1

    #@1e8c
    return v6

    #@1e8d
    .line 1987
    .end local v127    # "name":Ljava/lang/String;
    .end local v302    # "perm":Landroid/os/IBinder;
    :pswitch_a2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1e90
    move-object/from16 v0, p2

    #@1e92
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e95
    .line 1988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1e98
    move-result-object v173

    #@1e99
    .line 1989
    .restart local v173    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1e9b
    move-object/from16 v1, v173

    #@1e9d
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    #@1ea0
    move-result-object v0

    #@1ea1
    move-object/16 v302, v0

    #@1ea4
    .line 1990
    .restart local v302    # "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ea7
    .line 1991
    move-object/from16 v0, p3

    #@1ea9
    move-object/from16 v1, v302

    #@1eab
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1eae
    .line 1992
    const/4 v6, 0x1

    #@1eaf
    return v6

    #@1eb0
    .line 1996
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v302    # "perm":Landroid/os/IBinder;
    :pswitch_a3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1eb3
    move-object/from16 v0, p2

    #@1eb5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1eb8
    .line 1997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1ebb
    move-result-object v146

    #@1ebc
    .line 1998
    .local v146, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ebf
    move-result v147

    #@1ec0
    .line 1999
    .local v147, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ec3
    move-result-object v138

    #@1ec4
    .line 2000
    .restart local v138    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ec6
    move-object/from16 v0, p2

    #@1ec8
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ecb
    move-result-object v130

    #@1ecc
    check-cast v130, Landroid/net/Uri;

    #@1ece
    .line 2001
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ed1
    move-result v133

    #@1ed2
    .line 2002
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ed5
    move-result v151

    #@1ed6
    .line 2003
    .local v151, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ed9
    move-result v152

    #@1eda
    .local v152, "targetUserId":I
    move-object/from16 v145, p0

    #@1edc
    move-object/from16 v148, v138

    #@1ede
    move-object/from16 v149, v130

    #@1ee0
    move/from16 v150, v133

    #@1ee2
    .line 2004
    invoke-virtual/range {v145 .. v152}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    #@1ee5
    .line 2006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ee8
    .line 2007
    const/4 v6, 0x1

    #@1ee9
    return v6

    #@1eea
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

    #@1eed
    move-object/from16 v0, p2

    #@1eef
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ef2
    .line 2012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1ef5
    move-result-object v146

    #@1ef6
    .line 2013
    .restart local v146    # "owner":Landroid/os/IBinder;
    const/16 v130, 0x0

    #@1ef8
    .line 2014
    .local v130, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1efb
    move-result v6

    #@1efc
    if-eqz v6, :cond_7f

    #@1efe
    .line 2015
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f00
    move-object/from16 v0, p2

    #@1f02
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f05
    move-result-object v130

    #@1f06
    .end local v130    # "uri":Landroid/net/Uri;
    check-cast v130, Landroid/net/Uri;

    #@1f08
    .line 2017
    :cond_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f0b
    move-result v133

    #@1f0c
    .line 2018
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f0f
    move-result v17

    #@1f10
    .line 2019
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@1f12
    move-object/from16 v1, v146

    #@1f14
    move-object/from16 v2, v130

    #@1f16
    move/from16 v3, v133

    #@1f18
    move/from16 v4, v17

    #@1f1a
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    #@1f1d
    .line 2020
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f20
    .line 2021
    const/4 v6, 0x1

    #@1f21
    return v6

    #@1f22
    .line 2025
    .end local v17    # "userId":I
    .end local v133    # "mode":I
    .end local v146    # "owner":Landroid/os/IBinder;
    :pswitch_a5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1f25
    move-object/from16 v0, p2

    #@1f27
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f2a
    .line 2026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f2d
    move-result v43

    #@1f2e
    .line 2027
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f31
    move-result-object v138

    #@1f32
    .line 2028
    .restart local v138    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f34
    move-object/from16 v0, p2

    #@1f36
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f39
    move-result-object v130

    #@1f3a
    check-cast v130, Landroid/net/Uri;

    #@1f3c
    .line 2029
    .local v130, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f3f
    move-result v157

    #@1f40
    .line 2030
    .local v157, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f43
    move-result v17

    #@1f44
    .restart local v17    # "userId":I
    move-object/from16 v153, p0

    #@1f46
    move/from16 v154, v43

    #@1f48
    move-object/from16 v155, v138

    #@1f4a
    move-object/from16 v156, v130

    #@1f4c
    move/from16 v158, v17

    #@1f4e
    .line 2031
    invoke-virtual/range {v153 .. v158}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    #@1f51
    move-result v0

    #@1f52
    move/16 v319, v0

    #@1f55
    .line 2032
    .restart local v319    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f58
    .line 2033
    move-object/from16 v0, p3

    #@1f5a
    move/from16 v1, v319

    #@1f5c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f5f
    .line 2034
    const/4 v6, 0x1

    #@1f60
    return v6

    #@1f61
    .line 2038
    .end local v17    # "userId":I
    .end local v43    # "callingUid":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v138    # "targetPkg":Ljava/lang/String;
    .end local v157    # "modeFlags":I
    .end local v319    # "res":I
    :pswitch_a6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1f64
    move-object/from16 v0, p2

    #@1f66
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f69
    .line 2039
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f6c
    move-result-object v140

    #@1f6d
    .line 2040
    .restart local v140    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f70
    move-result v17

    #@1f71
    .line 2041
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f74
    move-result v6

    #@1f75
    if-eqz v6, :cond_80

    #@1f77
    const/16 v161, 0x1

    #@1f79
    .line 2042
    .local v161, "managed":Z
    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f7c
    move-result-object v162

    #@1f7d
    .line 2043
    .local v162, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f80
    move-result v6

    #@1f81
    if-eqz v6, :cond_81

    #@1f83
    .line 2044
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f85
    move-object/from16 v0, p2

    #@1f87
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f8a
    move-result-object v6

    #@1f8b
    check-cast v6, Landroid/os/ParcelFileDescriptor;

    #@1f8d
    move-object/from16 v163, v6

    #@1f8f
    .local v163, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_6f
    move-object/from16 v158, p0

    #@1f91
    move-object/from16 v159, v140

    #@1f93
    move/from16 v160, v17

    #@1f95
    .line 2045
    invoke-virtual/range {v158 .. v163}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    #@1f98
    move-result v0

    #@1f99
    move/16 v325, v0

    #@1f9c
    .line 2046
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f9f
    .line 2047
    move/from16 v0, v325

    #@1fa1
    if-eqz v0, :cond_82

    #@1fa3
    const/4 v6, 0x1

    #@1fa4
    :goto_70
    move-object/from16 v0, p3

    #@1fa6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1fa9
    .line 2048
    const/4 v6, 0x1

    #@1faa
    return v6

    #@1fab
    .line 2041
    .end local v161    # "managed":Z
    .end local v162    # "path":Ljava/lang/String;
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v325    # "res":Z
    :cond_80
    const/16 v161, 0x0

    #@1fad
    .restart local v161    # "managed":Z
    goto :goto_6e

    #@1fae
    .line 2044
    .restart local v162    # "path":Ljava/lang/String;
    :cond_81
    const/16 v163, 0x0

    #@1fb0
    goto :goto_6f

    #@1fb1
    .line 2047
    .restart local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v325    # "res":Z
    :cond_82
    const/4 v6, 0x0

    #@1fb2
    goto :goto_70

    #@1fb3
    .line 2053
    .end local v17    # "userId":I
    .end local v140    # "process":Ljava/lang/String;
    .end local v161    # "managed":Z
    .end local v162    # "path":Ljava/lang/String;
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v325    # "res":Z
    :pswitch_a7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@1fb6
    move-object/from16 v0, p2

    #@1fb8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fbb
    .line 2054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1fbe
    move-result-object v213

    #@1fbf
    .line 2055
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    #@1fc2
    move-result-object v7

    #@1fc3
    .line 2056
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1fc6
    move-result-object v8

    #@1fc7
    .line 2057
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1fc9
    move-object/from16 v0, p2

    #@1fcb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1fce
    move-result-object v167

    #@1fcf
    check-cast v167, [Landroid/content/Intent;

    #@1fd1
    .line 2058
    .local v167, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1fd4
    move-result-object v168

    #@1fd5
    .line 2059
    .local v168, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1fd8
    move-result-object v11

    #@1fd9
    .line 2060
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fdc
    move-result v6

    #@1fdd
    if-eqz v6, :cond_83

    #@1fdf
    .line 2061
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1fe1
    move-object/from16 v0, p2

    #@1fe3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1fe6
    move-result-object v16

    #@1fe7
    check-cast v16, Landroid/os/Bundle;

    #@1fe9
    .line 2062
    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fec
    move-result v17

    #@1fed
    .restart local v17    # "userId":I
    move-object/from16 v164, p0

    #@1fef
    move-object/from16 v165, v7

    #@1ff1
    move-object/from16 v166, v8

    #@1ff3
    move-object/from16 v169, v11

    #@1ff5
    move-object/from16 v170, v16

    #@1ff7
    move/from16 v171, v17

    #@1ff9
    .line 2063
    invoke-virtual/range {v164 .. v171}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    #@1ffc
    move-result v0

    #@1ffd
    move/16 v329, v0

    #@2000
    .line 2065
    .restart local v329    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2003
    .line 2066
    move-object/from16 v0, p3

    #@2005
    move/from16 v1, v329

    #@2007
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@200a
    .line 2067
    const/4 v6, 0x1

    #@200b
    return v6

    #@200c
    .line 2061
    .end local v17    # "userId":I
    .end local v329    # "result":I
    :cond_83
    const/16 v16, 0x0

    #@200e
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_71

    #@200f
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

    #@2012
    move-object/from16 v0, p2

    #@2014
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2017
    .line 2073
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    #@201a
    move-result v133

    #@201b
    .line 2074
    .restart local v133    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@201e
    .line 2075
    move-object/from16 v0, p3

    #@2020
    move/from16 v1, v133

    #@2022
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2025
    .line 2076
    const/4 v6, 0x1

    #@2026
    return v6

    #@2027
    .line 2081
    .end local v133    # "mode":I
    :pswitch_a9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@202a
    move-object/from16 v0, p2

    #@202c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@202f
    .line 2082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2032
    move-result v133

    #@2033
    .line 2083
    .restart local v133    # "mode":I
    move-object/from16 v0, p0

    #@2035
    move/from16 v1, v133

    #@2037
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    #@203a
    .line 2084
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@203d
    .line 2085
    move-object/from16 v0, p3

    #@203f
    move/from16 v1, v133

    #@2041
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2044
    .line 2086
    const/4 v6, 0x1

    #@2045
    return v6

    #@2046
    .line 2091
    .end local v133    # "mode":I
    :pswitch_aa
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2049
    move-object/from16 v0, p2

    #@204b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@204e
    .line 2092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2051
    move-result-object v0

    #@2052
    move-object/16 v308, v0

    #@2055
    .line 2093
    .restart local v308    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2057
    move-object/from16 v1, v308

    #@2059
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    #@205c
    move-result v133

    #@205d
    .line 2094
    .restart local v133    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2060
    .line 2095
    move-object/from16 v0, p3

    #@2062
    move/from16 v1, v133

    #@2064
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2067
    .line 2096
    const/4 v6, 0x1

    #@2068
    return v6

    #@2069
    .line 2101
    .end local v133    # "mode":I
    .end local v308    # "pkg":Ljava/lang/String;
    :pswitch_ab
    const-string/jumbo v6, "android.app.IActivityManager"

    #@206c
    move-object/from16 v0, p2

    #@206e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2071
    .line 2102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2074
    move-result-object v0

    #@2075
    move-object/16 v308, v0

    #@2078
    .line 2103
    .restart local v308    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@207b
    move-result v133

    #@207c
    .line 2104
    .restart local v133    # "mode":I
    move-object/from16 v0, p0

    #@207e
    move-object/from16 v1, v308

    #@2080
    move/from16 v2, v133

    #@2082
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    #@2085
    .line 2105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2088
    .line 2106
    const/4 v6, 0x1

    #@2089
    return v6

    #@208a
    .line 2110
    .end local v133    # "mode":I
    .end local v308    # "pkg":Ljava/lang/String;
    :pswitch_ac
    const-string/jumbo v6, "android.app.IActivityManager"

    #@208d
    move-object/from16 v0, p2

    #@208f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2092
    .line 2111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2095
    move-result v0

    #@2096
    move/16 v362, v0

    #@2099
    .line 2112
    .local v362, "userid":I
    move-object/from16 v0, p0

    #@209b
    move/from16 v1, v362

    #@209d
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    #@20a0
    move-result v0

    #@20a1
    move/16 v331, v0

    #@20a4
    .line 2113
    .restart local v331    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20a7
    .line 2114
    move/from16 v0, v331

    #@20a9
    if-eqz v0, :cond_84

    #@20ab
    const/4 v6, 0x1

    #@20ac
    :goto_72
    move-object/from16 v0, p3

    #@20ae
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@20b1
    .line 2115
    const/4 v6, 0x1

    #@20b2
    return v6

    #@20b3
    .line 2114
    :cond_84
    const/4 v6, 0x0

    #@20b4
    goto :goto_72

    #@20b5
    .line 2119
    .end local v331    # "result":Z
    .end local v362    # "userid":I
    :pswitch_ad
    const-string/jumbo v6, "android.app.IActivityManager"

    #@20b8
    move-object/from16 v0, p2

    #@20ba
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20bd
    .line 2120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20c0
    move-result v0

    #@20c1
    move/16 v362, v0

    #@20c4
    .line 2121
    .restart local v362    # "userid":I
    move-object/from16 v0, p0

    #@20c6
    move/from16 v1, v362

    #@20c8
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    #@20cb
    move-result v0

    #@20cc
    move/16 v331, v0

    #@20cf
    .line 2122
    .restart local v331    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20d2
    .line 2123
    move/from16 v0, v331

    #@20d4
    if-eqz v0, :cond_85

    #@20d6
    const/4 v6, 0x1

    #@20d7
    :goto_73
    move-object/from16 v0, p3

    #@20d9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@20dc
    .line 2124
    const/4 v6, 0x1

    #@20dd
    return v6

    #@20de
    .line 2123
    :cond_85
    const/4 v6, 0x0

    #@20df
    goto :goto_73

    #@20e0
    .line 2128
    .end local v331    # "result":Z
    .end local v362    # "userid":I
    :pswitch_ae
    const-string/jumbo v6, "android.app.IActivityManager"

    #@20e3
    move-object/from16 v0, p2

    #@20e5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20e8
    .line 2129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20eb
    move-result v17

    #@20ec
    .line 2130
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@20ef
    move-result-object v0

    #@20f0
    move-object/16 v358, v0

    #@20f3
    .line 2131
    .local v358, "token":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@20f6
    move-result-object v0

    #@20f7
    move-object/16 v335, v0

    #@20fa
    .line 2133
    .local v335, "secret":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@20fd
    move-result-object v6

    #@20fe
    .line 2132
    invoke-static {v6}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    #@2101
    move-result-object v0

    #@2102
    move-object/16 v280, v0

    #@2105
    .line 2134
    .local v280, "listener":Landroid/os/IProgressListener;
    move-object/from16 v0, p0

    #@2107
    move/from16 v1, v17

    #@2109
    move-object/from16 v2, v358

    #@210b
    move-object/from16 v3, v335

    #@210d
    move-object/from16 v4, v280

    #@210f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    #@2112
    move-result v0

    #@2113
    move/16 v331, v0

    #@2116
    .line 2135
    .restart local v331    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2119
    .line 2136
    move/from16 v0, v331

    #@211b
    if-eqz v0, :cond_86

    #@211d
    const/4 v6, 0x1

    #@211e
    :goto_74
    move-object/from16 v0, p3

    #@2120
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2123
    .line 2137
    const/4 v6, 0x1

    #@2124
    return v6

    #@2125
    .line 2136
    :cond_86
    const/4 v6, 0x0

    #@2126
    goto :goto_74

    #@2127
    .line 2141
    .end local v17    # "userId":I
    .end local v280    # "listener":Landroid/os/IProgressListener;
    .end local v331    # "result":Z
    .end local v335    # "secret":[B
    .end local v358    # "token":[B
    :pswitch_af
    const-string/jumbo v6, "android.app.IActivityManager"

    #@212a
    move-object/from16 v0, p2

    #@212c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@212f
    .line 2142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2132
    move-result v0

    #@2133
    move/16 v362, v0

    #@2136
    .line 2143
    .restart local v362    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2139
    move-result v6

    #@213a
    if-eqz v6, :cond_87

    #@213c
    const/16 v240, 0x1

    #@213e
    .line 2145
    .local v240, "force":Z
    :goto_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2141
    move-result-object v6

    #@2142
    .line 2144
    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    #@2145
    move-result-object v219

    #@2146
    .line 2146
    .local v219, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    #@2148
    move/from16 v1, v362

    #@214a
    move/from16 v2, v240

    #@214c
    move-object/from16 v3, v219

    #@214e
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopUser(IZLandroid/app/IStopUserCallback;)I

    #@2151
    move-result v0

    #@2152
    move/16 v329, v0

    #@2155
    .line 2147
    .restart local v329    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2158
    .line 2148
    move-object/from16 v0, p3

    #@215a
    move/from16 v1, v329

    #@215c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@215f
    .line 2149
    const/4 v6, 0x1

    #@2160
    return v6

    #@2161
    .line 2143
    .end local v219    # "callback":Landroid/app/IStopUserCallback;
    .end local v240    # "force":Z
    .end local v329    # "result":I
    :cond_87
    const/16 v240, 0x0

    #@2163
    .restart local v240    # "force":Z
    goto :goto_75

    #@2164
    .line 2153
    .end local v240    # "force":Z
    .end local v362    # "userid":I
    :pswitch_b0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2167
    move-object/from16 v0, p2

    #@2169
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@216c
    .line 2154
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@216f
    move-result-object v0

    #@2170
    move-object/16 v361, v0

    #@2173
    .line 2155
    .local v361, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2176
    .line 2156
    const/4 v6, 0x0

    #@2177
    move-object/from16 v0, v361

    #@2179
    move-object/from16 v1, p3

    #@217b
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@217e
    .line 2157
    const/4 v6, 0x1

    #@217f
    return v6

    #@2180
    .line 2161
    .end local v361    # "userInfo":Landroid/content/pm/UserInfo;
    :pswitch_b1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2183
    move-object/from16 v0, p2

    #@2185
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2188
    .line 2162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@218b
    move-result v0

    #@218c
    move/16 v362, v0

    #@218f
    .line 2163
    .restart local v362    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2192
    move-result v203

    #@2193
    .line 2164
    .local v203, "_flags":I
    move-object/from16 v0, p0

    #@2195
    move/from16 v1, v362

    #@2197
    move/from16 v2, v203

    #@2199
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(II)Z

    #@219c
    move-result v0

    #@219d
    move/16 v331, v0

    #@21a0
    .line 2165
    .restart local v331    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21a3
    .line 2166
    move/from16 v0, v331

    #@21a5
    if-eqz v0, :cond_88

    #@21a7
    const/4 v6, 0x1

    #@21a8
    :goto_76
    move-object/from16 v0, p3

    #@21aa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@21ad
    .line 2167
    const/4 v6, 0x1

    #@21ae
    return v6

    #@21af
    .line 2166
    :cond_88
    const/4 v6, 0x0

    #@21b0
    goto :goto_76

    #@21b1
    .line 2171
    .end local v203    # "_flags":I
    .end local v331    # "result":Z
    .end local v362    # "userid":I
    :pswitch_b2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@21b4
    move-object/from16 v0, p2

    #@21b6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21b9
    .line 2172
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    #@21bc
    move-result-object v0

    #@21bd
    move-object/16 v332, v0

    #@21c0
    .line 2173
    .local v332, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21c3
    .line 2174
    move-object/from16 v0, p3

    #@21c5
    move-object/from16 v1, v332

    #@21c7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@21ca
    .line 2175
    const/4 v6, 0x1

    #@21cb
    return v6

    #@21cc
    .line 2180
    .end local v332    # "result":[I
    :pswitch_b3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@21cf
    move-object/from16 v0, p2

    #@21d1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21d4
    .line 2181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21d7
    move-result v69

    #@21d8
    .line 2182
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    #@21da
    move/from16 v1, v69

    #@21dc
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeTask(I)Z

    #@21df
    move-result v0

    #@21e0
    move/16 v331, v0

    #@21e3
    .line 2183
    .restart local v331    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21e6
    .line 2184
    move/from16 v0, v331

    #@21e8
    if-eqz v0, :cond_89

    #@21ea
    const/4 v6, 0x1

    #@21eb
    :goto_77
    move-object/from16 v0, p3

    #@21ed
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@21f0
    .line 2185
    const/4 v6, 0x1

    #@21f1
    return v6

    #@21f2
    .line 2184
    :cond_89
    const/4 v6, 0x0

    #@21f3
    goto :goto_77

    #@21f4
    .line 2189
    .end local v69    # "taskId":I
    .end local v331    # "result":Z
    :pswitch_b4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@21f7
    move-object/from16 v0, p2

    #@21f9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21fc
    .line 2191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@21ff
    move-result-object v6

    #@2200
    .line 2190
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    #@2203
    move-result-object v0

    #@2204
    move-object/16 v290, v0

    #@2207
    .line 2192
    .local v290, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    #@2209
    move-object/from16 v1, v290

    #@220b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    #@220e
    .line 2193
    const/4 v6, 0x1

    #@220f
    return v6

    #@2210
    .line 2197
    .end local v290    # "observer":Landroid/app/IProcessObserver;
    :pswitch_b5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2213
    move-object/from16 v0, p2

    #@2215
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2218
    .line 2199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@221b
    move-result-object v6

    #@221c
    .line 2198
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    #@221f
    move-result-object v0

    #@2220
    move-object/16 v290, v0

    #@2223
    .line 2200
    .restart local v290    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    #@2225
    move-object/from16 v1, v290

    #@2227
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    #@222a
    .line 2201
    const/4 v6, 0x1

    #@222b
    return v6

    #@222c
    .line 2205
    .end local v290    # "observer":Landroid/app/IProcessObserver;
    :pswitch_b6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@222f
    move-object/from16 v0, p2

    #@2231
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2234
    .line 2207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2237
    move-result-object v6

    #@2238
    .line 2206
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    #@223b
    move-result-object v0

    #@223c
    move-object/16 v291, v0

    #@223f
    .line 2208
    .local v291, "observer":Landroid/app/IUidObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2242
    move-result v0

    #@2243
    move/16 v369, v0

    #@2246
    .line 2209
    .local v369, "which":I
    move-object/from16 v0, p0

    #@2248
    move-object/from16 v1, v291

    #@224a
    move/from16 v2, v369

    #@224c
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->registerUidObserver(Landroid/app/IUidObserver;I)V

    #@224f
    .line 2210
    const/4 v6, 0x1

    #@2250
    return v6

    #@2251
    .line 2214
    .end local v291    # "observer":Landroid/app/IUidObserver;
    .end local v369    # "which":I
    :pswitch_b7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2254
    move-object/from16 v0, p2

    #@2256
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2259
    .line 2216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@225c
    move-result-object v6

    #@225d
    .line 2215
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    #@2260
    move-result-object v0

    #@2261
    move-object/16 v291, v0

    #@2264
    .line 2217
    .restart local v291    # "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    #@2266
    move-object/from16 v1, v291

    #@2268
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    #@226b
    .line 2218
    const/4 v6, 0x1

    #@226c
    return v6

    #@226d
    .line 2223
    .end local v291    # "observer":Landroid/app/IUidObserver;
    :pswitch_b8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2270
    move-object/from16 v0, p2

    #@2272
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2275
    .line 2224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2278
    move-result-object v0

    #@2279
    move-object/16 v308, v0

    #@227c
    .line 2225
    .restart local v308    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@227e
    move-object/from16 v1, v308

    #@2280
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    #@2283
    move-result v212

    #@2284
    .line 2226
    .local v212, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2287
    .line 2227
    if-eqz v212, :cond_8a

    #@2289
    const/4 v6, 0x1

    #@228a
    :goto_78
    move-object/from16 v0, p3

    #@228c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@228f
    .line 2228
    const/4 v6, 0x1

    #@2290
    return v6

    #@2291
    .line 2227
    :cond_8a
    const/4 v6, 0x0

    #@2292
    goto :goto_78

    #@2293
    .line 2233
    .end local v212    # "ask":Z
    .end local v308    # "pkg":Ljava/lang/String;
    :pswitch_b9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2296
    move-object/from16 v0, p2

    #@2298
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@229b
    .line 2234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@229e
    move-result-object v0

    #@229f
    move-object/16 v308, v0

    #@22a2
    .line 2235
    .restart local v308    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22a5
    move-result v6

    #@22a6
    if-eqz v6, :cond_8b

    #@22a8
    const/16 v212, 0x1

    #@22aa
    .line 2236
    .restart local v212    # "ask":Z
    :goto_79
    move-object/from16 v0, p0

    #@22ac
    move-object/from16 v1, v308

    #@22ae
    move/from16 v2, v212

    #@22b0
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    #@22b3
    .line 2237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22b6
    .line 2238
    const/4 v6, 0x1

    #@22b7
    return v6

    #@22b8
    .line 2235
    .end local v212    # "ask":Z
    :cond_8b
    const/16 v212, 0x0

    #@22ba
    goto :goto_79

    #@22bb
    .line 2242
    .end local v308    # "pkg":Ljava/lang/String;
    :pswitch_ba
    const-string/jumbo v6, "android.app.IActivityManager"

    #@22be
    move-object/from16 v0, p2

    #@22c0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22c3
    .line 2244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22c6
    move-result-object v6

    #@22c7
    .line 2243
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@22ca
    move-result-object v0

    #@22cb
    move-object/16 v315, v0

    #@22ce
    .line 2245
    .restart local v315    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@22d0
    move-object/from16 v1, v315

    #@22d2
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    #@22d5
    move-result v0

    #@22d6
    move/16 v325, v0

    #@22d9
    .line 2246
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22dc
    .line 2247
    move/from16 v0, v325

    #@22de
    if-eqz v0, :cond_8c

    #@22e0
    const/4 v6, 0x1

    #@22e1
    :goto_7a
    move-object/from16 v0, p3

    #@22e3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@22e6
    .line 2248
    const/4 v6, 0x1

    #@22e7
    return v6

    #@22e8
    .line 2247
    :cond_8c
    const/4 v6, 0x0

    #@22e9
    goto :goto_7a

    #@22ea
    .line 2252
    .end local v315    # "r":Landroid/content/IIntentSender;
    .end local v325    # "res":Z
    :pswitch_bb
    const-string/jumbo v6, "android.app.IActivityManager"

    #@22ed
    move-object/from16 v0, p2

    #@22ef
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22f2
    .line 2254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22f5
    move-result-object v6

    #@22f6
    .line 2253
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@22f9
    move-result-object v0

    #@22fa
    move-object/16 v315, v0

    #@22fd
    .line 2255
    .restart local v315    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@22ff
    move-object/from16 v1, v315

    #@2301
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    #@2304
    move-result v0

    #@2305
    move/16 v325, v0

    #@2308
    .line 2256
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@230b
    .line 2257
    move/from16 v0, v325

    #@230d
    if-eqz v0, :cond_8d

    #@230f
    const/4 v6, 0x1

    #@2310
    :goto_7b
    move-object/from16 v0, p3

    #@2312
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2315
    .line 2258
    const/4 v6, 0x1

    #@2316
    return v6

    #@2317
    .line 2257
    :cond_8d
    const/4 v6, 0x0

    #@2318
    goto :goto_7b

    #@2319
    .line 2262
    .end local v315    # "r":Landroid/content/IIntentSender;
    .end local v325    # "res":Z
    :pswitch_bc
    const-string/jumbo v6, "android.app.IActivityManager"

    #@231c
    move-object/from16 v0, p2

    #@231e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2321
    .line 2264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2324
    move-result-object v6

    #@2325
    .line 2263
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@2328
    move-result-object v0

    #@2329
    move-object/16 v315, v0

    #@232c
    .line 2265
    .restart local v315    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@232e
    move-object/from16 v1, v315

    #@2330
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    #@2333
    move-result-object v9

    #@2334
    .line 2266
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2337
    .line 2267
    if-eqz v9, :cond_8e

    #@2339
    .line 2268
    const/4 v6, 0x1

    #@233a
    move-object/from16 v0, p3

    #@233c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@233f
    .line 2269
    const/4 v6, 0x1

    #@2340
    move-object/from16 v0, p3

    #@2342
    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@2345
    .line 2273
    :goto_7c
    const/4 v6, 0x1

    #@2346
    return v6

    #@2347
    .line 2271
    :cond_8e
    const/4 v6, 0x0

    #@2348
    move-object/from16 v0, p3

    #@234a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@234d
    goto :goto_7c

    #@234e
    .line 2277
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v315    # "r":Landroid/content/IIntentSender;
    :pswitch_bd
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2351
    move-object/from16 v0, p2

    #@2353
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2356
    .line 2279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2359
    move-result-object v6

    #@235a
    .line 2278
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@235d
    move-result-object v0

    #@235e
    move-object/16 v315, v0

    #@2361
    .line 2280
    .restart local v315    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2364
    move-result-object v0

    #@2365
    move-object/16 v311, v0

    #@2368
    .line 2281
    .local v311, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    #@236a
    move-object/from16 v1, v315

    #@236c
    move-object/from16 v2, v311

    #@236e
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    #@2371
    move-result-object v0

    #@2372
    move-object/16 v351, v0

    #@2375
    .line 2282
    .restart local v351    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2378
    .line 2283
    move-object/from16 v0, p3

    #@237a
    move-object/from16 v1, v351

    #@237c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@237f
    .line 2284
    const/4 v6, 0x1

    #@2380
    return v6

    #@2381
    .line 2288
    .end local v311    # "prefix":Ljava/lang/String;
    .end local v315    # "r":Landroid/content/IIntentSender;
    .end local v351    # "tag":Ljava/lang/String;
    :pswitch_be
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2384
    move-object/from16 v0, p2

    #@2386
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2389
    .line 2289
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@238b
    move-object/from16 v0, p2

    #@238d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2390
    move-result-object v39

    #@2391
    check-cast v39, Landroid/content/res/Configuration;

    #@2393
    .line 2290
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    #@2395
    move-object/from16 v1, v39

    #@2397
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    #@239a
    .line 2291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@239d
    .line 2292
    const/4 v6, 0x1

    #@239e
    return v6

    #@239f
    .line 2296
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_bf
    const-string/jumbo v6, "android.app.IActivityManager"

    #@23a2
    move-object/from16 v0, p2

    #@23a4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23a7
    .line 2297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@23aa
    move-result-object v0

    #@23ab
    move-object/16 v307, v0

    #@23ae
    .line 2298
    .restart local v307    # "pids":[I
    move-object/from16 v0, p0

    #@23b0
    move-object/from16 v1, v307

    #@23b2
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    #@23b5
    move-result-object v0

    #@23b6
    move-object/16 v314, v0

    #@23b9
    .line 2299
    .local v314, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23bc
    .line 2300
    move-object/from16 v0, p3

    #@23be
    move-object/from16 v1, v314

    #@23c0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    #@23c3
    .line 2301
    const/4 v6, 0x1

    #@23c4
    return v6

    #@23c5
    .line 2305
    .end local v307    # "pids":[I
    .end local v314    # "pss":[J
    :pswitch_c0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@23c8
    move-object/from16 v0, p2

    #@23ca
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23cd
    .line 2306
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@23cf
    move-object/from16 v0, p2

    #@23d1
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23d4
    move-result-object v0

    #@23d5
    move-object/16 v288, v0

    #@23d8
    move-object/from16 v0, v288

    #@23da
    check-cast v0, Ljava/lang/CharSequence;

    #@23dc
    move-object/16 v288, v0

    #@23df
    .line 2307
    .local v288, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23e2
    move-result v6

    #@23e3
    if-eqz v6, :cond_8f

    #@23e5
    const/16 v208, 0x1

    #@23e7
    .line 2308
    .local v208, "always":Z
    :goto_7d
    move-object/from16 v0, p0

    #@23e9
    move-object/from16 v1, v288

    #@23eb
    move/from16 v2, v208

    #@23ed
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    #@23f0
    .line 2309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23f3
    .line 2310
    const/4 v6, 0x1

    #@23f4
    return v6

    #@23f5
    .line 2307
    .end local v208    # "always":Z
    :cond_8f
    const/16 v208, 0x0

    #@23f7
    goto :goto_7d

    #@23f8
    .line 2314
    .end local v288    # "msg":Ljava/lang/CharSequence;
    :pswitch_c1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@23fb
    move-object/from16 v0, p2

    #@23fd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2400
    .line 2315
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    #@2403
    .line 2316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2406
    .line 2317
    const/4 v6, 0x1

    #@2407
    return v6

    #@2408
    .line 2321
    :pswitch_c2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@240b
    move-object/from16 v0, p2

    #@240d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2410
    .line 2322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2413
    move-result v6

    #@2414
    move-object/from16 v0, p0

    #@2416
    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->keyguardGoingAway(I)V

    #@2419
    .line 2323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@241c
    .line 2324
    const/4 v6, 0x1

    #@241d
    return v6

    #@241e
    .line 2328
    :pswitch_c3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2421
    move-object/from16 v0, p2

    #@2423
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2426
    .line 2329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2429
    move-result-object v93

    #@242a
    .line 2330
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@242d
    move-result-object v229

    #@242e
    .line 2331
    .local v229, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2430
    move-object/from16 v1, v93

    #@2432
    move-object/from16 v2, v229

    #@2434
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    #@2437
    move-result v0

    #@2438
    move/16 v325, v0

    #@243b
    .line 2332
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@243e
    .line 2333
    move/from16 v0, v325

    #@2440
    if-eqz v0, :cond_90

    #@2442
    const/4 v6, 0x1

    #@2443
    :goto_7e
    move-object/from16 v0, p3

    #@2445
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2448
    .line 2334
    const/4 v6, 0x1

    #@2449
    return v6

    #@244a
    .line 2333
    :cond_90
    const/4 v6, 0x0

    #@244b
    goto :goto_7e

    #@244c
    .line 2338
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v229    # "destAffinity":Ljava/lang/String;
    .end local v325    # "res":Z
    :pswitch_c4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@244f
    move-object/from16 v0, p2

    #@2451
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2454
    .line 2339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2457
    move-result-object v93

    #@2458
    .line 2340
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@245a
    move-object/from16 v0, p2

    #@245c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@245f
    move-result-object v0

    #@2460
    move-object/16 v352, v0

    #@2463
    move-object/from16 v0, v352

    #@2465
    check-cast v0, Landroid/content/Intent;

    #@2467
    move-object/16 v352, v0

    #@246a
    .line 2341
    .local v352, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@246d
    move-result v53

    #@246e
    .line 2342
    .restart local v53    # "resultCode":I
    const/4 v0, 0x0

    #@246f
    move-object/16 v333, v0

    #@2472
    .line 2343
    .restart local v333    # "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2475
    move-result v6

    #@2476
    if-eqz v6, :cond_91

    #@2478
    .line 2344
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@247a
    move-object/from16 v0, p2

    #@247c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@247f
    move-result-object v0

    #@2480
    move-object/16 v333, v0

    #@2483
    .end local v333    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v333

    #@2485
    check-cast v0, Landroid/content/Intent;

    #@2487
    move-object/16 v333, v0

    #@248a
    .line 2346
    :cond_91
    move-object/from16 v0, p0

    #@248c
    move-object/from16 v1, v93

    #@248e
    move-object/from16 v2, v352

    #@2490
    move/from16 v3, v53

    #@2492
    move-object/from16 v4, v333

    #@2494
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    #@2497
    move-result v0

    #@2498
    move/16 v325, v0

    #@249b
    .line 2347
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@249e
    .line 2348
    move/from16 v0, v325

    #@24a0
    if-eqz v0, :cond_92

    #@24a2
    const/4 v6, 0x1

    #@24a3
    :goto_7f
    move-object/from16 v0, p3

    #@24a5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@24a8
    .line 2349
    const/4 v6, 0x1

    #@24a9
    return v6

    #@24aa
    .line 2348
    :cond_92
    const/4 v6, 0x0

    #@24ab
    goto :goto_7f

    #@24ac
    .line 2353
    .end local v53    # "resultCode":I
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v325    # "res":Z
    .end local v352    # "target":Landroid/content/Intent;
    :pswitch_c5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@24af
    move-object/from16 v0, p2

    #@24b1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24b4
    .line 2354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@24b7
    move-result-object v93

    #@24b8
    .line 2355
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@24ba
    move-object/from16 v1, v93

    #@24bc
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    #@24bf
    move-result v0

    #@24c0
    move/16 v319, v0

    #@24c3
    .line 2356
    .restart local v319    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24c6
    .line 2357
    move-object/from16 v0, p3

    #@24c8
    move/from16 v1, v319

    #@24ca
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@24cd
    .line 2358
    const/4 v6, 0x1

    #@24ce
    return v6

    #@24cf
    .line 2362
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v319    # "res":I
    :pswitch_c6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@24d2
    move-object/from16 v0, p2

    #@24d4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24d7
    .line 2363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@24da
    move-result-object v93

    #@24db
    .line 2364
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@24dd
    move-object/from16 v1, v93

    #@24df
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    #@24e2
    move-result-object v0

    #@24e3
    move-object/16 v324, v0

    #@24e6
    .line 2365
    .restart local v324    # "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24e9
    .line 2366
    move-object/from16 v0, p3

    #@24eb
    move-object/from16 v1, v324

    #@24ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24f0
    .line 2367
    const/4 v6, 0x1

    #@24f1
    return v6

    #@24f2
    .line 2371
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v324    # "res":Ljava/lang/String;
    :pswitch_c7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@24f5
    move-object/from16 v0, p2

    #@24f7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24fa
    .line 2373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@24fd
    move-result-object v6

    #@24fe
    .line 2372
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    #@2501
    move-result-object v0

    #@2502
    move-object/16 v292, v0

    #@2505
    .line 2374
    .local v292, "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    #@2507
    move-object/from16 v1, v292

    #@2509
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    #@250c
    .line 2375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@250f
    .line 2376
    const/4 v6, 0x1

    #@2510
    return v6

    #@2511
    .line 2380
    .end local v292    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_c8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2514
    move-object/from16 v0, p2

    #@2516
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2519
    .line 2382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@251c
    move-result-object v6

    #@251d
    .line 2381
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    #@2520
    move-result-object v0

    #@2521
    move-object/16 v292, v0

    #@2524
    .line 2383
    .restart local v292    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    #@2526
    move-object/from16 v1, v292

    #@2528
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    #@252b
    .line 2384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@252e
    .line 2385
    const/4 v6, 0x1

    #@252f
    return v6

    #@2530
    .line 2389
    .end local v292    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_c9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2533
    move-object/from16 v0, p2

    #@2535
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2538
    .line 2390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@253b
    move-result v216

    #@253c
    .line 2391
    .local v216, "bugreportType":I
    move-object/from16 v0, p0

    #@253e
    move/from16 v1, v216

    #@2540
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->requestBugReport(I)V

    #@2543
    .line 2392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2546
    .line 2393
    const/4 v6, 0x1

    #@2547
    return v6

    #@2548
    .line 2397
    .end local v216    # "bugreportType":I
    :pswitch_ca
    const-string/jumbo v6, "android.app.IActivityManager"

    #@254b
    move-object/from16 v0, p2

    #@254d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2550
    .line 2398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2553
    move-result v131

    #@2554
    .line 2399
    .restart local v131    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2557
    move-result v6

    #@2558
    if-eqz v6, :cond_93

    #@255a
    const/16 v204, 0x1

    #@255c
    .line 2400
    .local v204, "aboveSystem":Z
    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@255f
    move-result-object v0

    #@2560
    move-object/16 v316, v0

    #@2563
    .line 2401
    .restart local v316    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2565
    move/from16 v1, v131

    #@2567
    move/from16 v2, v204

    #@2569
    move-object/from16 v3, v316

    #@256b
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    #@256e
    move-result-wide v0

    #@256f
    move-wide/16 v320, v0

    #@2572
    .line 2402
    .local v320, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2575
    .line 2403
    move-object/from16 v0, p3

    #@2577
    move-wide/from16 v1, v320

    #@2579
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@257c
    .line 2404
    const/4 v6, 0x1

    #@257d
    return v6

    #@257e
    .line 2399
    .end local v204    # "aboveSystem":Z
    .end local v316    # "reason":Ljava/lang/String;
    .end local v320    # "res":J
    :cond_93
    const/16 v204, 0x0

    #@2580
    .restart local v204    # "aboveSystem":Z
    goto :goto_80

    #@2581
    .line 2408
    .end local v131    # "pid":I
    .end local v204    # "aboveSystem":Z
    :pswitch_cb
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2584
    move-object/from16 v0, p2

    #@2586
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2589
    .line 2409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@258c
    move-result v170

    #@258d
    .line 2410
    .local v170, "requestType":I
    move-object/from16 v0, p0

    #@258f
    move/from16 v1, v170

    #@2591
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    #@2594
    move-result-object v0

    #@2595
    move-object/16 v323, v0

    #@2598
    .line 2411
    .local v323, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@259b
    .line 2412
    move-object/from16 v0, p3

    #@259d
    move-object/from16 v1, v323

    #@259f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@25a2
    .line 2413
    const/4 v6, 0x1

    #@25a3
    return v6

    #@25a4
    .line 2417
    .end local v170    # "requestType":I
    .end local v323    # "res":Landroid/os/Bundle;
    :pswitch_cc
    const-string/jumbo v6, "android.app.IActivityManager"

    #@25a7
    move-object/from16 v0, p2

    #@25a9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25ac
    .line 2418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25af
    move-result v170

    #@25b0
    .line 2419
    .restart local v170    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25b3
    move-result-object v6

    #@25b4
    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    #@25b7
    move-result-object v171

    #@25b8
    .line 2420
    .local v171, "receiver":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@25bb
    move-result-object v172

    #@25bc
    .line 2421
    .local v172, "receiverExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25bf
    move-result-object v173

    #@25c0
    .line 2422
    .restart local v173    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25c3
    move-result v6

    #@25c4
    const/16 v18, 0x1

    #@25c6
    move/from16 v0, v18

    #@25c8
    if-ne v6, v0, :cond_94

    #@25ca
    const/16 v174, 0x1

    #@25cc
    .line 2423
    .local v174, "focused":Z
    :goto_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25cf
    move-result v6

    #@25d0
    const/16 v18, 0x1

    #@25d2
    move/from16 v0, v18

    #@25d4
    if-ne v6, v0, :cond_95

    #@25d6
    const/16 v175, 0x1

    #@25d8
    .local v175, "newSessionId":Z
    :goto_82
    move-object/from16 v169, p0

    #@25da
    .line 2424
    invoke-virtual/range {v169 .. v175}, Landroid/app/ActivityManagerNative;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    #@25dd
    move-result v0

    #@25de
    move/16 v325, v0

    #@25e1
    .line 2426
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25e4
    .line 2427
    move/from16 v0, v325

    #@25e6
    if-eqz v0, :cond_96

    #@25e8
    const/4 v6, 0x1

    #@25e9
    :goto_83
    move-object/from16 v0, p3

    #@25eb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@25ee
    .line 2428
    const/4 v6, 0x1

    #@25ef
    return v6

    #@25f0
    .line 2422
    .end local v174    # "focused":Z
    .end local v175    # "newSessionId":Z
    .end local v325    # "res":Z
    :cond_94
    const/16 v174, 0x0

    #@25f2
    .restart local v174    # "focused":Z
    goto :goto_81

    #@25f3
    .line 2423
    :cond_95
    const/16 v175, 0x0

    #@25f5
    goto :goto_82

    #@25f6
    .line 2427
    .restart local v175    # "newSessionId":Z
    .restart local v325    # "res":Z
    :cond_96
    const/4 v6, 0x0

    #@25f7
    goto :goto_83

    #@25f8
    .line 2432
    .end local v170    # "requestType":I
    .end local v171    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v172    # "receiverExtras":Landroid/os/Bundle;
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v174    # "focused":Z
    .end local v175    # "newSessionId":Z
    .end local v325    # "res":Z
    :pswitch_cd
    const-string/jumbo v6, "android.app.IActivityManager"

    #@25fb
    move-object/from16 v0, p2

    #@25fd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2600
    .line 2433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2603
    move-result-object v93

    #@2604
    .line 2434
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@2607
    move-result-object v178

    #@2608
    .line 2435
    .local v178, "extras":Landroid/os/Bundle;
    sget-object v6, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    #@260a
    move-object/from16 v0, p2

    #@260c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@260f
    move-result-object v179

    #@2610
    check-cast v179, Landroid/app/assist/AssistStructure;

    #@2612
    .line 2436
    .local v179, "structure":Landroid/app/assist/AssistStructure;
    sget-object v6, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2614
    move-object/from16 v0, p2

    #@2616
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2619
    move-result-object v180

    #@261a
    check-cast v180, Landroid/app/assist/AssistContent;

    #@261c
    .line 2437
    .local v180, "content":Landroid/app/assist/AssistContent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@261f
    move-result v6

    #@2620
    if-eqz v6, :cond_97

    #@2622
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2624
    move-object/from16 v0, p2

    #@2626
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2629
    move-result-object v6

    #@262a
    check-cast v6, Landroid/net/Uri;

    #@262c
    move-object/from16 v181, v6

    #@262e
    .local v181, "referrer":Landroid/net/Uri;
    :goto_84
    move-object/from16 v176, p0

    #@2630
    move-object/from16 v177, v93

    #@2632
    .line 2438
    invoke-virtual/range {v176 .. v181}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    #@2635
    .line 2439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2638
    .line 2440
    const/4 v6, 0x1

    #@2639
    return v6

    #@263a
    .line 2437
    .end local v181    # "referrer":Landroid/net/Uri;
    :cond_97
    const/16 v181, 0x0

    #@263c
    goto :goto_84

    #@263d
    .line 2444
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v178    # "extras":Landroid/os/Bundle;
    .end local v179    # "structure":Landroid/app/assist/AssistStructure;
    .end local v180    # "content":Landroid/app/assist/AssistContent;
    :pswitch_ce
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2640
    move-object/from16 v0, p2

    #@2642
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2645
    .line 2445
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2647
    move-object/from16 v0, p2

    #@2649
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@264c
    move-result-object v9

    #@264d
    check-cast v9, Landroid/content/Intent;

    #@264f
    .line 2446
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2652
    move-result v170

    #@2653
    .line 2447
    .restart local v170    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2656
    move-result-object v185

    #@2657
    .line 2448
    .local v185, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@265a
    move-result v186

    #@265b
    .line 2449
    .local v186, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@265e
    move-result-object v187

    #@265f
    .local v187, "args":Landroid/os/Bundle;
    move-object/from16 v182, p0

    #@2661
    move-object/from16 v183, v9

    #@2663
    move/from16 v184, v170

    #@2665
    .line 2450
    invoke-virtual/range {v182 .. v187}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    #@2668
    move-result v0

    #@2669
    move/16 v325, v0

    #@266c
    .line 2451
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@266f
    .line 2452
    move/from16 v0, v325

    #@2671
    if-eqz v0, :cond_98

    #@2673
    const/4 v6, 0x1

    #@2674
    :goto_85
    move-object/from16 v0, p3

    #@2676
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2679
    .line 2453
    const/4 v6, 0x1

    #@267a
    return v6

    #@267b
    .line 2452
    :cond_98
    const/4 v6, 0x0

    #@267c
    goto :goto_85

    #@267d
    .line 2457
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v170    # "requestType":I
    .end local v185    # "hint":Ljava/lang/String;
    .end local v186    # "userHandle":I
    .end local v187    # "args":Landroid/os/Bundle;
    .end local v325    # "res":Z
    :pswitch_cf
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2680
    move-object/from16 v0, p2

    #@2682
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2685
    .line 2458
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isAssistDataAllowedOnCurrentActivity()Z

    #@2688
    move-result v0

    #@2689
    move/16 v325, v0

    #@268c
    .line 2459
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@268f
    .line 2460
    move/from16 v0, v325

    #@2691
    if-eqz v0, :cond_99

    #@2693
    const/4 v6, 0x1

    #@2694
    :goto_86
    move-object/from16 v0, p3

    #@2696
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2699
    .line 2461
    const/4 v6, 0x1

    #@269a
    return v6

    #@269b
    .line 2460
    :cond_99
    const/4 v6, 0x0

    #@269c
    goto :goto_86

    #@269d
    .line 2465
    .end local v325    # "res":Z
    :pswitch_d0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@26a0
    move-object/from16 v0, p2

    #@26a2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26a5
    .line 2466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@26a8
    move-result-object v93

    #@26a9
    .line 2467
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@26ac
    move-result-object v187

    #@26ad
    .line 2468
    .restart local v187    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@26af
    move-object/from16 v1, v93

    #@26b1
    move-object/from16 v2, v187

    #@26b3
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    #@26b6
    move-result v0

    #@26b7
    move/16 v325, v0

    #@26ba
    .line 2469
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26bd
    .line 2470
    move/from16 v0, v325

    #@26bf
    if-eqz v0, :cond_9a

    #@26c1
    const/4 v6, 0x1

    #@26c2
    :goto_87
    move-object/from16 v0, p3

    #@26c4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@26c7
    .line 2471
    const/4 v6, 0x1

    #@26c8
    return v6

    #@26c9
    .line 2470
    :cond_9a
    const/4 v6, 0x0

    #@26ca
    goto :goto_87

    #@26cb
    .line 2475
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v187    # "args":Landroid/os/Bundle;
    .end local v325    # "res":Z
    :pswitch_d1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@26ce
    move-object/from16 v0, p2

    #@26d0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26d3
    .line 2476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26d6
    move-result v210

    #@26d7
    .line 2477
    .restart local v210    # "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26da
    move-result v17

    #@26db
    .line 2478
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26de
    move-result-object v0

    #@26df
    move-object/16 v316, v0

    #@26e2
    .line 2479
    .restart local v316    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@26e4
    move/from16 v1, v210

    #@26e6
    move/from16 v2, v17

    #@26e8
    move-object/from16 v3, v316

    #@26ea
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killUid(IILjava/lang/String;)V

    #@26ed
    .line 2480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26f0
    .line 2481
    const/4 v6, 0x1

    #@26f1
    return v6

    #@26f2
    .line 2485
    .end local v17    # "userId":I
    .end local v210    # "appId":I
    .end local v316    # "reason":Ljava/lang/String;
    :pswitch_d2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@26f5
    move-object/from16 v0, p2

    #@26f7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26fa
    .line 2486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@26fd
    move-result-object v62

    #@26fe
    .line 2487
    .restart local v62    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2701
    move-result v6

    #@2702
    if-eqz v6, :cond_9b

    #@2704
    const/16 v207, 0x1

    #@2706
    .line 2488
    .local v207, "allowRestart":Z
    :goto_88
    move-object/from16 v0, p0

    #@2708
    move-object/from16 v1, v62

    #@270a
    move/from16 v2, v207

    #@270c
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    #@270f
    .line 2489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2712
    .line 2490
    const/4 v6, 0x1

    #@2713
    return v6

    #@2714
    .line 2487
    .end local v207    # "allowRestart":Z
    :cond_9b
    const/16 v207, 0x0

    #@2716
    goto :goto_88

    #@2717
    .line 2494
    .end local v62    # "who":Landroid/os/IBinder;
    :pswitch_d3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@271a
    move-object/from16 v0, p2

    #@271c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@271f
    .line 2495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2722
    move-result-object v93

    #@2723
    .line 2496
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2725
    move-object/from16 v1, v93

    #@2727
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    #@272a
    .line 2497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@272d
    .line 2498
    const/4 v6, 0x1

    #@272e
    return v6

    #@272f
    .line 2502
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_d4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2732
    move-object/from16 v0, p2

    #@2734
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2737
    .line 2503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@273a
    move-result-object v93

    #@273b
    .line 2504
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@273d
    move-object/from16 v1, v93

    #@273f
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    #@2742
    .line 2505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2745
    .line 2506
    const/4 v6, 0x1

    #@2746
    return v6

    #@2747
    .line 2510
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_d5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@274a
    move-object/from16 v0, p2

    #@274c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@274f
    .line 2511
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    #@2752
    .line 2512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2755
    .line 2513
    const/4 v6, 0x1

    #@2756
    return v6

    #@2757
    .line 2517
    :pswitch_d6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@275a
    move-object/from16 v0, p2

    #@275c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@275f
    .line 2518
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    #@2762
    .line 2519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2765
    .line 2520
    const/4 v6, 0x1

    #@2766
    return v6

    #@2767
    .line 2524
    :pswitch_d7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@276a
    move-object/from16 v0, p2

    #@276c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@276f
    .line 2525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2772
    move-result-object v0

    #@2773
    move-object/16 v300, v0

    #@2776
    .line 2527
    .local v300, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2779
    move-result-object v6

    #@277a
    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    #@277d
    move-result-object v218

    #@277e
    .line 2529
    .local v218, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    #@2780
    move-object/from16 v1, v300

    #@2782
    move-object/from16 v2, v218

    #@2784
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    #@2787
    move-result-object v205

    #@2788
    .line 2530
    .local v205, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@278b
    .line 2531
    if-eqz v205, :cond_9c

    #@278d
    .line 2532
    const/4 v6, 0x1

    #@278e
    move-object/from16 v0, p3

    #@2790
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2793
    .line 2533
    invoke-interface/range {v205 .. v205}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    #@2796
    move-result-object v6

    #@2797
    move-object/from16 v0, p3

    #@2799
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@279c
    .line 2537
    :goto_89
    const/4 v6, 0x1

    #@279d
    return v6

    #@279e
    .line 2535
    :cond_9c
    const/4 v6, 0x0

    #@279f
    move-object/from16 v0, p3

    #@27a1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@27a4
    goto :goto_89

    #@27a5
    .line 2541
    .end local v205    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v218    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v300    # "parentActivityToken":Landroid/os/IBinder;
    :pswitch_d8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@27a8
    move-object/from16 v0, p2

    #@27aa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27ad
    .line 2543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@27b0
    move-result-object v6

    #@27b1
    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    #@27b4
    move-result-object v205

    #@27b5
    .line 2544
    .restart local v205    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    #@27b7
    move-object/from16 v1, v205

    #@27b9
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    #@27bc
    .line 2545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27bf
    .line 2546
    const/4 v6, 0x1

    #@27c0
    return v6

    #@27c1
    .line 2550
    .end local v205    # "activityContainer":Landroid/app/IActivityContainer;
    :pswitch_d9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@27c4
    move-object/from16 v0, p2

    #@27c6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27c9
    .line 2551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27cc
    move-result v230

    #@27cd
    .line 2552
    .local v230, "displayId":I
    move-object/from16 v0, p0

    #@27cf
    move/from16 v1, v230

    #@27d1
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    #@27d4
    move-result-object v205

    #@27d5
    .line 2553
    .restart local v205    # "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27d8
    .line 2554
    if-eqz v205, :cond_9d

    #@27da
    .line 2555
    const/4 v6, 0x1

    #@27db
    move-object/from16 v0, p3

    #@27dd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@27e0
    .line 2556
    invoke-interface/range {v205 .. v205}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    #@27e3
    move-result-object v6

    #@27e4
    move-object/from16 v0, p3

    #@27e6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@27e9
    .line 2560
    :goto_8a
    const/4 v6, 0x1

    #@27ea
    return v6

    #@27eb
    .line 2558
    :cond_9d
    const/4 v6, 0x0

    #@27ec
    move-object/from16 v0, p3

    #@27ee
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@27f1
    goto :goto_8a

    #@27f2
    .line 2564
    .end local v205    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v230    # "displayId":I
    :pswitch_da
    const-string/jumbo v6, "android.app.IActivityManager"

    #@27f5
    move-object/from16 v0, p2

    #@27f7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27fa
    .line 2565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@27fd
    move-result-object v173

    #@27fe
    .line 2566
    .restart local v173    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2800
    move-object/from16 v1, v173

    #@2802
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityDisplayId(Landroid/os/IBinder;)I

    #@2805
    move-result v230

    #@2806
    .line 2567
    .restart local v230    # "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2809
    .line 2568
    move-object/from16 v0, p3

    #@280b
    move/from16 v1, v230

    #@280d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2810
    .line 2569
    const/4 v6, 0x1

    #@2811
    return v6

    #@2812
    .line 2573
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v230    # "displayId":I
    :pswitch_db
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2815
    move-object/from16 v0, p2

    #@2817
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@281a
    .line 2574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@281d
    move-result v69

    #@281e
    .line 2575
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    #@2820
    move/from16 v1, v69

    #@2822
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    #@2825
    .line 2576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2828
    .line 2577
    const/4 v6, 0x1

    #@2829
    return v6

    #@282a
    .line 2581
    .end local v69    # "taskId":I
    :pswitch_dc
    const-string/jumbo v6, "android.app.IActivityManager"

    #@282d
    move-object/from16 v0, p2

    #@282f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2832
    .line 2582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2835
    move-result-object v93

    #@2836
    .line 2583
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2838
    move-object/from16 v1, v93

    #@283a
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    #@283d
    .line 2584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2840
    .line 2585
    const/4 v6, 0x1

    #@2841
    return v6

    #@2842
    .line 2589
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_dd
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2845
    move-object/from16 v0, p2

    #@2847
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@284a
    .line 2590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@284d
    move-result v69

    #@284e
    .line 2591
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    #@2850
    move/from16 v1, v69

    #@2852
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startSystemLockTaskMode(I)V

    #@2855
    .line 2592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2858
    .line 2593
    const/4 v6, 0x1

    #@2859
    return v6

    #@285a
    .line 2597
    .end local v69    # "taskId":I
    :pswitch_de
    const-string/jumbo v6, "android.app.IActivityManager"

    #@285d
    move-object/from16 v0, p2

    #@285f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2862
    .line 2598
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    #@2865
    .line 2599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2868
    .line 2600
    const/4 v6, 0x1

    #@2869
    return v6

    #@286a
    .line 2604
    :pswitch_df
    const-string/jumbo v6, "android.app.IActivityManager"

    #@286d
    move-object/from16 v0, p2

    #@286f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2872
    .line 2605
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopSystemLockTaskMode()V

    #@2875
    .line 2606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2878
    .line 2607
    const/4 v6, 0x1

    #@2879
    return v6

    #@287a
    .line 2611
    :pswitch_e0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@287d
    move-object/from16 v0, p2

    #@287f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2882
    .line 2612
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    #@2885
    move-result v0

    #@2886
    move/16 v266, v0

    #@2889
    .line 2613
    .local v266, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@288c
    .line 2614
    move/from16 v0, v266

    #@288e
    if-eqz v0, :cond_9e

    #@2890
    const/4 v6, 0x1

    #@2891
    :goto_8b
    move-object/from16 v0, p3

    #@2893
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2896
    .line 2615
    const/4 v6, 0x1

    #@2897
    return v6

    #@2898
    .line 2614
    :cond_9e
    const/4 v6, 0x0

    #@2899
    goto :goto_8b

    #@289a
    .line 2619
    .end local v266    # "isInLockTaskMode":Z
    :pswitch_e1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@289d
    move-object/from16 v0, p2

    #@289f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28a2
    .line 2620
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getLockTaskModeState()I

    #@28a5
    move-result v0

    #@28a6
    move/16 v281, v0

    #@28a9
    .line 2621
    .local v281, "lockTaskModeState":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28ac
    .line 2622
    move-object/from16 v0, p3

    #@28ae
    move/from16 v1, v281

    #@28b0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@28b3
    .line 2623
    const/4 v6, 0x1

    #@28b4
    return v6

    #@28b5
    .line 2627
    .end local v281    # "lockTaskModeState":I
    :pswitch_e2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@28b8
    move-object/from16 v0, p2

    #@28ba
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28bd
    .line 2628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@28c0
    move-result-object v93

    #@28c1
    .line 2629
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@28c3
    move-object/from16 v1, v93

    #@28c5
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    #@28c8
    .line 2630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28cb
    .line 2631
    const/4 v6, 0x1

    #@28cc
    return v6

    #@28cd
    .line 2635
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_e3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@28d0
    move-object/from16 v0, p2

    #@28d2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28d5
    .line 2636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@28d8
    move-result-object v93

    #@28d9
    .line 2638
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28db
    move-object/from16 v0, p2

    #@28dd
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28e0
    move-result-object v0

    #@28e1
    move-object/16 v363, v0

    #@28e4
    move-object/from16 v0, v363

    #@28e6
    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    #@28e8
    move-object/16 v363, v0

    #@28eb
    .line 2639
    .local v363, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    #@28ed
    move-object/from16 v1, v93

    #@28ef
    move-object/from16 v2, v363

    #@28f1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    #@28f4
    .line 2640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28f7
    .line 2641
    const/4 v6, 0x1

    #@28f8
    return v6

    #@28f9
    .line 2645
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v363    # "values":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_e4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@28fc
    move-object/from16 v0, p2

    #@28fe
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2901
    .line 2646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2904
    move-result v69

    #@2905
    .line 2647
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2908
    move-result v0

    #@2909
    move/16 v328, v0

    #@290c
    .line 2648
    .local v328, "resizeableMode":I
    move-object/from16 v0, p0

    #@290e
    move/from16 v1, v69

    #@2910
    move/from16 v2, v328

    #@2912
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskResizeable(II)V

    #@2915
    .line 2649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2918
    .line 2650
    const/4 v6, 0x1

    #@2919
    return v6

    #@291a
    .line 2654
    .end local v69    # "taskId":I
    .end local v328    # "resizeableMode":I
    :pswitch_e5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@291d
    move-object/from16 v0, p2

    #@291f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2922
    .line 2655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2925
    move-result v69

    #@2926
    .line 2656
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2929
    move-result v0

    #@292a
    move/16 v327, v0

    #@292d
    .line 2657
    .local v327, "resizeMode":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@292f
    move-object/from16 v0, p2

    #@2931
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2934
    move-result-object v77

    #@2935
    check-cast v77, Landroid/graphics/Rect;

    #@2937
    .line 2658
    .local v77, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@2939
    move/from16 v1, v69

    #@293b
    move-object/from16 v2, v77

    #@293d
    move/from16 v3, v327

    #@293f
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->resizeTask(ILandroid/graphics/Rect;I)V

    #@2942
    .line 2659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2945
    .line 2660
    const/4 v6, 0x1

    #@2946
    return v6

    #@2947
    .line 2664
    .end local v69    # "taskId":I
    .end local v77    # "r":Landroid/graphics/Rect;
    .end local v327    # "resizeMode":I
    :pswitch_e6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@294a
    move-object/from16 v0, p2

    #@294c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@294f
    .line 2665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2952
    move-result v69

    #@2953
    .line 2666
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    #@2955
    move/from16 v1, v69

    #@2957
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskBounds(I)Landroid/graphics/Rect;

    #@295a
    move-result-object v77

    #@295b
    .line 2667
    .restart local v77    # "r":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@295e
    .line 2668
    const/4 v6, 0x0

    #@295f
    move-object/from16 v0, v77

    #@2961
    move-object/from16 v1, p3

    #@2963
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@2966
    .line 2669
    const/4 v6, 0x1

    #@2967
    return v6

    #@2968
    .line 2673
    .end local v69    # "taskId":I
    .end local v77    # "r":Landroid/graphics/Rect;
    :pswitch_e7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@296b
    move-object/from16 v0, p2

    #@296d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2970
    .line 2674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2973
    move-result-object v236

    #@2974
    .line 2675
    .local v236, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2977
    move-result v17

    #@2978
    .line 2676
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@297a
    move-object/from16 v1, v236

    #@297c
    move/from16 v2, v17

    #@297e
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    #@2981
    move-result-object v250

    #@2982
    .line 2677
    .local v250, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2985
    .line 2678
    if-nez v250, :cond_9f

    #@2987
    .line 2679
    const/4 v6, 0x0

    #@2988
    move-object/from16 v0, p3

    #@298a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@298d
    .line 2684
    :goto_8c
    const/4 v6, 0x1

    #@298e
    return v6

    #@298f
    .line 2681
    :cond_9f
    const/4 v6, 0x1

    #@2990
    move-object/from16 v0, p3

    #@2992
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2995
    .line 2682
    const/4 v6, 0x0

    #@2996
    move-object/from16 v0, v250

    #@2998
    move-object/from16 v1, p3

    #@299a
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@299d
    goto :goto_8c

    #@299e
    .line 2688
    .end local v17    # "userId":I
    .end local v236    # "filename":Ljava/lang/String;
    .end local v250    # "icon":Landroid/graphics/Bitmap;
    :pswitch_e8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@29a1
    move-object/from16 v0, p2

    #@29a3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29a6
    .line 2690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29a9
    move-result v6

    #@29aa
    if-nez v6, :cond_a0

    #@29ac
    .line 2691
    const/16 v217, 0x0

    #@29ae
    .line 2695
    :goto_8d
    invoke-static/range {v217 .. v217}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    #@29b1
    move-result-object v0

    #@29b2
    move-object/16 v297, v0

    #@29b5
    .line 2696
    .restart local v297    # "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    #@29b7
    move-object/from16 v1, v297

    #@29b9
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    #@29bc
    .line 2697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29bf
    .line 2698
    const/4 v6, 0x1

    #@29c0
    return v6

    #@29c1
    .line 2693
    .end local v297    # "options":Landroid/app/ActivityOptions;
    :cond_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@29c4
    move-result-object v217

    #@29c5
    .restart local v217    # "bundle":Landroid/os/Bundle;
    goto :goto_8d

    #@29c6
    .line 2702
    .end local v217    # "bundle":Landroid/os/Bundle;
    :pswitch_e9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@29c9
    move-object/from16 v0, p2

    #@29cb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29ce
    .line 2703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29d1
    move-result-object v93

    #@29d2
    .line 2704
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29d5
    move-result v6

    #@29d6
    if-lez v6, :cond_a1

    #@29d8
    const/16 v232, 0x1

    #@29da
    .line 2705
    .local v232, "enable":Z
    :goto_8e
    move-object/from16 v0, p0

    #@29dc
    move-object/from16 v1, v93

    #@29de
    move/from16 v2, v232

    #@29e0
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    #@29e3
    move-result v0

    #@29e4
    move/16 v348, v0

    #@29e7
    .line 2706
    .restart local v348    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29ea
    .line 2707
    move/from16 v0, v348

    #@29ec
    if-eqz v0, :cond_a2

    #@29ee
    const/4 v6, 0x1

    #@29ef
    :goto_8f
    move-object/from16 v0, p3

    #@29f1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@29f4
    .line 2708
    const/4 v6, 0x1

    #@29f5
    return v6

    #@29f6
    .line 2704
    .end local v232    # "enable":Z
    .end local v348    # "success":Z
    :cond_a1
    const/16 v232, 0x0

    #@29f8
    goto :goto_8e

    #@29f9
    .line 2707
    .restart local v232    # "enable":Z
    .restart local v348    # "success":Z
    :cond_a2
    const/4 v6, 0x0

    #@29fa
    goto :goto_8f

    #@29fb
    .line 2712
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v232    # "enable":Z
    .end local v348    # "success":Z
    :pswitch_ea
    const-string/jumbo v6, "android.app.IActivityManager"

    #@29fe
    move-object/from16 v0, p2

    #@2a00
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a03
    .line 2713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a06
    move-result-object v93

    #@2a07
    .line 2714
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2a09
    move-object/from16 v1, v93

    #@2a0b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    #@2a0e
    move-result v233

    #@2a0f
    .line 2715
    .restart local v233    # "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a12
    .line 2716
    if-eqz v233, :cond_a3

    #@2a14
    const/4 v6, 0x1

    #@2a15
    :goto_90
    move-object/from16 v0, p3

    #@2a17
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2a1a
    .line 2717
    const/4 v6, 0x1

    #@2a1b
    return v6

    #@2a1c
    .line 2716
    :cond_a3
    const/4 v6, 0x0

    #@2a1d
    goto :goto_90

    #@2a1e
    .line 2721
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v233    # "enabled":Z
    :pswitch_eb
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2a21
    move-object/from16 v0, p2

    #@2a23
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a26
    .line 2722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a29
    move-result-object v93

    #@2a2a
    .line 2723
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2a2c
    move-object/from16 v1, v93

    #@2a2e
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    #@2a31
    .line 2724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a34
    .line 2725
    const/4 v6, 0x1

    #@2a35
    return v6

    #@2a36
    .line 2729
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_ec
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2a39
    move-object/from16 v0, p2

    #@2a3b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a3e
    .line 2730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a41
    move-result-object v93

    #@2a42
    .line 2731
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2a44
    move-object/from16 v1, v93

    #@2a46
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    #@2a49
    .line 2732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a4c
    .line 2733
    const/4 v6, 0x1

    #@2a4d
    return v6

    #@2a4e
    .line 2737
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_ed
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2a51
    move-object/from16 v0, p2

    #@2a53
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a56
    .line 2738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a59
    move-result-object v93

    #@2a5a
    .line 2739
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2a5c
    move-object/from16 v1, v93

    #@2a5e
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    #@2a61
    .line 2740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a64
    .line 2741
    const/4 v6, 0x1

    #@2a65
    return v6

    #@2a66
    .line 2745
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_ee
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2a69
    move-object/from16 v0, p2

    #@2a6b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a6e
    .line 2746
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    #@2a71
    .line 2747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a74
    .line 2748
    const/4 v6, 0x1

    #@2a75
    return v6

    #@2a76
    .line 2752
    :pswitch_ef
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2a79
    move-object/from16 v0, p2

    #@2a7b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a7e
    .line 2753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a81
    move-result v132

    #@2a82
    .line 2754
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@2a85
    move-result-object v238

    #@2a86
    .line 2755
    .local v238, "firstPacket":[B
    move-object/from16 v0, p0

    #@2a88
    move/from16 v1, v132

    #@2a8a
    move-object/from16 v2, v238

    #@2a8c
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->notifyCleartextNetwork(I[B)V

    #@2a8f
    .line 2756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a92
    .line 2757
    const/4 v6, 0x1

    #@2a93
    return v6

    #@2a94
    .line 2761
    .end local v132    # "uid":I
    .end local v238    # "firstPacket":[B
    :pswitch_f0
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2a97
    move-object/from16 v0, p2

    #@2a99
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a9c
    .line 2762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a9f
    move-result-object v190

    #@2aa0
    .line 2763
    .local v190, "procName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2aa3
    move-result v132

    #@2aa4
    .line 2764
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@2aa7
    move-result-wide v192

    #@2aa8
    .line 2765
    .local v192, "maxMemSize":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2aab
    move-result-object v194

    #@2aac
    .local v194, "reportPackage":Ljava/lang/String;
    move-object/from16 v189, p0

    #@2aae
    move/from16 v191, v132

    #@2ab0
    .line 2766
    invoke-virtual/range {v189 .. v194}, Landroid/app/ActivityManagerNative;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    #@2ab3
    .line 2767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ab6
    .line 2768
    const/4 v6, 0x1

    #@2ab7
    return v6

    #@2ab8
    .line 2772
    .end local v132    # "uid":I
    .end local v190    # "procName":Ljava/lang/String;
    .end local v192    # "maxMemSize":J
    .end local v194    # "reportPackage":Ljava/lang/String;
    :pswitch_f1
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2abb
    move-object/from16 v0, p2

    #@2abd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ac0
    .line 2773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ac3
    move-result-object v162

    #@2ac4
    .line 2774
    .restart local v162    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2ac6
    move-object/from16 v1, v162

    #@2ac8
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->dumpHeapFinished(Ljava/lang/String;)V

    #@2acb
    .line 2775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ace
    .line 2776
    const/4 v6, 0x1

    #@2acf
    return v6

    #@2ad0
    .line 2780
    .end local v162    # "path":Ljava/lang/String;
    :pswitch_f2
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2ad3
    move-object/from16 v0, p2

    #@2ad5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ad8
    .line 2782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2adb
    move-result-object v6

    #@2adc
    .line 2781
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    #@2adf
    move-result-object v46

    #@2ae0
    .line 2783
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ae3
    move-result v6

    #@2ae4
    if-eqz v6, :cond_a4

    #@2ae6
    const/4 v0, 0x1

    #@2ae7
    move/16 v269, v0

    #@2aea
    .line 2784
    .local v269, "keepAwake":Z
    :goto_91
    move-object/from16 v0, p0

    #@2aec
    move-object/from16 v1, v46

    #@2aee
    move/from16 v2, v269

    #@2af0
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    #@2af3
    .line 2785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2af6
    .line 2786
    const/4 v6, 0x1

    #@2af7
    return v6

    #@2af8
    .line 2783
    .end local v269    # "keepAwake":Z
    :cond_a4
    const/4 v0, 0x0

    #@2af9
    move/16 v269, v0

    #@2afc
    goto :goto_91

    #@2afd
    .line 2790
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_f3
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2b00
    move-object/from16 v0, p2

    #@2b02
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b05
    .line 2791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b08
    move-result v17

    #@2b09
    .line 2792
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@2b0c
    move-result-object v0

    #@2b0d
    move-object/16 v299, v0

    #@2b10
    .line 2793
    .local v299, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b12
    move/from16 v1, v17

    #@2b14
    move-object/from16 v2, v299

    #@2b16
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateLockTaskPackages(I[Ljava/lang/String;)V

    #@2b19
    .line 2794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b1c
    .line 2795
    const/4 v6, 0x1

    #@2b1d
    return v6

    #@2b1e
    .line 2799
    .end local v17    # "userId":I
    .end local v299    # "packages":[Ljava/lang/String;
    :pswitch_f4
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2b21
    move-object/from16 v0, p2

    #@2b23
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b26
    .line 2800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b29
    move-result-object v32

    #@2b2a
    .line 2801
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b2c
    move-object/from16 v1, v32

    #@2b2e
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateDeviceOwner(Ljava/lang/String;)V

    #@2b31
    .line 2802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b34
    .line 2803
    const/4 v6, 0x1

    #@2b35
    return v6

    #@2b36
    .line 2807
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_f5
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2b39
    move-object/from16 v0, p2

    #@2b3b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b3e
    .line 2808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b41
    move-result-object v0

    #@2b42
    move-object/16 v308, v0

    #@2b45
    .line 2809
    .restart local v308    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b48
    move-result-object v8

    #@2b49
    .line 2810
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b4b
    move-object/from16 v1, v308

    #@2b4d
    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    #@2b50
    move-result v0

    #@2b51
    move/16 v319, v0

    #@2b54
    .line 2811
    .restart local v319    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b57
    .line 2812
    move-object/from16 v0, p3

    #@2b59
    move/from16 v1, v319

    #@2b5b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2b5e
    .line 2813
    const/4 v6, 0x1

    #@2b5f
    return v6

    #@2b60
    .line 2817
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v308    # "pkg":Ljava/lang/String;
    .end local v319    # "res":I
    :pswitch_f6
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2b63
    move-object/from16 v0, p2

    #@2b65
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b68
    .line 2818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b6b
    move-result-object v140

    #@2b6c
    .line 2819
    .restart local v140    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b6f
    move-result v17

    #@2b70
    .line 2820
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b73
    move-result v0

    #@2b74
    move/16 v270, v0

    #@2b77
    .line 2821
    .restart local v270    # "level":I
    move-object/from16 v0, p0

    #@2b79
    move-object/from16 v1, v140

    #@2b7b
    move/from16 v2, v17

    #@2b7d
    move/from16 v3, v270

    #@2b7f
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    #@2b82
    move-result v0

    #@2b83
    move/16 v325, v0

    #@2b86
    .line 2822
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b89
    .line 2823
    move/from16 v0, v325

    #@2b8b
    if-eqz v0, :cond_a5

    #@2b8d
    const/4 v6, 0x1

    #@2b8e
    :goto_92
    move-object/from16 v0, p3

    #@2b90
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2b93
    .line 2824
    const/4 v6, 0x1

    #@2b94
    return v6

    #@2b95
    .line 2823
    :cond_a5
    const/4 v6, 0x0

    #@2b96
    goto :goto_92

    #@2b97
    .line 2828
    .end local v17    # "userId":I
    .end local v140    # "process":Ljava/lang/String;
    .end local v270    # "level":I
    .end local v325    # "res":Z
    :pswitch_f7
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2b9a
    move-object/from16 v0, p2

    #@2b9c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b9f
    .line 2829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2ba2
    move-result-object v93

    #@2ba3
    .line 2830
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2ba5
    move-object/from16 v1, v93

    #@2ba7
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    #@2baa
    move-result v0

    #@2bab
    move/16 v325, v0

    #@2bae
    .line 2831
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bb1
    .line 2832
    move/from16 v0, v325

    #@2bb3
    if-eqz v0, :cond_a6

    #@2bb5
    const/4 v6, 0x1

    #@2bb6
    :goto_93
    move-object/from16 v0, p3

    #@2bb8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2bbb
    .line 2833
    const/4 v6, 0x1

    #@2bbc
    return v6

    #@2bbd
    .line 2832
    :cond_a6
    const/4 v6, 0x0

    #@2bbe
    goto :goto_93

    #@2bbf
    .line 2837
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v325    # "res":Z
    :pswitch_f8
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2bc2
    move-object/from16 v0, p2

    #@2bc4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2bc7
    .line 2838
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startBinderTracking()Z

    #@2bca
    move-result v0

    #@2bcb
    move/16 v325, v0

    #@2bce
    .line 2839
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bd1
    .line 2840
    move/from16 v0, v325

    #@2bd3
    if-eqz v0, :cond_a7

    #@2bd5
    const/4 v6, 0x1

    #@2bd6
    :goto_94
    move-object/from16 v0, p3

    #@2bd8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2bdb
    .line 2841
    const/4 v6, 0x1

    #@2bdc
    return v6

    #@2bdd
    .line 2840
    :cond_a7
    const/4 v6, 0x0

    #@2bde
    goto :goto_94

    #@2bdf
    .line 2845
    .end local v325    # "res":Z
    :pswitch_f9
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2be2
    move-object/from16 v0, p2

    #@2be4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2be7
    .line 2846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2bea
    move-result v6

    #@2beb
    if-eqz v6, :cond_a8

    #@2bed
    .line 2847
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2bef
    move-object/from16 v0, p2

    #@2bf1
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2bf4
    move-result-object v6

    #@2bf5
    check-cast v6, Landroid/os/ParcelFileDescriptor;

    #@2bf7
    move-object/from16 v163, v6

    #@2bf9
    .line 2848
    .restart local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_95
    move-object/from16 v0, p0

    #@2bfb
    move-object/from16 v1, v163

    #@2bfd
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    #@2c00
    move-result v0

    #@2c01
    move/16 v325, v0

    #@2c04
    .line 2849
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c07
    .line 2850
    move/from16 v0, v325

    #@2c09
    if-eqz v0, :cond_a9

    #@2c0b
    const/4 v6, 0x1

    #@2c0c
    :goto_96
    move-object/from16 v0, p3

    #@2c0e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2c11
    .line 2851
    const/4 v6, 0x1

    #@2c12
    return v6

    #@2c13
    .line 2847
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v325    # "res":Z
    :cond_a8
    const/16 v163, 0x0

    #@2c15
    goto :goto_95

    #@2c16
    .line 2850
    .restart local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v325    # "res":Z
    :cond_a9
    const/4 v6, 0x0

    #@2c17
    goto :goto_96

    #@2c18
    .line 2854
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v325    # "res":Z
    :pswitch_fa
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2c1b
    move-object/from16 v0, p2

    #@2c1d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c20
    .line 2855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2c23
    move-result-object v93

    #@2c24
    .line 2856
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2c26
    move-object/from16 v1, v93

    #@2c28
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityStackId(Landroid/os/IBinder;)I

    #@2c2b
    move-result v76

    #@2c2c
    .line 2857
    .restart local v76    # "stackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c2f
    .line 2858
    move-object/from16 v0, p3

    #@2c31
    move/from16 v1, v76

    #@2c33
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2c36
    .line 2859
    const/4 v6, 0x1

    #@2c37
    return v6

    #@2c38
    .line 2862
    .end local v76    # "stackId":I
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_fb
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2c3b
    move-object/from16 v0, p2

    #@2c3d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c40
    .line 2863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2c43
    move-result-object v93

    #@2c44
    .line 2864
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2c46
    move-object/from16 v1, v93

    #@2c48
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->exitFreeformMode(Landroid/os/IBinder;)V

    #@2c4b
    .line 2865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c4e
    .line 2866
    const/4 v6, 0x1

    #@2c4f
    return v6

    #@2c50
    .line 2869
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_fc
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2c53
    move-object/from16 v0, p2

    #@2c55
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c58
    .line 2870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2c5b
    move-result-object v93

    #@2c5c
    .line 2871
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2c5e
    move-object/from16 v1, p2

    #@2c60
    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    #@2c63
    move-result-object v248

    #@2c64
    .line 2872
    .local v248, "horizontal":[I
    move-object/from16 v0, p0

    #@2c66
    move-object/from16 v1, p2

    #@2c68
    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    #@2c6b
    move-result-object v0

    #@2c6c
    move-object/16 v364, v0

    #@2c6f
    .line 2873
    .local v364, "vertical":[I
    move-object/from16 v0, p0

    #@2c71
    move-object/from16 v1, p2

    #@2c73
    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    #@2c76
    move-result-object v0

    #@2c77
    move-object/16 v341, v0

    #@2c7a
    .line 2874
    .local v341, "smallest":[I
    move-object/from16 v0, p0

    #@2c7c
    move-object/from16 v1, v93

    #@2c7e
    move-object/from16 v2, v248

    #@2c80
    move-object/from16 v3, v364

    #@2c82
    move-object/from16 v4, v341

    #@2c84
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V

    #@2c87
    .line 2875
    const/4 v6, 0x1

    #@2c88
    return v6

    #@2c89
    .line 2878
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v248    # "horizontal":[I
    .end local v341    # "smallest":[I
    .end local v364    # "vertical":[I
    :pswitch_fd
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2c8c
    move-object/from16 v0, p2

    #@2c8e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c91
    .line 2879
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c94
    move-result v6

    #@2c95
    const/16 v18, 0x1

    #@2c97
    move/from16 v0, v18

    #@2c99
    if-ne v6, v0, :cond_aa

    #@2c9b
    const/4 v0, 0x1

    #@2c9c
    move/16 v349, v0

    #@2c9f
    .line 2880
    .local v349, "suppress":Z
    :goto_97
    move-object/from16 v0, p0

    #@2ca1
    move/from16 v1, v349

    #@2ca3
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->suppressResizeConfigChanges(Z)V

    #@2ca6
    .line 2881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ca9
    .line 2882
    const/4 v6, 0x1

    #@2caa
    return v6

    #@2cab
    .line 2879
    .end local v349    # "suppress":Z
    :cond_aa
    const/4 v0, 0x0

    #@2cac
    move/16 v349, v0

    #@2caf
    goto :goto_97

    #@2cb0
    .line 2885
    :pswitch_fe
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2cb3
    move-object/from16 v0, p2

    #@2cb5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2cb8
    .line 2886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cbb
    move-result v76

    #@2cbc
    .line 2887
    .restart local v76    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cbf
    move-result v6

    #@2cc0
    const/16 v18, 0x1

    #@2cc2
    move/from16 v0, v18

    #@2cc4
    if-ne v6, v0, :cond_ab

    #@2cc6
    const/4 v0, 0x1

    #@2cc7
    move/16 v295, v0

    #@2cca
    .line 2888
    .local v295, "onTop":Z
    :goto_98
    move-object/from16 v0, p0

    #@2ccc
    move/from16 v1, v76

    #@2cce
    move/from16 v2, v295

    #@2cd0
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTasksToFullscreenStack(IZ)V

    #@2cd3
    .line 2889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cd6
    .line 2890
    const/4 v6, 0x1

    #@2cd7
    return v6

    #@2cd8
    .line 2887
    .end local v295    # "onTop":Z
    :cond_ab
    const/4 v0, 0x0

    #@2cd9
    move/16 v295, v0

    #@2cdc
    goto :goto_98

    #@2cdd
    .line 2893
    .end local v76    # "stackId":I
    :pswitch_ff
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2ce0
    move-object/from16 v0, p2

    #@2ce2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ce5
    .line 2894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ce8
    move-result v132

    #@2ce9
    .line 2895
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2cec
    move-result-object v0

    #@2ced
    move-object/16 v308, v0

    #@2cf0
    .line 2896
    .restart local v308    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2cf2
    move/from16 v1, v132

    #@2cf4
    move-object/from16 v2, v308

    #@2cf6
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getAppStartMode(ILjava/lang/String;)I

    #@2cf9
    move-result v0

    #@2cfa
    move/16 v319, v0

    #@2cfd
    .line 2897
    .restart local v319    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d00
    .line 2898
    move-object/from16 v0, p3

    #@2d02
    move/from16 v1, v319

    #@2d04
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d07
    .line 2899
    const/4 v6, 0x1

    #@2d08
    return v6

    #@2d09
    .line 2902
    .end local v132    # "uid":I
    .end local v308    # "pkg":Ljava/lang/String;
    .end local v319    # "res":I
    :pswitch_100
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2d0c
    move-object/from16 v0, p2

    #@2d0e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d11
    .line 2903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d14
    move-result-object v93

    #@2d15
    .line 2904
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2d17
    move-object/from16 v1, v93

    #@2d19
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInMultiWindowMode(Landroid/os/IBinder;)Z

    #@2d1c
    move-result v253

    #@2d1d
    .line 2905
    .local v253, "inMultiWindow":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d20
    .line 2906
    if-eqz v253, :cond_ac

    #@2d22
    const/4 v6, 0x1

    #@2d23
    :goto_99
    move-object/from16 v0, p3

    #@2d25
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2d28
    .line 2907
    const/4 v6, 0x1

    #@2d29
    return v6

    #@2d2a
    .line 2906
    :cond_ac
    const/4 v6, 0x0

    #@2d2b
    goto :goto_99

    #@2d2c
    .line 2910
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v253    # "inMultiWindow":Z
    :pswitch_101
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2d2f
    move-object/from16 v0, p2

    #@2d31
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d34
    .line 2911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d37
    move-result-object v93

    #@2d38
    .line 2912
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2d3a
    move-object/from16 v1, v93

    #@2d3c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInPictureInPictureMode(Landroid/os/IBinder;)Z

    #@2d3f
    move-result v254

    #@2d40
    .line 2913
    .local v254, "inPip":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d43
    .line 2914
    if-eqz v254, :cond_ad

    #@2d45
    const/4 v6, 0x1

    #@2d46
    :goto_9a
    move-object/from16 v0, p3

    #@2d48
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2d4b
    .line 2915
    const/4 v6, 0x1

    #@2d4c
    return v6

    #@2d4d
    .line 2914
    :cond_ad
    const/4 v6, 0x0

    #@2d4e
    goto :goto_9a

    #@2d4f
    .line 2918
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v254    # "inPip":Z
    :pswitch_102
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2d52
    move-object/from16 v0, p2

    #@2d54
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d57
    .line 2919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d5a
    move-result-object v93

    #@2d5b
    .line 2920
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2d5d
    move-object/from16 v1, v93

    #@2d5f
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->enterPictureInPictureMode(Landroid/os/IBinder;)V

    #@2d62
    .line 2921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d65
    .line 2922
    const/4 v6, 0x1

    #@2d66
    return v6

    #@2d67
    .line 2925
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_103
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2d6a
    move-object/from16 v0, p2

    #@2d6c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d6f
    .line 2926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d72
    move-result-object v93

    #@2d73
    .line 2927
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d76
    move-result v6

    #@2d77
    const/16 v18, 0x1

    #@2d79
    move/from16 v0, v18

    #@2d7b
    if-ne v6, v0, :cond_ae

    #@2d7d
    const/16 v232, 0x1

    #@2d7f
    .line 2928
    .local v232, "enable":Z
    :goto_9b
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d81
    move-object/from16 v0, p2

    #@2d83
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d86
    move-result-object v0

    #@2d87
    move-object/16 v298, v0

    #@2d8a
    move-object/from16 v0, v298

    #@2d8c
    check-cast v0, Landroid/content/ComponentName;

    #@2d8e
    move-object/16 v298, v0

    #@2d91
    .line 2929
    .local v298, "packageName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@2d93
    move-object/from16 v1, v93

    #@2d95
    move/from16 v2, v232

    #@2d97
    move-object/from16 v3, v298

    #@2d99
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    #@2d9c
    move-result v0

    #@2d9d
    move/16 v319, v0

    #@2da0
    .line 2930
    .restart local v319    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2da3
    .line 2931
    move-object/from16 v0, p3

    #@2da5
    move/from16 v1, v319

    #@2da7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2daa
    .line 2932
    const/4 v6, 0x1

    #@2dab
    return v6

    #@2dac
    .line 2927
    .end local v232    # "enable":Z
    .end local v298    # "packageName":Landroid/content/ComponentName;
    .end local v319    # "res":I
    :cond_ae
    const/16 v232, 0x0

    #@2dae
    .restart local v232    # "enable":Z
    goto :goto_9b

    #@2daf
    .line 2935
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v232    # "enable":Z
    :pswitch_104
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2db2
    move-object/from16 v0, p2

    #@2db4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2db7
    .line 2936
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2db9
    move-object/from16 v0, p2

    #@2dbb
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2dbe
    move-result-object v0

    #@2dbf
    move-object/16 v298, v0

    #@2dc2
    move-object/from16 v0, v298

    #@2dc4
    check-cast v0, Landroid/content/ComponentName;

    #@2dc6
    move-object/16 v298, v0

    #@2dc9
    .line 2937
    .restart local v298    # "packageName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@2dcb
    move-object/from16 v1, v298

    #@2dcd
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    #@2dd0
    move-result v0

    #@2dd1
    move/16 v325, v0

    #@2dd4
    .line 2938
    .restart local v325    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2dd7
    .line 2939
    move/from16 v0, v325

    #@2dd9
    if-eqz v0, :cond_af

    #@2ddb
    const/4 v6, 0x1

    #@2ddc
    :goto_9c
    move-object/from16 v0, p3

    #@2dde
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2de1
    .line 2940
    const/4 v6, 0x1

    #@2de2
    return v6

    #@2de3
    .line 2939
    :cond_af
    const/4 v6, 0x0

    #@2de4
    goto :goto_9c

    #@2de5
    .line 2943
    .end local v298    # "packageName":Landroid/content/ComponentName;
    .end local v325    # "res":Z
    :pswitch_105
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2de8
    move-object/from16 v0, p2

    #@2dea
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ded
    .line 2944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2df0
    move-result v186

    #@2df1
    .line 2945
    .restart local v186    # "userHandle":I
    move-object/from16 v0, p0

    #@2df3
    move/from16 v1, v186

    #@2df5
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isAppForeground(I)Z

    #@2df8
    move-result v0

    #@2df9
    move/16 v264, v0

    #@2dfc
    .line 2946
    .restart local v264    # "isForeground":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2dff
    .line 2947
    move/from16 v0, v264

    #@2e01
    if-eqz v0, :cond_b0

    #@2e03
    const/4 v6, 0x1

    #@2e04
    :goto_9d
    move-object/from16 v0, p3

    #@2e06
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2e09
    .line 2948
    const/4 v6, 0x1

    #@2e0a
    return v6

    #@2e0b
    .line 2947
    :cond_b0
    const/4 v6, 0x0

    #@2e0c
    goto :goto_9d

    #@2e0d
    .line 2951
    .end local v186    # "userHandle":I
    .end local v264    # "isForeground":Z
    :pswitch_106
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2e10
    move-object/from16 v0, p2

    #@2e12
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e15
    .line 2952
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e18
    .line 2953
    const/4 v6, 0x1

    #@2e19
    return v6

    #@2e1a
    .line 2956
    :pswitch_107
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2e1d
    move-object/from16 v0, p2

    #@2e1f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e22
    .line 2957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e25
    move-result v76

    #@2e26
    .line 2958
    .restart local v76    # "stackId":I
    move-object/from16 v0, p0

    #@2e28
    move/from16 v1, v76

    #@2e2a
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeStack(I)V

    #@2e2d
    .line 2959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e30
    .line 2960
    const/4 v6, 0x1

    #@2e31
    return v6

    #@2e32
    .line 2963
    .end local v76    # "stackId":I
    :pswitch_108
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2e35
    move-object/from16 v0, p2

    #@2e37
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e3a
    .line 2964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e3d
    move-result v17

    #@2e3e
    .line 2965
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    #@2e40
    move/from16 v1, v17

    #@2e42
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLockedProfile(I)V

    #@2e45
    .line 2966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e48
    .line 2967
    const/4 v6, 0x1

    #@2e49
    return v6

    #@2e4a
    .line 2970
    .end local v17    # "userId":I
    :pswitch_109
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2e4d
    move-object/from16 v0, p2

    #@2e4f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e52
    .line 2971
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e54
    move-object/from16 v0, p2

    #@2e56
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e59
    move-result-object v9

    #@2e5a
    check-cast v9, Landroid/content/Intent;

    #@2e5c
    .line 2972
    .restart local v9    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@2e5e
    invoke-virtual {v0, v9}, Landroid/app/ActivityManagerNative;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;)V

    #@2e61
    .line 2973
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e64
    .line 2974
    const/4 v6, 0x1

    #@2e65
    return v6

    #@2e66
    .line 2977
    .end local v9    # "intent":Landroid/content/Intent;
    :pswitch_10a
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2e69
    move-object/from16 v0, p2

    #@2e6b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e6e
    .line 2978
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->sendIdleJobTrigger()V

    #@2e71
    .line 2979
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e74
    .line 2980
    const/4 v6, 0x1

    #@2e75
    return v6

    #@2e76
    .line 2983
    :pswitch_10b
    const-string/jumbo v6, "android.app.IActivityManager"

    #@2e79
    move-object/from16 v0, p2

    #@2e7b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e7e
    .line 2984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e81
    move-result-object v6

    #@2e82
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@2e85
    move-result-object v196

    #@2e86
    .line 2985
    .local v196, "sender":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e89
    move-result v197

    #@2e8a
    .line 2986
    .local v197, "scode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e8d
    move-result v6

    #@2e8e
    if-eqz v6, :cond_b1

    #@2e90
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e92
    move-object/from16 v0, p2

    #@2e94
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e97
    move-result-object v9

    #@2e98
    check-cast v9, Landroid/content/Intent;

    #@2e9a
    .line 2987
    :goto_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e9d
    move-result-object v10

    #@2e9e
    .line 2989
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2ea1
    move-result-object v6

    #@2ea2
    .line 2988
    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    #@2ea5
    move-result-object v200

    #@2ea6
    .line 2990
    .local v200, "finishedReceiver":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ea9
    move-result-object v201

    #@2eaa
    .line 2991
    .local v201, "requiredPermission":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ead
    move-result v6

    #@2eae
    if-eqz v6, :cond_b2

    #@2eb0
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2eb2
    move-object/from16 v0, p2

    #@2eb4
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2eb7
    move-result-object v6

    #@2eb8
    check-cast v6, Landroid/os/Bundle;

    #@2eba
    move-object/from16 v16, v6

    #@2ebc
    .local v16, "options":Landroid/os/Bundle;
    :goto_9f
    move-object/from16 v195, p0

    #@2ebe
    move-object/from16 v198, v9

    #@2ec0
    move-object/from16 v199, v10

    #@2ec2
    move-object/from16 v202, v16

    #@2ec4
    .line 2992
    invoke-virtual/range {v195 .. v202}, Landroid/app/ActivityManagerNative;->sendIntentSender(Landroid/content/IIntentSender;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    #@2ec7
    move-result v0

    #@2ec8
    move/16 v329, v0

    #@2ecb
    .line 2994
    .restart local v329    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ece
    .line 2995
    move-object/from16 v0, p3

    #@2ed0
    move/from16 v1, v329

    #@2ed2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2ed5
    .line 2996
    const/4 v6, 0x1

    #@2ed6
    return v6

    #@2ed7
    .line 2986
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v200    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .end local v201    # "requiredPermission":Ljava/lang/String;
    .end local v329    # "result":I
    :cond_b1
    const/4 v9, 0x0

    #@2ed8
    .local v9, "intent":Landroid/content/Intent;
    goto :goto_9e

    #@2ed9
    .line 2991
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    .restart local v200    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .restart local v201    # "requiredPermission":Ljava/lang/String;
    :cond_b2
    const/16 v16, 0x0

    #@2edb
    goto :goto_9f

    #@2edc
    .line 148
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
    .end packed-switch
.end method
