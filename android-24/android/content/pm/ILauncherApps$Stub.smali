.class public abstract Landroid/content/pm/ILauncherApps$Stub;
.super Landroid/os/Binder;
.source "ILauncherApps.java"

# interfaces
.implements Landroid/content/pm/ILauncherApps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ILauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ILauncherApps$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.ILauncherApps"

.field static final TRANSACTION_addOnAppsChangedListener:I = 0x1

.field static final TRANSACTION_getApplicationInfo:I = 0x9

.field static final TRANSACTION_getLauncherActivities:I = 0x3

.field static final TRANSACTION_getShortcutIconFd:I = 0xe

.field static final TRANSACTION_getShortcutIconResId:I = 0xd

.field static final TRANSACTION_getShortcuts:I = 0xa

.field static final TRANSACTION_hasShortcutHostPermission:I = 0xf

.field static final TRANSACTION_isActivityEnabled:I = 0x8

.field static final TRANSACTION_isPackageEnabled:I = 0x7

.field static final TRANSACTION_pinShortcuts:I = 0xb

.field static final TRANSACTION_removeOnAppsChangedListener:I = 0x2

.field static final TRANSACTION_resolveActivity:I = 0x4

.field static final TRANSACTION_showAppDetailsAsUser:I = 0x6

.field static final TRANSACTION_startActivityAsUser:I = 0x5

.field static final TRANSACTION_startShortcut:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.content.pm.ILauncherApps"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/pm/ILauncherApps$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/ILauncherApps;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.content.pm.ILauncherApps"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/pm/ILauncherApps;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/content/pm/ILauncherApps;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/ILauncherApps$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/pm/ILauncherApps$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 40
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 391
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v6

    #@7
    return v6

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    const/4 v6, 0x1

    #@11
    return v6

    #@12
    .line 50
    :sswitch_1
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    .line 54
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@21
    move-result-object v6

    #@22
    invoke-static {v6}, Landroid/content/pm/IOnAppsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;

    #@25
    move-result-object v25

    #@26
    .line 55
    .local v25, "_arg1":Landroid/content/pm/IOnAppsChangedListener;
    move-object/from16 v0, p0

    #@28
    move-object/from16 v1, v25

    #@2a
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/ILauncherApps$Stub;->addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V

    #@2d
    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@30
    .line 57
    const/4 v6, 0x1

    #@31
    return v6

    #@32
    .line 61
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/content/pm/IOnAppsChangedListener;
    :sswitch_2
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@35
    move-object/from16 v0, p2

    #@37
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3d
    move-result-object v6

    #@3e
    invoke-static {v6}, Landroid/content/pm/IOnAppsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;

    #@41
    move-result-object v23

    #@42
    .line 64
    .local v23, "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    move-object/from16 v0, p0

    #@44
    move-object/from16 v1, v23

    #@46
    invoke-virtual {v0, v1}, Landroid/content/pm/ILauncherApps$Stub;->removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V

    #@49
    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c
    .line 66
    const/4 v6, 0x1

    #@4d
    return v6

    #@4e
    .line 70
    .end local v23    # "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    :sswitch_3
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@51
    move-object/from16 v0, p2

    #@53
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    .line 74
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v6

    #@5e
    if-eqz v6, :cond_0

    #@60
    .line 75
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@62
    move-object/from16 v0, p2

    #@64
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@67
    move-result-object v27

    #@68
    check-cast v27, Landroid/os/UserHandle;

    #@6a
    .line 80
    :goto_0
    move-object/from16 v0, p0

    #@6c
    move-object/from16 v1, v27

    #@6e
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/ILauncherApps$Stub;->getLauncherActivities(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    #@71
    move-result-object v36

    #@72
    .line 81
    .local v36, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@75
    .line 82
    if-eqz v36, :cond_1

    #@77
    .line 83
    const/4 v6, 0x1

    #@78
    move-object/from16 v0, p3

    #@7a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@7d
    .line 84
    const/4 v6, 0x1

    #@7e
    move-object/from16 v0, v36

    #@80
    move-object/from16 v1, p3

    #@82
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@85
    .line 89
    :goto_1
    const/4 v6, 0x1

    #@86
    return v6

    #@87
    .line 78
    .end local v36    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_0
    const/16 v27, 0x0

    #@89
    .local v27, "_arg1":Landroid/os/UserHandle;
    goto :goto_0

    #@8a
    .line 87
    .end local v27    # "_arg1":Landroid/os/UserHandle;
    .restart local v36    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_1
    const/4 v6, 0x0

    #@8b
    move-object/from16 v0, p3

    #@8d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@90
    goto :goto_1

    #@91
    .line 93
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_4
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@94
    move-object/from16 v0, p2

    #@96
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@99
    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9c
    move-result v6

    #@9d
    if-eqz v6, :cond_2

    #@9f
    .line 96
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a1
    move-object/from16 v0, p2

    #@a3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a6
    move-result-object v22

    #@a7
    check-cast v22, Landroid/content/ComponentName;

    #@a9
    .line 102
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ac
    move-result v6

    #@ad
    if-eqz v6, :cond_3

    #@af
    .line 103
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b1
    move-object/from16 v0, p2

    #@b3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b6
    move-result-object v27

    #@b7
    check-cast v27, Landroid/os/UserHandle;

    #@b9
    .line 108
    :goto_3
    move-object/from16 v0, p0

    #@bb
    move-object/from16 v1, v22

    #@bd
    move-object/from16 v2, v27

    #@bf
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ILauncherApps$Stub;->resolveActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/ActivityInfo;

    #@c2
    move-result-object v34

    #@c3
    .line 109
    .local v34, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c6
    .line 110
    if-eqz v34, :cond_4

    #@c8
    .line 111
    const/4 v6, 0x1

    #@c9
    move-object/from16 v0, p3

    #@cb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@ce
    .line 112
    const/4 v6, 0x1

    #@cf
    move-object/from16 v0, v34

    #@d1
    move-object/from16 v1, p3

    #@d3
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@d6
    .line 117
    :goto_4
    const/4 v6, 0x1

    #@d7
    return v6

    #@d8
    .line 99
    .end local v34    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_2
    const/16 v22, 0x0

    #@da
    .local v22, "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    #@db
    .line 106
    .end local v22    # "_arg0":Landroid/content/ComponentName;
    :cond_3
    const/16 v27, 0x0

    #@dd
    .restart local v27    # "_arg1":Landroid/os/UserHandle;
    goto :goto_3

    #@de
    .line 115
    .end local v27    # "_arg1":Landroid/os/UserHandle;
    .restart local v34    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_4
    const/4 v6, 0x0

    #@df
    move-object/from16 v0, p3

    #@e1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@e4
    goto :goto_4

    #@e5
    .line 121
    .end local v34    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_5
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@e8
    move-object/from16 v0, p2

    #@ea
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ed
    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f0
    move-result v6

    #@f1
    if-eqz v6, :cond_5

    #@f3
    .line 124
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f5
    move-object/from16 v0, p2

    #@f7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fa
    move-result-object v22

    #@fb
    check-cast v22, Landroid/content/ComponentName;

    #@fd
    .line 130
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@100
    move-result v6

    #@101
    if-eqz v6, :cond_6

    #@103
    .line 131
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@105
    move-object/from16 v0, p2

    #@107
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10a
    move-result-object v26

    #@10b
    check-cast v26, Landroid/graphics/Rect;

    #@10d
    .line 137
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@110
    move-result v6

    #@111
    if-eqz v6, :cond_7

    #@113
    .line 138
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@115
    move-object/from16 v0, p2

    #@117
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11a
    move-result-object v28

    #@11b
    check-cast v28, Landroid/os/Bundle;

    #@11d
    .line 144
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@120
    move-result v6

    #@121
    if-eqz v6, :cond_8

    #@123
    .line 145
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@125
    move-object/from16 v0, p2

    #@127
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12a
    move-result-object v32

    #@12b
    check-cast v32, Landroid/os/UserHandle;

    #@12d
    .line 150
    :goto_8
    move-object/from16 v0, p0

    #@12f
    move-object/from16 v1, v22

    #@131
    move-object/from16 v2, v26

    #@133
    move-object/from16 v3, v28

    #@135
    move-object/from16 v4, v32

    #@137
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/ILauncherApps$Stub;->startActivityAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@13a
    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13d
    .line 152
    const/4 v6, 0x1

    #@13e
    return v6

    #@13f
    .line 127
    :cond_5
    const/16 v22, 0x0

    #@141
    .restart local v22    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    #@142
    .line 134
    .end local v22    # "_arg0":Landroid/content/ComponentName;
    :cond_6
    const/16 v26, 0x0

    #@144
    .local v26, "_arg1":Landroid/graphics/Rect;
    goto :goto_6

    #@145
    .line 141
    .end local v26    # "_arg1":Landroid/graphics/Rect;
    :cond_7
    const/16 v28, 0x0

    #@147
    .local v28, "_arg2":Landroid/os/Bundle;
    goto :goto_7

    #@148
    .line 148
    .end local v28    # "_arg2":Landroid/os/Bundle;
    :cond_8
    const/16 v32, 0x0

    #@14a
    .local v32, "_arg3":Landroid/os/UserHandle;
    goto :goto_8

    #@14b
    .line 156
    .end local v32    # "_arg3":Landroid/os/UserHandle;
    :sswitch_6
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@14e
    move-object/from16 v0, p2

    #@150
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@153
    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@156
    move-result v6

    #@157
    if-eqz v6, :cond_9

    #@159
    .line 159
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15b
    move-object/from16 v0, p2

    #@15d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@160
    move-result-object v22

    #@161
    check-cast v22, Landroid/content/ComponentName;

    #@163
    .line 165
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@166
    move-result v6

    #@167
    if-eqz v6, :cond_a

    #@169
    .line 166
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16b
    move-object/from16 v0, p2

    #@16d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@170
    move-result-object v26

    #@171
    check-cast v26, Landroid/graphics/Rect;

    #@173
    .line 172
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@176
    move-result v6

    #@177
    if-eqz v6, :cond_b

    #@179
    .line 173
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17b
    move-object/from16 v0, p2

    #@17d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@180
    move-result-object v28

    #@181
    check-cast v28, Landroid/os/Bundle;

    #@183
    .line 179
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@186
    move-result v6

    #@187
    if-eqz v6, :cond_c

    #@189
    .line 180
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18b
    move-object/from16 v0, p2

    #@18d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@190
    move-result-object v32

    #@191
    check-cast v32, Landroid/os/UserHandle;

    #@193
    .line 185
    :goto_c
    move-object/from16 v0, p0

    #@195
    move-object/from16 v1, v22

    #@197
    move-object/from16 v2, v26

    #@199
    move-object/from16 v3, v28

    #@19b
    move-object/from16 v4, v32

    #@19d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/ILauncherApps$Stub;->showAppDetailsAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@1a0
    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a3
    .line 187
    const/4 v6, 0x1

    #@1a4
    return v6

    #@1a5
    .line 162
    :cond_9
    const/16 v22, 0x0

    #@1a7
    .restart local v22    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    #@1a8
    .line 169
    .end local v22    # "_arg0":Landroid/content/ComponentName;
    :cond_a
    const/16 v26, 0x0

    #@1aa
    .restart local v26    # "_arg1":Landroid/graphics/Rect;
    goto :goto_a

    #@1ab
    .line 176
    .end local v26    # "_arg1":Landroid/graphics/Rect;
    :cond_b
    const/16 v28, 0x0

    #@1ad
    .restart local v28    # "_arg2":Landroid/os/Bundle;
    goto :goto_b

    #@1ae
    .line 183
    .end local v28    # "_arg2":Landroid/os/Bundle;
    :cond_c
    const/16 v32, 0x0

    #@1b0
    .restart local v32    # "_arg3":Landroid/os/UserHandle;
    goto :goto_c

    #@1b1
    .line 191
    .end local v32    # "_arg3":Landroid/os/UserHandle;
    :sswitch_7
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@1b4
    move-object/from16 v0, p2

    #@1b6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b9
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1bc
    move-result-object v7

    #@1bd
    .line 195
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c0
    move-result v6

    #@1c1
    if-eqz v6, :cond_d

    #@1c3
    .line 196
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c5
    move-object/from16 v0, p2

    #@1c7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ca
    move-result-object v27

    #@1cb
    check-cast v27, Landroid/os/UserHandle;

    #@1cd
    .line 201
    :goto_d
    move-object/from16 v0, p0

    #@1cf
    move-object/from16 v1, v27

    #@1d1
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/ILauncherApps$Stub;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@1d4
    move-result v38

    #@1d5
    .line 202
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d8
    .line 203
    if-eqz v38, :cond_e

    #@1da
    const/4 v6, 0x1

    #@1db
    :goto_e
    move-object/from16 v0, p3

    #@1dd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1e0
    .line 204
    const/4 v6, 0x1

    #@1e1
    return v6

    #@1e2
    .line 199
    .end local v38    # "_result":Z
    :cond_d
    const/16 v27, 0x0

    #@1e4
    .restart local v27    # "_arg1":Landroid/os/UserHandle;
    goto :goto_d

    #@1e5
    .line 203
    .end local v27    # "_arg1":Landroid/os/UserHandle;
    .restart local v38    # "_result":Z
    :cond_e
    const/4 v6, 0x0

    #@1e6
    goto :goto_e

    #@1e7
    .line 208
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_8
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@1ea
    move-object/from16 v0, p2

    #@1ec
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ef
    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f2
    move-result v6

    #@1f3
    if-eqz v6, :cond_f

    #@1f5
    .line 211
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f7
    move-object/from16 v0, p2

    #@1f9
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1fc
    move-result-object v22

    #@1fd
    check-cast v22, Landroid/content/ComponentName;

    #@1ff
    .line 217
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@202
    move-result v6

    #@203
    if-eqz v6, :cond_10

    #@205
    .line 218
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@207
    move-object/from16 v0, p2

    #@209
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20c
    move-result-object v27

    #@20d
    check-cast v27, Landroid/os/UserHandle;

    #@20f
    .line 223
    :goto_10
    move-object/from16 v0, p0

    #@211
    move-object/from16 v1, v22

    #@213
    move-object/from16 v2, v27

    #@215
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ILauncherApps$Stub;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    #@218
    move-result v38

    #@219
    .line 224
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21c
    .line 225
    if-eqz v38, :cond_11

    #@21e
    const/4 v6, 0x1

    #@21f
    :goto_11
    move-object/from16 v0, p3

    #@221
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@224
    .line 226
    const/4 v6, 0x1

    #@225
    return v6

    #@226
    .line 214
    .end local v38    # "_result":Z
    :cond_f
    const/16 v22, 0x0

    #@228
    .restart local v22    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    #@229
    .line 221
    .end local v22    # "_arg0":Landroid/content/ComponentName;
    :cond_10
    const/16 v27, 0x0

    #@22b
    .restart local v27    # "_arg1":Landroid/os/UserHandle;
    goto :goto_10

    #@22c
    .line 225
    .end local v27    # "_arg1":Landroid/os/UserHandle;
    .restart local v38    # "_result":Z
    :cond_11
    const/4 v6, 0x0

    #@22d
    goto :goto_11

    #@22e
    .line 230
    .end local v38    # "_result":Z
    :sswitch_9
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@231
    move-object/from16 v0, p2

    #@233
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@236
    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@239
    move-result-object v7

    #@23a
    .line 234
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23d
    move-result v24

    #@23e
    .line 236
    .local v24, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@241
    move-result v6

    #@242
    if-eqz v6, :cond_12

    #@244
    .line 237
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@246
    move-object/from16 v0, p2

    #@248
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24b
    move-result-object v29

    #@24c
    check-cast v29, Landroid/os/UserHandle;

    #@24e
    .line 242
    :goto_12
    move-object/from16 v0, p0

    #@250
    move/from16 v1, v24

    #@252
    move-object/from16 v2, v29

    #@254
    invoke-virtual {v0, v7, v1, v2}, Landroid/content/pm/ILauncherApps$Stub;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    #@257
    move-result-object v35

    #@258
    .line 243
    .local v35, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25b
    .line 244
    if-eqz v35, :cond_13

    #@25d
    .line 245
    const/4 v6, 0x1

    #@25e
    move-object/from16 v0, p3

    #@260
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@263
    .line 246
    const/4 v6, 0x1

    #@264
    move-object/from16 v0, v35

    #@266
    move-object/from16 v1, p3

    #@268
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@26b
    .line 251
    :goto_13
    const/4 v6, 0x1

    #@26c
    return v6

    #@26d
    .line 240
    .end local v35    # "_result":Landroid/content/pm/ApplicationInfo;
    :cond_12
    const/16 v29, 0x0

    #@26f
    .local v29, "_arg2":Landroid/os/UserHandle;
    goto :goto_12

    #@270
    .line 249
    .end local v29    # "_arg2":Landroid/os/UserHandle;
    .restart local v35    # "_result":Landroid/content/pm/ApplicationInfo;
    :cond_13
    const/4 v6, 0x0

    #@271
    move-object/from16 v0, p3

    #@273
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@276
    goto :goto_13

    #@277
    .line 255
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg1":I
    .end local v35    # "_result":Landroid/content/pm/ApplicationInfo;
    :sswitch_a
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@27a
    move-object/from16 v0, p2

    #@27c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27f
    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@282
    move-result-object v7

    #@283
    .line 259
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@286
    move-result-wide v8

    #@287
    .line 261
    .local v8, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28a
    move-result-object v10

    #@28b
    .line 263
    .local v10, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ILauncherApps$Stub;->getClass()Ljava/lang/Class;

    #@28e
    move-result-object v6

    #@28f
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@292
    move-result-object v39

    #@293
    .line 264
    .local v39, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    #@295
    move-object/from16 v1, v39

    #@297
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@29a
    move-result-object v11

    #@29b
    .line 266
    .local v11, "_arg3":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29e
    move-result v6

    #@29f
    if-eqz v6, :cond_14

    #@2a1
    .line 267
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a3
    move-object/from16 v0, p2

    #@2a5
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a8
    move-result-object v12

    #@2a9
    check-cast v12, Landroid/content/ComponentName;

    #@2ab
    .line 273
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ae
    move-result v13

    #@2af
    .line 275
    .local v13, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b2
    move-result v6

    #@2b3
    if-eqz v6, :cond_15

    #@2b5
    .line 276
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b7
    move-object/from16 v0, p2

    #@2b9
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2bc
    move-result-object v14

    #@2bd
    check-cast v14, Landroid/os/UserHandle;

    #@2bf
    :goto_15
    move-object/from16 v6, p0

    #@2c1
    .line 281
    invoke-virtual/range {v6 .. v14}, Landroid/content/pm/ILauncherApps$Stub;->getShortcuts(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    #@2c4
    move-result-object v36

    #@2c5
    .line 282
    .restart local v36    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c8
    .line 283
    if-eqz v36, :cond_16

    #@2ca
    .line 284
    const/4 v6, 0x1

    #@2cb
    move-object/from16 v0, p3

    #@2cd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2d0
    .line 285
    const/4 v6, 0x1

    #@2d1
    move-object/from16 v0, v36

    #@2d3
    move-object/from16 v1, p3

    #@2d5
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@2d8
    .line 290
    :goto_16
    const/4 v6, 0x1

    #@2d9
    return v6

    #@2da
    .line 270
    .end local v13    # "_arg5":I
    .end local v36    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_14
    const/4 v12, 0x0

    #@2db
    .local v12, "_arg4":Landroid/content/ComponentName;
    goto :goto_14

    #@2dc
    .line 279
    .end local v12    # "_arg4":Landroid/content/ComponentName;
    .restart local v13    # "_arg5":I
    :cond_15
    const/4 v14, 0x0

    #@2dd
    .local v14, "_arg6":Landroid/os/UserHandle;
    goto :goto_15

    #@2de
    .line 288
    .end local v14    # "_arg6":Landroid/os/UserHandle;
    .restart local v36    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_16
    const/4 v6, 0x0

    #@2df
    move-object/from16 v0, p3

    #@2e1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2e4
    goto :goto_16

    #@2e5
    .line 294
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":J
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg3":Ljava/util/List;
    .end local v13    # "_arg5":I
    .end local v36    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v39    # "cl":Ljava/lang/ClassLoader;
    :sswitch_b
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@2e8
    move-object/from16 v0, p2

    #@2ea
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ed
    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f0
    move-result-object v7

    #@2f1
    .line 298
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f4
    move-result-object v17

    #@2f5
    .line 300
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@2f8
    move-result-object v30

    #@2f9
    .line 302
    .local v30, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2fc
    move-result v6

    #@2fd
    if-eqz v6, :cond_17

    #@2ff
    .line 303
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@301
    move-object/from16 v0, p2

    #@303
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@306
    move-result-object v32

    #@307
    check-cast v32, Landroid/os/UserHandle;

    #@309
    .line 308
    :goto_17
    move-object/from16 v0, p0

    #@30b
    move-object/from16 v1, v17

    #@30d
    move-object/from16 v2, v30

    #@30f
    move-object/from16 v3, v32

    #@311
    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->pinShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    #@314
    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@317
    .line 310
    const/4 v6, 0x1

    #@318
    return v6

    #@319
    .line 306
    :cond_17
    const/16 v32, 0x0

    #@31b
    .restart local v32    # "_arg3":Landroid/os/UserHandle;
    goto :goto_17

    #@31c
    .line 314
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "_arg3":Landroid/os/UserHandle;
    :sswitch_c
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@31f
    move-object/from16 v0, p2

    #@321
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@324
    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@327
    move-result-object v7

    #@328
    .line 318
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32b
    move-result-object v17

    #@32c
    .line 320
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32f
    move-result-object v10

    #@330
    .line 322
    .restart local v10    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@333
    move-result v6

    #@334
    if-eqz v6, :cond_18

    #@336
    .line 323
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@338
    move-object/from16 v0, p2

    #@33a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33d
    move-result-object v19

    #@33e
    check-cast v19, Landroid/graphics/Rect;

    #@340
    .line 329
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@343
    move-result v6

    #@344
    if-eqz v6, :cond_19

    #@346
    .line 330
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@348
    move-object/from16 v0, p2

    #@34a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34d
    move-result-object v20

    #@34e
    check-cast v20, Landroid/os/Bundle;

    #@350
    .line 336
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@353
    move-result v13

    #@354
    .restart local v13    # "_arg5":I
    move-object/from16 v15, p0

    #@356
    move-object/from16 v16, v7

    #@358
    move-object/from16 v18, v10

    #@35a
    move/from16 v21, v13

    #@35c
    .line 337
    invoke-virtual/range {v15 .. v21}, Landroid/content/pm/ILauncherApps$Stub;->startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    #@35f
    move-result v38

    #@360
    .line 338
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@363
    .line 339
    if-eqz v38, :cond_1a

    #@365
    const/4 v6, 0x1

    #@366
    :goto_1a
    move-object/from16 v0, p3

    #@368
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@36b
    .line 340
    const/4 v6, 0x1

    #@36c
    return v6

    #@36d
    .line 326
    .end local v13    # "_arg5":I
    .end local v38    # "_result":Z
    :cond_18
    const/16 v19, 0x0

    #@36f
    .local v19, "_arg3":Landroid/graphics/Rect;
    goto :goto_18

    #@370
    .line 333
    .end local v19    # "_arg3":Landroid/graphics/Rect;
    :cond_19
    const/16 v20, 0x0

    #@372
    .local v20, "_arg4":Landroid/os/Bundle;
    goto :goto_19

    #@373
    .line 339
    .end local v20    # "_arg4":Landroid/os/Bundle;
    .restart local v13    # "_arg5":I
    .restart local v38    # "_result":Z
    :cond_1a
    const/4 v6, 0x0

    #@374
    goto :goto_1a

    #@375
    .line 344
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg5":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_d
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@378
    move-object/from16 v0, p2

    #@37a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37d
    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@380
    move-result-object v7

    #@381
    .line 348
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@384
    move-result-object v17

    #@385
    .line 350
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@388
    move-result-object v10

    #@389
    .line 352
    .restart local v10    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38c
    move-result v31

    #@38d
    .line 353
    .local v31, "_arg3":I
    move-object/from16 v0, p0

    #@38f
    move-object/from16 v1, v17

    #@391
    move/from16 v2, v31

    #@393
    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/content/pm/ILauncherApps$Stub;->getShortcutIconResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    #@396
    move-result v33

    #@397
    .line 354
    .local v33, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39a
    .line 355
    move-object/from16 v0, p3

    #@39c
    move/from16 v1, v33

    #@39e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3a1
    .line 356
    const/4 v6, 0x1

    #@3a2
    return v6

    #@3a3
    .line 360
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg3":I
    .end local v33    # "_result":I
    :sswitch_e
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@3a6
    move-object/from16 v0, p2

    #@3a8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ab
    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3ae
    move-result-object v7

    #@3af
    .line 364
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b2
    move-result-object v17

    #@3b3
    .line 366
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b6
    move-result-object v10

    #@3b7
    .line 368
    .restart local v10    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ba
    move-result v31

    #@3bb
    .line 369
    .restart local v31    # "_arg3":I
    move-object/from16 v0, p0

    #@3bd
    move-object/from16 v1, v17

    #@3bf
    move/from16 v2, v31

    #@3c1
    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/content/pm/ILauncherApps$Stub;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    #@3c4
    move-result-object v37

    #@3c5
    .line 370
    .local v37, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c8
    .line 371
    if-eqz v37, :cond_1b

    #@3ca
    .line 372
    const/4 v6, 0x1

    #@3cb
    move-object/from16 v0, p3

    #@3cd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@3d0
    .line 373
    const/4 v6, 0x1

    #@3d1
    move-object/from16 v0, v37

    #@3d3
    move-object/from16 v1, p3

    #@3d5
    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@3d8
    .line 378
    :goto_1b
    const/4 v6, 0x1

    #@3d9
    return v6

    #@3da
    .line 376
    :cond_1b
    const/4 v6, 0x0

    #@3db
    move-object/from16 v0, p3

    #@3dd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@3e0
    goto :goto_1b

    #@3e1
    .line 382
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg3":I
    .end local v37    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_f
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    #@3e4
    move-object/from16 v0, p2

    #@3e6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e9
    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3ec
    move-result-object v7

    #@3ed
    .line 385
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3ef
    invoke-virtual {v0, v7}, Landroid/content/pm/ILauncherApps$Stub;->hasShortcutHostPermission(Ljava/lang/String;)Z

    #@3f2
    move-result v38

    #@3f3
    .line 386
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f6
    .line 387
    if-eqz v38, :cond_1c

    #@3f8
    const/4 v6, 0x1

    #@3f9
    :goto_1c
    move-object/from16 v0, p3

    #@3fb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@3fe
    .line 388
    const/4 v6, 0x1

    #@3ff
    return v6

    #@400
    .line 387
    :cond_1c
    const/4 v6, 0x0

    #@401
    goto :goto_1c

    #@402
    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
