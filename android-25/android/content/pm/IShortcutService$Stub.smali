.class public abstract Landroid/content/pm/IShortcutService$Stub;
.super Landroid/os/Binder;
.source "IShortcutService.java"

# interfaces
.implements Landroid/content/pm/IShortcutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IShortcutService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IShortcutService"

.field static final TRANSACTION_addDynamicShortcuts:I = 0x4

.field static final TRANSACTION_applyRestore:I = 0x13

.field static final TRANSACTION_disableShortcuts:I = 0x9

.field static final TRANSACTION_enableShortcuts:I = 0xa

.field static final TRANSACTION_getBackupPayload:I = 0x12

.field static final TRANSACTION_getDynamicShortcuts:I = 0x2

.field static final TRANSACTION_getIconMaxDimensions:I = 0xe

.field static final TRANSACTION_getManifestShortcuts:I = 0x3

.field static final TRANSACTION_getMaxShortcutCountPerActivity:I = 0xb

.field static final TRANSACTION_getPinnedShortcuts:I = 0x7

.field static final TRANSACTION_getRateLimitResetTime:I = 0xd

.field static final TRANSACTION_getRemainingCallCount:I = 0xc

.field static final TRANSACTION_onApplicationActive:I = 0x11

.field static final TRANSACTION_removeAllDynamicShortcuts:I = 0x6

.field static final TRANSACTION_removeDynamicShortcuts:I = 0x5

.field static final TRANSACTION_reportShortcutUsed:I = 0xf

.field static final TRANSACTION_resetThrottling:I = 0x10

.field static final TRANSACTION_setDynamicShortcuts:I = 0x1

.field static final TRANSACTION_updateShortcuts:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.content.pm.IShortcutService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IShortcutService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;
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
    const-string/jumbo v1, "android.content.pm.IShortcutService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/pm/IShortcutService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/content/pm/IShortcutService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IShortcutService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/pm/IShortcutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 23
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
    .line 322
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    .line 54
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_0

    #@24
    .line 55
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@26
    move-object/from16 v0, p2

    #@28
    invoke-interface {v4, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b
    move-result-object v13

    #@2c
    check-cast v13, Landroid/content/pm/ParceledListSlice;

    #@2e
    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v15

    #@32
    .line 62
    .local v15, "_arg2":I
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v5, v13, v15}, Landroid/content/pm/IShortcutService$Stub;->setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    #@37
    move-result v20

    #@38
    .line 63
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b
    .line 64
    if-eqz v20, :cond_1

    #@3d
    const/4 v4, 0x1

    #@3e
    :goto_1
    move-object/from16 v0, p3

    #@40
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 65
    const/4 v4, 0x1

    #@44
    return v4

    #@45
    .line 58
    .end local v15    # "_arg2":I
    .end local v20    # "_result":Z
    :cond_0
    const/4 v13, 0x0

    #@46
    .local v13, "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    #@47
    .line 64
    .end local v13    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .restart local v15    # "_arg2":I
    .restart local v20    # "_result":Z
    :cond_1
    const/4 v4, 0x0

    #@48
    goto :goto_1

    #@49
    .line 69
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v20    # "_result":Z
    :sswitch_2
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@4c
    move-object/from16 v0, p2

    #@4e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51
    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    .line 73
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v12

    #@59
    .line 74
    .local v12, "_arg1":I
    move-object/from16 v0, p0

    #@5b
    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->getDynamicShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@5e
    move-result-object v17

    #@5f
    .line 75
    .local v17, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@62
    .line 76
    if-eqz v17, :cond_2

    #@64
    .line 77
    const/4 v4, 0x1

    #@65
    move-object/from16 v0, p3

    #@67
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    .line 78
    const/4 v4, 0x1

    #@6b
    move-object/from16 v0, v17

    #@6d
    move-object/from16 v1, p3

    #@6f
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@72
    .line 83
    :goto_2
    const/4 v4, 0x1

    #@73
    return v4

    #@74
    .line 81
    :cond_2
    const/4 v4, 0x0

    #@75
    move-object/from16 v0, p3

    #@77
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7a
    goto :goto_2

    #@7b
    .line 87
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_3
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@7e
    move-object/from16 v0, p2

    #@80
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83
    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@86
    move-result-object v5

    #@87
    .line 91
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8a
    move-result v12

    #@8b
    .line 92
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@8d
    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->getManifestShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@90
    move-result-object v17

    #@91
    .line 93
    .restart local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@94
    .line 94
    if-eqz v17, :cond_3

    #@96
    .line 95
    const/4 v4, 0x1

    #@97
    move-object/from16 v0, p3

    #@99
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9c
    .line 96
    const/4 v4, 0x1

    #@9d
    move-object/from16 v0, v17

    #@9f
    move-object/from16 v1, p3

    #@a1
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@a4
    .line 101
    :goto_3
    const/4 v4, 0x1

    #@a5
    return v4

    #@a6
    .line 99
    :cond_3
    const/4 v4, 0x0

    #@a7
    move-object/from16 v0, p3

    #@a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@ac
    goto :goto_3

    #@ad
    .line 105
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_4
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@b0
    move-object/from16 v0, p2

    #@b2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b8
    move-result-object v5

    #@b9
    .line 109
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bc
    move-result v4

    #@bd
    if-eqz v4, :cond_4

    #@bf
    .line 110
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@c1
    move-object/from16 v0, p2

    #@c3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c6
    move-result-object v13

    #@c7
    check-cast v13, Landroid/content/pm/ParceledListSlice;

    #@c9
    .line 116
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cc
    move-result v15

    #@cd
    .line 117
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    #@cf
    invoke-virtual {v0, v5, v13, v15}, Landroid/content/pm/IShortcutService$Stub;->addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    #@d2
    move-result v20

    #@d3
    .line 118
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d6
    .line 119
    if-eqz v20, :cond_5

    #@d8
    const/4 v4, 0x1

    #@d9
    :goto_5
    move-object/from16 v0, p3

    #@db
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@de
    .line 120
    const/4 v4, 0x1

    #@df
    return v4

    #@e0
    .line 113
    .end local v15    # "_arg2":I
    .end local v20    # "_result":Z
    :cond_4
    const/4 v13, 0x0

    #@e1
    .restart local v13    # "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_4

    #@e2
    .line 119
    .end local v13    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .restart local v15    # "_arg2":I
    .restart local v20    # "_result":Z
    :cond_5
    const/4 v4, 0x0

    #@e3
    goto :goto_5

    #@e4
    .line 124
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v20    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@e7
    move-object/from16 v0, p2

    #@e9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ec
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ef
    move-result-object v5

    #@f0
    .line 128
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->getClass()Ljava/lang/Class;

    #@f3
    move-result-object v4

    #@f4
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@f7
    move-result-object v22

    #@f8
    .line 129
    .local v22, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    #@fa
    move-object/from16 v1, v22

    #@fc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@ff
    move-result-object v6

    #@100
    .line 131
    .local v6, "_arg1":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@103
    move-result v15

    #@104
    .line 132
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    #@106
    invoke-virtual {v0, v5, v6, v15}, Landroid/content/pm/IShortcutService$Stub;->removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    #@109
    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10c
    .line 134
    const/4 v4, 0x1

    #@10d
    return v4

    #@10e
    .line 138
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/util/List;
    .end local v15    # "_arg2":I
    .end local v22    # "cl":Ljava/lang/ClassLoader;
    :sswitch_6
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@111
    move-object/from16 v0, p2

    #@113
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@116
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@119
    move-result-object v5

    #@11a
    .line 142
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11d
    move-result v12

    #@11e
    .line 143
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@120
    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->removeAllDynamicShortcuts(Ljava/lang/String;I)V

    #@123
    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@126
    .line 145
    const/4 v4, 0x1

    #@127
    return v4

    #@128
    .line 149
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    :sswitch_7
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@12b
    move-object/from16 v0, p2

    #@12d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@130
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@133
    move-result-object v5

    #@134
    .line 153
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@137
    move-result v12

    #@138
    .line 154
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@13a
    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->getPinnedShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@13d
    move-result-object v17

    #@13e
    .line 155
    .restart local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@141
    .line 156
    if-eqz v17, :cond_6

    #@143
    .line 157
    const/4 v4, 0x1

    #@144
    move-object/from16 v0, p3

    #@146
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@149
    .line 158
    const/4 v4, 0x1

    #@14a
    move-object/from16 v0, v17

    #@14c
    move-object/from16 v1, p3

    #@14e
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@151
    .line 163
    :goto_6
    const/4 v4, 0x1

    #@152
    return v4

    #@153
    .line 161
    :cond_6
    const/4 v4, 0x0

    #@154
    move-object/from16 v0, p3

    #@156
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@159
    goto :goto_6

    #@15a
    .line 167
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_8
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@15d
    move-object/from16 v0, p2

    #@15f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@162
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@165
    move-result-object v5

    #@166
    .line 171
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@169
    move-result v4

    #@16a
    if-eqz v4, :cond_7

    #@16c
    .line 172
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@16e
    move-object/from16 v0, p2

    #@170
    invoke-interface {v4, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@173
    move-result-object v13

    #@174
    check-cast v13, Landroid/content/pm/ParceledListSlice;

    #@176
    .line 178
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@179
    move-result v15

    #@17a
    .line 179
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    #@17c
    invoke-virtual {v0, v5, v13, v15}, Landroid/content/pm/IShortcutService$Stub;->updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    #@17f
    move-result v20

    #@180
    .line 180
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@183
    .line 181
    if-eqz v20, :cond_8

    #@185
    const/4 v4, 0x1

    #@186
    :goto_8
    move-object/from16 v0, p3

    #@188
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@18b
    .line 182
    const/4 v4, 0x1

    #@18c
    return v4

    #@18d
    .line 175
    .end local v15    # "_arg2":I
    .end local v20    # "_result":Z
    :cond_7
    const/4 v13, 0x0

    #@18e
    .restart local v13    # "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_7

    #@18f
    .line 181
    .end local v13    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .restart local v15    # "_arg2":I
    .restart local v20    # "_result":Z
    :cond_8
    const/4 v4, 0x0

    #@190
    goto :goto_8

    #@191
    .line 186
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v20    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@194
    move-object/from16 v0, p2

    #@196
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@199
    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19c
    move-result-object v5

    #@19d
    .line 190
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->getClass()Ljava/lang/Class;

    #@1a0
    move-result-object v4

    #@1a1
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1a4
    move-result-object v22

    #@1a5
    .line 191
    .restart local v22    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    #@1a7
    move-object/from16 v1, v22

    #@1a9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@1ac
    move-result-object v6

    #@1ad
    .line 193
    .restart local v6    # "_arg1":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b0
    move-result v4

    #@1b1
    if-eqz v4, :cond_9

    #@1b3
    .line 194
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@1b5
    move-object/from16 v0, p2

    #@1b7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ba
    move-result-object v7

    #@1bb
    check-cast v7, Ljava/lang/CharSequence;

    #@1bd
    .line 200
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c0
    move-result v8

    #@1c1
    .line 202
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c4
    move-result v9

    #@1c5
    .local v9, "_arg4":I
    move-object/from16 v4, p0

    #@1c7
    .line 203
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IShortcutService$Stub;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V

    #@1ca
    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cd
    .line 205
    const/4 v4, 0x1

    #@1ce
    return v4

    #@1cf
    .line 197
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :cond_9
    const/4 v7, 0x0

    #@1d0
    .local v7, "_arg2":Ljava/lang/CharSequence;
    goto :goto_9

    #@1d1
    .line 209
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/util/List;
    .end local v7    # "_arg2":Ljava/lang/CharSequence;
    .end local v22    # "cl":Ljava/lang/ClassLoader;
    :sswitch_a
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@1d4
    move-object/from16 v0, p2

    #@1d6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d9
    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1dc
    move-result-object v5

    #@1dd
    .line 213
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->getClass()Ljava/lang/Class;

    #@1e0
    move-result-object v4

    #@1e1
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1e4
    move-result-object v22

    #@1e5
    .line 214
    .restart local v22    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    #@1e7
    move-object/from16 v1, v22

    #@1e9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@1ec
    move-result-object v6

    #@1ed
    .line 216
    .restart local v6    # "_arg1":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f0
    move-result v15

    #@1f1
    .line 217
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    #@1f3
    invoke-virtual {v0, v5, v6, v15}, Landroid/content/pm/IShortcutService$Stub;->enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    #@1f6
    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f9
    .line 219
    const/4 v4, 0x1

    #@1fa
    return v4

    #@1fb
    .line 223
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/util/List;
    .end local v15    # "_arg2":I
    .end local v22    # "cl":Ljava/lang/ClassLoader;
    :sswitch_b
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@1fe
    move-object/from16 v0, p2

    #@200
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@203
    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@206
    move-result-object v5

    #@207
    .line 227
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20a
    move-result v12

    #@20b
    .line 228
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@20d
    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->getMaxShortcutCountPerActivity(Ljava/lang/String;I)I

    #@210
    move-result v16

    #@211
    .line 229
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@214
    .line 230
    move-object/from16 v0, p3

    #@216
    move/from16 v1, v16

    #@218
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21b
    .line 231
    const/4 v4, 0x1

    #@21c
    return v4

    #@21d
    .line 235
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v16    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@220
    move-object/from16 v0, p2

    #@222
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@225
    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@228
    move-result-object v5

    #@229
    .line 239
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22c
    move-result v12

    #@22d
    .line 240
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@22f
    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->getRemainingCallCount(Ljava/lang/String;I)I

    #@232
    move-result v16

    #@233
    .line 241
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@236
    .line 242
    move-object/from16 v0, p3

    #@238
    move/from16 v1, v16

    #@23a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23d
    .line 243
    const/4 v4, 0x1

    #@23e
    return v4

    #@23f
    .line 247
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v16    # "_result":I
    :sswitch_d
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@242
    move-object/from16 v0, p2

    #@244
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@247
    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24a
    move-result-object v5

    #@24b
    .line 251
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24e
    move-result v12

    #@24f
    .line 252
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@251
    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->getRateLimitResetTime(Ljava/lang/String;I)J

    #@254
    move-result-wide v18

    #@255
    .line 253
    .local v18, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@258
    .line 254
    move-object/from16 v0, p3

    #@25a
    move-wide/from16 v1, v18

    #@25c
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@25f
    .line 255
    const/4 v4, 0x1

    #@260
    return v4

    #@261
    .line 259
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v18    # "_result":J
    :sswitch_e
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@264
    move-object/from16 v0, p2

    #@266
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@269
    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26c
    move-result-object v5

    #@26d
    .line 263
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@270
    move-result v12

    #@271
    .line 264
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@273
    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->getIconMaxDimensions(Ljava/lang/String;I)I

    #@276
    move-result v16

    #@277
    .line 265
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27a
    .line 266
    move-object/from16 v0, p3

    #@27c
    move/from16 v1, v16

    #@27e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@281
    .line 267
    const/4 v4, 0x1

    #@282
    return v4

    #@283
    .line 271
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v16    # "_result":I
    :sswitch_f
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@286
    move-object/from16 v0, p2

    #@288
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28b
    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28e
    move-result-object v5

    #@28f
    .line 275
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@292
    move-result-object v14

    #@293
    .line 277
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@296
    move-result v15

    #@297
    .line 278
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    #@299
    invoke-virtual {v0, v5, v14, v15}, Landroid/content/pm/IShortcutService$Stub;->reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V

    #@29c
    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29f
    .line 280
    const/4 v4, 0x1

    #@2a0
    return v4

    #@2a1
    .line 284
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    :sswitch_10
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@2a4
    move-object/from16 v0, p2

    #@2a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a9
    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->resetThrottling()V

    #@2ac
    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2af
    .line 287
    const/4 v4, 0x1

    #@2b0
    return v4

    #@2b1
    .line 291
    :sswitch_11
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@2b4
    move-object/from16 v0, p2

    #@2b6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b9
    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2bc
    move-result-object v5

    #@2bd
    .line 295
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c0
    move-result v12

    #@2c1
    .line 296
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@2c3
    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->onApplicationActive(Ljava/lang/String;I)V

    #@2c6
    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c9
    .line 298
    const/4 v4, 0x1

    #@2ca
    return v4

    #@2cb
    .line 302
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    :sswitch_12
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@2ce
    move-object/from16 v0, p2

    #@2d0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d3
    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d6
    move-result v10

    #@2d7
    .line 305
    .local v10, "_arg0":I
    move-object/from16 v0, p0

    #@2d9
    invoke-virtual {v0, v10}, Landroid/content/pm/IShortcutService$Stub;->getBackupPayload(I)[B

    #@2dc
    move-result-object v21

    #@2dd
    .line 306
    .local v21, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e0
    .line 307
    move-object/from16 v0, p3

    #@2e2
    move-object/from16 v1, v21

    #@2e4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@2e7
    .line 308
    const/4 v4, 0x1

    #@2e8
    return v4

    #@2e9
    .line 312
    .end local v10    # "_arg0":I
    .end local v21    # "_result":[B
    :sswitch_13
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    #@2ec
    move-object/from16 v0, p2

    #@2ee
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f1
    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@2f4
    move-result-object v11

    #@2f5
    .line 316
    .local v11, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f8
    move-result v12

    #@2f9
    .line 317
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@2fb
    invoke-virtual {v0, v11, v12}, Landroid/content/pm/IShortcutService$Stub;->applyRestore([BI)V

    #@2fe
    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@301
    .line 319
    const/4 v4, 0x1

    #@302
    return v4

    #@303
    .line 41
    nop

    #@304
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
