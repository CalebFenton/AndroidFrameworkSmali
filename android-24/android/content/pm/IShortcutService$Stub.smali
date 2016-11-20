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

.field static final TRANSACTION_addDynamicShortcuts:I = 0x3

.field static final TRANSACTION_applyRestore:I = 0xf

.field static final TRANSACTION_getBackupPayload:I = 0xe

.field static final TRANSACTION_getDynamicShortcuts:I = 0x2

.field static final TRANSACTION_getIconMaxDimensions:I = 0xb

.field static final TRANSACTION_getMaxDynamicShortcutCount:I = 0x8

.field static final TRANSACTION_getPinnedShortcuts:I = 0x6

.field static final TRANSACTION_getRateLimitResetTime:I = 0xa

.field static final TRANSACTION_getRemainingCallCount:I = 0x9

.field static final TRANSACTION_onApplicationActive:I = 0xd

.field static final TRANSACTION_removeAllDynamicShortcuts:I = 0x5

.field static final TRANSACTION_removeDynamicShortcuts:I = 0x4

.field static final TRANSACTION_resetThrottling:I = 0xc

.field static final TRANSACTION_setDynamicShortcuts:I = 0x1

.field static final TRANSACTION_updateShortcuts:I = 0x7


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
    .locals 17
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
    .line 254
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v16

    #@7
    return v16

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v16

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 46
    const/16 v16, 0x1

    #@14
    return v16

    #@15
    .line 50
    :sswitch_1
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v16

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 54
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v16

    #@27
    if-eqz v16, :cond_0

    #@29
    .line 55
    sget-object v16, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@2b
    move-object/from16 v0, v16

    #@2d
    move-object/from16 v1, p2

    #@2f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32
    move-result-object v6

    #@33
    check-cast v6, Landroid/content/pm/ParceledListSlice;

    #@35
    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v8

    #@39
    .line 62
    .local v8, "_arg2":I
    move-object/from16 v0, p0

    #@3b
    invoke-virtual {v0, v3, v6, v8}, Landroid/content/pm/IShortcutService$Stub;->setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    #@3e
    move-result v13

    #@3f
    .line 63
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@42
    .line 64
    if-eqz v13, :cond_1

    #@44
    const/16 v16, 0x1

    #@46
    :goto_1
    move-object/from16 v0, p3

    #@48
    move/from16 v1, v16

    #@4a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 65
    const/16 v16, 0x1

    #@4f
    return v16

    #@50
    .line 58
    .end local v8    # "_arg2":I
    .end local v13    # "_result":Z
    :cond_0
    const/4 v6, 0x0

    #@51
    .local v6, "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    #@52
    .line 64
    .end local v6    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .restart local v8    # "_arg2":I
    .restart local v13    # "_result":Z
    :cond_1
    const/16 v16, 0x0

    #@54
    goto :goto_1

    #@55
    .line 69
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v13    # "_result":Z
    :sswitch_2
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@58
    move-object/from16 v0, p2

    #@5a
    move-object/from16 v1, v16

    #@5c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f
    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    .line 73
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v5

    #@67
    .line 74
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    #@69
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/IShortcutService$Stub;->getDynamicShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@6c
    move-result-object v12

    #@6d
    .line 75
    .local v12, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@70
    .line 76
    if-eqz v12, :cond_2

    #@72
    .line 77
    const/16 v16, 0x1

    #@74
    move-object/from16 v0, p3

    #@76
    move/from16 v1, v16

    #@78
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7b
    .line 78
    const/16 v16, 0x1

    #@7d
    move-object/from16 v0, p3

    #@7f
    move/from16 v1, v16

    #@81
    invoke-virtual {v12, v0, v1}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@84
    .line 83
    :goto_2
    const/16 v16, 0x1

    #@86
    return v16

    #@87
    .line 81
    :cond_2
    const/16 v16, 0x0

    #@89
    move-object/from16 v0, p3

    #@8b
    move/from16 v1, v16

    #@8d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@90
    goto :goto_2

    #@91
    .line 87
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v12    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_3
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@94
    move-object/from16 v0, p2

    #@96
    move-object/from16 v1, v16

    #@98
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b
    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9e
    move-result-object v3

    #@9f
    .line 91
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a2
    move-result v16

    #@a3
    if-eqz v16, :cond_3

    #@a5
    .line 92
    sget-object v16, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@a7
    move-object/from16 v0, v16

    #@a9
    move-object/from16 v1, p2

    #@ab
    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ae
    move-result-object v6

    #@af
    check-cast v6, Landroid/content/pm/ParceledListSlice;

    #@b1
    .line 98
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b4
    move-result v8

    #@b5
    .line 99
    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    #@b7
    invoke-virtual {v0, v3, v6, v8}, Landroid/content/pm/IShortcutService$Stub;->addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    #@ba
    move-result v13

    #@bb
    .line 100
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@be
    .line 101
    if-eqz v13, :cond_4

    #@c0
    const/16 v16, 0x1

    #@c2
    :goto_4
    move-object/from16 v0, p3

    #@c4
    move/from16 v1, v16

    #@c6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c9
    .line 102
    const/16 v16, 0x1

    #@cb
    return v16

    #@cc
    .line 95
    .end local v8    # "_arg2":I
    .end local v13    # "_result":Z
    :cond_3
    const/4 v6, 0x0

    #@cd
    .restart local v6    # "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_3

    #@ce
    .line 101
    .end local v6    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .restart local v8    # "_arg2":I
    .restart local v13    # "_result":Z
    :cond_4
    const/16 v16, 0x0

    #@d0
    goto :goto_4

    #@d1
    .line 106
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v13    # "_result":Z
    :sswitch_4
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@d4
    move-object/from16 v0, p2

    #@d6
    move-object/from16 v1, v16

    #@d8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@db
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@de
    move-result-object v3

    #@df
    .line 110
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->getClass()Ljava/lang/Class;

    #@e2
    move-result-object v16

    #@e3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@e6
    move-result-object v15

    #@e7
    .line 111
    .local v15, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    #@e9
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@ec
    move-result-object v7

    #@ed
    .line 113
    .local v7, "_arg1":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f0
    move-result v8

    #@f1
    .line 114
    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    #@f3
    invoke-virtual {v0, v3, v7, v8}, Landroid/content/pm/IShortcutService$Stub;->removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    #@f6
    .line 115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f9
    .line 116
    const/16 v16, 0x1

    #@fb
    return v16

    #@fc
    .line 120
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/util/List;
    .end local v8    # "_arg2":I
    .end local v15    # "cl":Ljava/lang/ClassLoader;
    :sswitch_5
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@ff
    move-object/from16 v0, p2

    #@101
    move-object/from16 v1, v16

    #@103
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@106
    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@109
    move-result-object v3

    #@10a
    .line 124
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10d
    move-result v5

    #@10e
    .line 125
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@110
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/IShortcutService$Stub;->removeAllDynamicShortcuts(Ljava/lang/String;I)V

    #@113
    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@116
    .line 127
    const/16 v16, 0x1

    #@118
    return v16

    #@119
    .line 131
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_6
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@11c
    move-object/from16 v0, p2

    #@11e
    move-object/from16 v1, v16

    #@120
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@123
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@126
    move-result-object v3

    #@127
    .line 135
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12a
    move-result v5

    #@12b
    .line 136
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@12d
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/IShortcutService$Stub;->getPinnedShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@130
    move-result-object v12

    #@131
    .line 137
    .restart local v12    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@134
    .line 138
    if-eqz v12, :cond_5

    #@136
    .line 139
    const/16 v16, 0x1

    #@138
    move-object/from16 v0, p3

    #@13a
    move/from16 v1, v16

    #@13c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13f
    .line 140
    const/16 v16, 0x1

    #@141
    move-object/from16 v0, p3

    #@143
    move/from16 v1, v16

    #@145
    invoke-virtual {v12, v0, v1}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@148
    .line 145
    :goto_5
    const/16 v16, 0x1

    #@14a
    return v16

    #@14b
    .line 143
    :cond_5
    const/16 v16, 0x0

    #@14d
    move-object/from16 v0, p3

    #@14f
    move/from16 v1, v16

    #@151
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@154
    goto :goto_5

    #@155
    .line 149
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v12    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_7
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@158
    move-object/from16 v0, p2

    #@15a
    move-object/from16 v1, v16

    #@15c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15f
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@162
    move-result-object v3

    #@163
    .line 153
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@166
    move-result v16

    #@167
    if-eqz v16, :cond_6

    #@169
    .line 154
    sget-object v16, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@16b
    move-object/from16 v0, v16

    #@16d
    move-object/from16 v1, p2

    #@16f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@172
    move-result-object v6

    #@173
    check-cast v6, Landroid/content/pm/ParceledListSlice;

    #@175
    .line 160
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@178
    move-result v8

    #@179
    .line 161
    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    #@17b
    invoke-virtual {v0, v3, v6, v8}, Landroid/content/pm/IShortcutService$Stub;->updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    #@17e
    move-result v13

    #@17f
    .line 162
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@182
    .line 163
    if-eqz v13, :cond_7

    #@184
    const/16 v16, 0x1

    #@186
    :goto_7
    move-object/from16 v0, p3

    #@188
    move/from16 v1, v16

    #@18a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@18d
    .line 164
    const/16 v16, 0x1

    #@18f
    return v16

    #@190
    .line 157
    .end local v8    # "_arg2":I
    .end local v13    # "_result":Z
    :cond_6
    const/4 v6, 0x0

    #@191
    .restart local v6    # "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_6

    #@192
    .line 163
    .end local v6    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .restart local v8    # "_arg2":I
    .restart local v13    # "_result":Z
    :cond_7
    const/16 v16, 0x0

    #@194
    goto :goto_7

    #@195
    .line 168
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v13    # "_result":Z
    :sswitch_8
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@198
    move-object/from16 v0, p2

    #@19a
    move-object/from16 v1, v16

    #@19c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19f
    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a2
    move-result-object v3

    #@1a3
    .line 172
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a6
    move-result v5

    #@1a7
    .line 173
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@1a9
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/IShortcutService$Stub;->getMaxDynamicShortcutCount(Ljava/lang/String;I)I

    #@1ac
    move-result v9

    #@1ad
    .line 174
    .local v9, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b0
    .line 175
    move-object/from16 v0, p3

    #@1b2
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@1b5
    .line 176
    const/16 v16, 0x1

    #@1b7
    return v16

    #@1b8
    .line 180
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v9    # "_result":I
    :sswitch_9
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@1bb
    move-object/from16 v0, p2

    #@1bd
    move-object/from16 v1, v16

    #@1bf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c2
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c5
    move-result-object v3

    #@1c6
    .line 184
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c9
    move-result v5

    #@1ca
    .line 185
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@1cc
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/IShortcutService$Stub;->getRemainingCallCount(Ljava/lang/String;I)I

    #@1cf
    move-result v9

    #@1d0
    .line 186
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d3
    .line 187
    move-object/from16 v0, p3

    #@1d5
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@1d8
    .line 188
    const/16 v16, 0x1

    #@1da
    return v16

    #@1db
    .line 192
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v9    # "_result":I
    :sswitch_a
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@1de
    move-object/from16 v0, p2

    #@1e0
    move-object/from16 v1, v16

    #@1e2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e5
    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e8
    move-result-object v3

    #@1e9
    .line 196
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ec
    move-result v5

    #@1ed
    .line 197
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@1ef
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/IShortcutService$Stub;->getRateLimitResetTime(Ljava/lang/String;I)J

    #@1f2
    move-result-wide v10

    #@1f3
    .line 198
    .local v10, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f6
    .line 199
    move-object/from16 v0, p3

    #@1f8
    invoke-virtual {v0, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@1fb
    .line 200
    const/16 v16, 0x1

    #@1fd
    return v16

    #@1fe
    .line 204
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v10    # "_result":J
    :sswitch_b
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@201
    move-object/from16 v0, p2

    #@203
    move-object/from16 v1, v16

    #@205
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@208
    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20b
    move-result-object v3

    #@20c
    .line 208
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20f
    move-result v5

    #@210
    .line 209
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@212
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/IShortcutService$Stub;->getIconMaxDimensions(Ljava/lang/String;I)I

    #@215
    move-result v9

    #@216
    .line 210
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@219
    .line 211
    move-object/from16 v0, p3

    #@21b
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@21e
    .line 212
    const/16 v16, 0x1

    #@220
    return v16

    #@221
    .line 216
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v9    # "_result":I
    :sswitch_c
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@224
    move-object/from16 v0, p2

    #@226
    move-object/from16 v1, v16

    #@228
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22b
    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->resetThrottling()V

    #@22e
    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@231
    .line 219
    const/16 v16, 0x1

    #@233
    return v16

    #@234
    .line 223
    :sswitch_d
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@237
    move-object/from16 v0, p2

    #@239
    move-object/from16 v1, v16

    #@23b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23e
    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@241
    move-result-object v3

    #@242
    .line 227
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@245
    move-result v5

    #@246
    .line 228
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@248
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/IShortcutService$Stub;->onApplicationActive(Ljava/lang/String;I)V

    #@24b
    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24e
    .line 230
    const/16 v16, 0x1

    #@250
    return v16

    #@251
    .line 234
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_e
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@254
    move-object/from16 v0, p2

    #@256
    move-object/from16 v1, v16

    #@258
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25b
    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25e
    move-result v2

    #@25f
    .line 237
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    #@261
    invoke-virtual {v0, v2}, Landroid/content/pm/IShortcutService$Stub;->getBackupPayload(I)[B

    #@264
    move-result-object v14

    #@265
    .line 238
    .local v14, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@268
    .line 239
    move-object/from16 v0, p3

    #@26a
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeByteArray([B)V

    #@26d
    .line 240
    const/16 v16, 0x1

    #@26f
    return v16

    #@270
    .line 244
    .end local v2    # "_arg0":I
    .end local v14    # "_result":[B
    :sswitch_f
    const-string/jumbo v16, "android.content.pm.IShortcutService"

    #@273
    move-object/from16 v0, p2

    #@275
    move-object/from16 v1, v16

    #@277
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27a
    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@27d
    move-result-object v4

    #@27e
    .line 248
    .local v4, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@281
    move-result v5

    #@282
    .line 249
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@284
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IShortcutService$Stub;->applyRestore([BI)V

    #@287
    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28a
    .line 251
    const/16 v16, 0x1

    #@28c
    return v16

    #@28d
    .line 41
    nop

    #@28e
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
