.class public abstract Landroid/app/IWallpaperManager$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManager"

.field static final TRANSACTION_clearWallpaper:I = 0x7

.field static final TRANSACTION_getHeightHint:I = 0xb

.field static final TRANSACTION_getName:I = 0xd

.field static final TRANSACTION_getWallpaper:I = 0x4

.field static final TRANSACTION_getWallpaperIdForUser:I = 0x5

.field static final TRANSACTION_getWallpaperInfo:I = 0x6

.field static final TRANSACTION_getWidthHint:I = 0xa

.field static final TRANSACTION_hasNamedWallpaper:I = 0x8

.field static final TRANSACTION_isSetWallpaperAllowed:I = 0x10

.field static final TRANSACTION_isWallpaperBackupEligible:I = 0x11

.field static final TRANSACTION_isWallpaperSupported:I = 0xf

.field static final TRANSACTION_setDimensionHints:I = 0x9

.field static final TRANSACTION_setDisplayPadding:I = 0xc

.field static final TRANSACTION_setLockWallpaperCallback:I = 0x12

.field static final TRANSACTION_setWallpaper:I = 0x1

.field static final TRANSACTION_setWallpaperComponent:I = 0x3

.field static final TRANSACTION_setWallpaperComponentChecked:I = 0x2

.field static final TRANSACTION_settingsRestored:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.app.IWallpaperManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.app.IWallpaperManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/IWallpaperManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/app/IWallpaperManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IWallpaperManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/IWallpaperManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 303
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    .line 52
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    .line 54
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 55
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    move-object/from16 v0, p2

    #@2c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v7

    #@30
    check-cast v7, Landroid/graphics/Rect;

    #@32
    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_1

    #@38
    const/4 v8, 0x1

    #@39
    .line 63
    .local v8, "_arg3":Z
    :goto_1
    new-instance v9, Landroid/os/Bundle;

    #@3b
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@3e
    .line 65
    .local v9, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v10

    #@42
    .line 67
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@45
    move-result-object v4

    #@46
    invoke-static {v4}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    #@49
    move-result-object v11

    #@4a
    .line 69
    .local v11, "_arg6":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v12

    #@4e
    .local v12, "_arg7":I
    move-object/from16 v4, p0

    #@50
    .line 70
    invoke-virtual/range {v4 .. v12}, Landroid/app/IWallpaperManager$Stub;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    #@53
    move-result-object v24

    #@54
    .line 71
    .local v24, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@57
    .line 72
    if-eqz v24, :cond_2

    #@59
    .line 73
    const/4 v4, 0x1

    #@5a
    move-object/from16 v0, p3

    #@5c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    .line 74
    const/4 v4, 0x1

    #@60
    move-object/from16 v0, v24

    #@62
    move-object/from16 v1, p3

    #@64
    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@67
    .line 79
    :goto_2
    if-eqz v9, :cond_3

    #@69
    .line 80
    const/4 v4, 0x1

    #@6a
    move-object/from16 v0, p3

    #@6c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    .line 81
    const/4 v4, 0x1

    #@70
    move-object/from16 v0, p3

    #@72
    invoke-virtual {v9, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@75
    .line 86
    :goto_3
    const/4 v4, 0x1

    #@76
    return v4

    #@77
    .line 58
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":Landroid/os/Bundle;
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .end local v12    # "_arg7":I
    .end local v24    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_0
    const/4 v7, 0x0

    #@78
    .local v7, "_arg2":Landroid/graphics/Rect;
    goto :goto_0

    #@79
    .line 61
    .end local v7    # "_arg2":Landroid/graphics/Rect;
    :cond_1
    const/4 v8, 0x0

    #@7a
    .restart local v8    # "_arg3":Z
    goto :goto_1

    #@7b
    .line 77
    .restart local v9    # "_arg4":Landroid/os/Bundle;
    .restart local v10    # "_arg5":I
    .restart local v11    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .restart local v12    # "_arg7":I
    .restart local v24    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_2
    const/4 v4, 0x0

    #@7c
    move-object/from16 v0, p3

    #@7e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@81
    goto :goto_2

    #@82
    .line 84
    :cond_3
    const/4 v4, 0x0

    #@83
    move-object/from16 v0, p3

    #@85
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@88
    goto :goto_3

    #@89
    .line 90
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":Landroid/os/Bundle;
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .end local v12    # "_arg7":I
    .end local v24    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@8c
    move-object/from16 v0, p2

    #@8e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@91
    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@94
    move-result v4

    #@95
    if-eqz v4, :cond_4

    #@97
    .line 93
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@99
    move-object/from16 v0, p2

    #@9b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9e
    move-result-object v15

    #@9f
    check-cast v15, Landroid/content/ComponentName;

    #@a1
    .line 99
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a4
    move-result-object v6

    #@a5
    .line 101
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a8
    move-result v18

    #@a9
    .line 102
    .local v18, "_arg2":I
    move-object/from16 v0, p0

    #@ab
    move/from16 v1, v18

    #@ad
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V

    #@b0
    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b3
    .line 104
    const/4 v4, 0x1

    #@b4
    return v4

    #@b5
    .line 96
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":I
    :cond_4
    const/4 v15, 0x0

    #@b6
    .local v15, "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    #@b7
    .line 108
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@ba
    move-object/from16 v0, p2

    #@bc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bf
    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c2
    move-result v4

    #@c3
    if-eqz v4, :cond_5

    #@c5
    .line 111
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c7
    move-object/from16 v0, p2

    #@c9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cc
    move-result-object v15

    #@cd
    check-cast v15, Landroid/content/ComponentName;

    #@cf
    .line 116
    :goto_5
    move-object/from16 v0, p0

    #@d1
    invoke-virtual {v0, v15}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponent(Landroid/content/ComponentName;)V

    #@d4
    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d7
    .line 118
    const/4 v4, 0x1

    #@d8
    return v4

    #@d9
    .line 114
    :cond_5
    const/4 v15, 0x0

    #@da
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    #@db
    .line 122
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@de
    move-object/from16 v0, p2

    #@e0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e3
    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e6
    move-result-object v4

    #@e7
    invoke-static {v4}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    #@ea
    move-result-object v14

    #@eb
    .line 126
    .local v14, "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ee
    move-result v17

    #@ef
    .line 128
    .local v17, "_arg1":I
    new-instance v19, Landroid/os/Bundle;

    #@f1
    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    #@f4
    .line 130
    .local v19, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f7
    move-result v21

    #@f8
    .line 131
    .local v21, "_arg3":I
    move-object/from16 v0, p0

    #@fa
    move/from16 v1, v17

    #@fc
    move-object/from16 v2, v19

    #@fe
    move/from16 v3, v21

    #@100
    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->getWallpaper(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    #@103
    move-result-object v24

    #@104
    .line 132
    .restart local v24    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@107
    .line 133
    if-eqz v24, :cond_6

    #@109
    .line 134
    const/4 v4, 0x1

    #@10a
    move-object/from16 v0, p3

    #@10c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@10f
    .line 135
    const/4 v4, 0x1

    #@110
    move-object/from16 v0, v24

    #@112
    move-object/from16 v1, p3

    #@114
    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@117
    .line 140
    :goto_6
    if-eqz v19, :cond_7

    #@119
    .line 141
    const/4 v4, 0x1

    #@11a
    move-object/from16 v0, p3

    #@11c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@11f
    .line 142
    const/4 v4, 0x1

    #@120
    move-object/from16 v0, v19

    #@122
    move-object/from16 v1, p3

    #@124
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@127
    .line 147
    :goto_7
    const/4 v4, 0x1

    #@128
    return v4

    #@129
    .line 138
    :cond_6
    const/4 v4, 0x0

    #@12a
    move-object/from16 v0, p3

    #@12c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@12f
    goto :goto_6

    #@130
    .line 145
    :cond_7
    const/4 v4, 0x0

    #@131
    move-object/from16 v0, p3

    #@133
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@136
    goto :goto_7

    #@137
    .line 151
    .end local v14    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v17    # "_arg1":I
    .end local v19    # "_arg2":Landroid/os/Bundle;
    .end local v21    # "_arg3":I
    .end local v24    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_5
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@13a
    move-object/from16 v0, p2

    #@13c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13f
    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@142
    move-result v13

    #@143
    .line 155
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@146
    move-result v17

    #@147
    .line 156
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@149
    move/from16 v1, v17

    #@14b
    invoke-virtual {v0, v13, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperIdForUser(II)I

    #@14e
    move-result v22

    #@14f
    .line 157
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@152
    .line 158
    move-object/from16 v0, p3

    #@154
    move/from16 v1, v22

    #@156
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@159
    .line 159
    const/4 v4, 0x1

    #@15a
    return v4

    #@15b
    .line 163
    .end local v13    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v22    # "_result":I
    :sswitch_6
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@15e
    move-object/from16 v0, p2

    #@160
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@163
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@166
    move-result v13

    #@167
    .line 166
    .restart local v13    # "_arg0":I
    move-object/from16 v0, p0

    #@169
    invoke-virtual {v0, v13}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    #@16c
    move-result-object v23

    #@16d
    .line 167
    .local v23, "_result":Landroid/app/WallpaperInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@170
    .line 168
    if-eqz v23, :cond_8

    #@172
    .line 169
    const/4 v4, 0x1

    #@173
    move-object/from16 v0, p3

    #@175
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@178
    .line 170
    const/4 v4, 0x1

    #@179
    move-object/from16 v0, v23

    #@17b
    move-object/from16 v1, p3

    #@17d
    invoke-virtual {v0, v1, v4}, Landroid/app/WallpaperInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@180
    .line 175
    :goto_8
    const/4 v4, 0x1

    #@181
    return v4

    #@182
    .line 173
    :cond_8
    const/4 v4, 0x0

    #@183
    move-object/from16 v0, p3

    #@185
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@188
    goto :goto_8

    #@189
    .line 179
    .end local v13    # "_arg0":I
    .end local v23    # "_result":Landroid/app/WallpaperInfo;
    :sswitch_7
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@18c
    move-object/from16 v0, p2

    #@18e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@191
    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@194
    move-result-object v5

    #@195
    .line 183
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@198
    move-result v17

    #@199
    .line 185
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19c
    move-result v18

    #@19d
    .line 186
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    #@19f
    move/from16 v1, v17

    #@1a1
    move/from16 v2, v18

    #@1a3
    invoke-virtual {v0, v5, v1, v2}, Landroid/app/IWallpaperManager$Stub;->clearWallpaper(Ljava/lang/String;II)V

    #@1a6
    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a9
    .line 188
    const/4 v4, 0x1

    #@1aa
    return v4

    #@1ab
    .line 192
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    :sswitch_8
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@1ae
    move-object/from16 v0, p2

    #@1b0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b3
    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b6
    move-result-object v5

    #@1b7
    .line 195
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1b9
    invoke-virtual {v0, v5}, Landroid/app/IWallpaperManager$Stub;->hasNamedWallpaper(Ljava/lang/String;)Z

    #@1bc
    move-result v26

    #@1bd
    .line 196
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c0
    .line 197
    if-eqz v26, :cond_9

    #@1c2
    const/4 v4, 0x1

    #@1c3
    :goto_9
    move-object/from16 v0, p3

    #@1c5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c8
    .line 198
    const/4 v4, 0x1

    #@1c9
    return v4

    #@1ca
    .line 197
    :cond_9
    const/4 v4, 0x0

    #@1cb
    goto :goto_9

    #@1cc
    .line 202
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@1cf
    move-object/from16 v0, p2

    #@1d1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d4
    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d7
    move-result v13

    #@1d8
    .line 206
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1db
    move-result v17

    #@1dc
    .line 208
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1df
    move-result-object v20

    #@1e0
    .line 209
    .local v20, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1e2
    move/from16 v1, v17

    #@1e4
    move-object/from16 v2, v20

    #@1e6
    invoke-virtual {v0, v13, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setDimensionHints(IILjava/lang/String;)V

    #@1e9
    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ec
    .line 211
    const/4 v4, 0x1

    #@1ed
    return v4

    #@1ee
    .line 215
    .end local v13    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v20    # "_arg2":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@1f1
    move-object/from16 v0, p2

    #@1f3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f6
    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWidthHint()I

    #@1f9
    move-result v22

    #@1fa
    .line 217
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fd
    .line 218
    move-object/from16 v0, p3

    #@1ff
    move/from16 v1, v22

    #@201
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@204
    .line 219
    const/4 v4, 0x1

    #@205
    return v4

    #@206
    .line 223
    .end local v22    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@209
    move-object/from16 v0, p2

    #@20b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20e
    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getHeightHint()I

    #@211
    move-result v22

    #@212
    .line 225
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@215
    .line 226
    move-object/from16 v0, p3

    #@217
    move/from16 v1, v22

    #@219
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21c
    .line 227
    const/4 v4, 0x1

    #@21d
    return v4

    #@21e
    .line 231
    .end local v22    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@221
    move-object/from16 v0, p2

    #@223
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@226
    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@229
    move-result v4

    #@22a
    if-eqz v4, :cond_a

    #@22c
    .line 234
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22e
    move-object/from16 v0, p2

    #@230
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@233
    move-result-object v16

    #@234
    check-cast v16, Landroid/graphics/Rect;

    #@236
    .line 240
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@239
    move-result-object v6

    #@23a
    .line 241
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@23c
    move-object/from16 v1, v16

    #@23e
    invoke-virtual {v0, v1, v6}, Landroid/app/IWallpaperManager$Stub;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V

    #@241
    .line 242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@244
    .line 243
    const/4 v4, 0x1

    #@245
    return v4

    #@246
    .line 237
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_a
    const/16 v16, 0x0

    #@248
    .local v16, "_arg0":Landroid/graphics/Rect;
    goto :goto_a

    #@249
    .line 247
    .end local v16    # "_arg0":Landroid/graphics/Rect;
    :sswitch_d
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@24c
    move-object/from16 v0, p2

    #@24e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@251
    .line 248
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getName()Ljava/lang/String;

    #@254
    move-result-object v25

    #@255
    .line 249
    .local v25, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@258
    .line 250
    move-object/from16 v0, p3

    #@25a
    move-object/from16 v1, v25

    #@25c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25f
    .line 251
    const/4 v4, 0x1

    #@260
    return v4

    #@261
    .line 255
    .end local v25    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@264
    move-object/from16 v0, p2

    #@266
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@269
    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->settingsRestored()V

    #@26c
    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26f
    .line 258
    const/4 v4, 0x1

    #@270
    return v4

    #@271
    .line 262
    :sswitch_f
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@274
    move-object/from16 v0, p2

    #@276
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@279
    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@27c
    move-result-object v5

    #@27d
    .line 265
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@27f
    invoke-virtual {v0, v5}, Landroid/app/IWallpaperManager$Stub;->isWallpaperSupported(Ljava/lang/String;)Z

    #@282
    move-result v26

    #@283
    .line 266
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@286
    .line 267
    if-eqz v26, :cond_b

    #@288
    const/4 v4, 0x1

    #@289
    :goto_b
    move-object/from16 v0, p3

    #@28b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@28e
    .line 268
    const/4 v4, 0x1

    #@28f
    return v4

    #@290
    .line 267
    :cond_b
    const/4 v4, 0x0

    #@291
    goto :goto_b

    #@292
    .line 272
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_10
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@295
    move-object/from16 v0, p2

    #@297
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29a
    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29d
    move-result-object v5

    #@29e
    .line 275
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2a0
    invoke-virtual {v0, v5}, Landroid/app/IWallpaperManager$Stub;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    #@2a3
    move-result v26

    #@2a4
    .line 276
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a7
    .line 277
    if-eqz v26, :cond_c

    #@2a9
    const/4 v4, 0x1

    #@2aa
    :goto_c
    move-object/from16 v0, p3

    #@2ac
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2af
    .line 278
    const/4 v4, 0x1

    #@2b0
    return v4

    #@2b1
    .line 277
    :cond_c
    const/4 v4, 0x0

    #@2b2
    goto :goto_c

    #@2b3
    .line 282
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@2b6
    move-object/from16 v0, p2

    #@2b8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2bb
    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2be
    move-result v13

    #@2bf
    .line 286
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c2
    move-result v17

    #@2c3
    .line 287
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@2c5
    move/from16 v1, v17

    #@2c7
    invoke-virtual {v0, v13, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupEligible(II)Z

    #@2ca
    move-result v26

    #@2cb
    .line 288
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ce
    .line 289
    if-eqz v26, :cond_d

    #@2d0
    const/4 v4, 0x1

    #@2d1
    :goto_d
    move-object/from16 v0, p3

    #@2d3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2d6
    .line 290
    const/4 v4, 0x1

    #@2d7
    return v4

    #@2d8
    .line 289
    :cond_d
    const/4 v4, 0x0

    #@2d9
    goto :goto_d

    #@2da
    .line 294
    .end local v13    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "android.app.IWallpaperManager"

    #@2dd
    move-object/from16 v0, p2

    #@2df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e2
    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e5
    move-result-object v4

    #@2e6
    invoke-static {v4}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    #@2e9
    move-result-object v14

    #@2ea
    .line 297
    .restart local v14    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    move-object/from16 v0, p0

    #@2ec
    invoke-virtual {v0, v14}, Landroid/app/IWallpaperManager$Stub;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    #@2ef
    move-result v26

    #@2f0
    .line 298
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f3
    .line 299
    if-eqz v26, :cond_e

    #@2f5
    const/4 v4, 0x1

    #@2f6
    :goto_e
    move-object/from16 v0, p3

    #@2f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2fb
    .line 300
    const/4 v4, 0x1

    #@2fc
    return v4

    #@2fd
    .line 299
    :cond_e
    const/4 v4, 0x0

    #@2fe
    goto :goto_e

    #@2ff
    .line 39
    nop

    #@300
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
