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
    .locals 25
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
    .line 295
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 52
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    .line 54
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 55
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    move-object/from16 v0, p2

    #@2c
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v6

    #@30
    check-cast v6, Landroid/graphics/Rect;

    #@32
    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_1

    #@38
    const/4 v7, 0x1

    #@39
    .line 63
    .local v7, "_arg3":Z
    :goto_1
    new-instance v8, Landroid/os/Bundle;

    #@3b
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    #@3e
    .line 65
    .local v8, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v9

    #@42
    .line 67
    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@45
    move-result-object v3

    #@46
    invoke-static {v3}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    #@49
    move-result-object v10

    #@4a
    .local v10, "_arg6":Landroid/app/IWallpaperManagerCallback;
    move-object/from16 v3, p0

    #@4c
    .line 68
    invoke-virtual/range {v3 .. v10}, Landroid/app/IWallpaperManager$Stub;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;)Landroid/os/ParcelFileDescriptor;

    #@4f
    move-result-object v22

    #@50
    .line 69
    .local v22, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@53
    .line 70
    if-eqz v22, :cond_2

    #@55
    .line 71
    const/4 v3, 0x1

    #@56
    move-object/from16 v0, p3

    #@58
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    .line 72
    const/4 v3, 0x1

    #@5c
    move-object/from16 v0, v22

    #@5e
    move-object/from16 v1, p3

    #@60
    invoke-virtual {v0, v1, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@63
    .line 77
    :goto_2
    if-eqz v8, :cond_3

    #@65
    .line 78
    const/4 v3, 0x1

    #@66
    move-object/from16 v0, p3

    #@68
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    .line 79
    const/4 v3, 0x1

    #@6c
    move-object/from16 v0, p3

    #@6e
    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@71
    .line 84
    :goto_3
    const/4 v3, 0x1

    #@72
    return v3

    #@73
    .line 58
    .end local v7    # "_arg3":Z
    .end local v8    # "_arg4":Landroid/os/Bundle;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .end local v22    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_0
    const/4 v6, 0x0

    #@74
    .local v6, "_arg2":Landroid/graphics/Rect;
    goto :goto_0

    #@75
    .line 61
    .end local v6    # "_arg2":Landroid/graphics/Rect;
    :cond_1
    const/4 v7, 0x0

    #@76
    .restart local v7    # "_arg3":Z
    goto :goto_1

    #@77
    .line 75
    .restart local v8    # "_arg4":Landroid/os/Bundle;
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .restart local v22    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_2
    const/4 v3, 0x0

    #@78
    move-object/from16 v0, p3

    #@7a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7d
    goto :goto_2

    #@7e
    .line 82
    :cond_3
    const/4 v3, 0x0

    #@7f
    move-object/from16 v0, p3

    #@81
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@84
    goto :goto_3

    #@85
    .line 88
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v8    # "_arg4":Landroid/os/Bundle;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .end local v22    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@88
    move-object/from16 v0, p2

    #@8a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d
    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@90
    move-result v3

    #@91
    if-eqz v3, :cond_4

    #@93
    .line 91
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@95
    move-object/from16 v0, p2

    #@97
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9a
    move-result-object v13

    #@9b
    check-cast v13, Landroid/content/ComponentName;

    #@9d
    .line 97
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a0
    move-result-object v5

    #@a1
    .line 98
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a3
    invoke-virtual {v0, v13, v5}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@a6
    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a9
    .line 100
    const/4 v3, 0x1

    #@aa
    return v3

    #@ab
    .line 94
    .end local v5    # "_arg1":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    #@ac
    .local v13, "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    #@ad
    .line 104
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@b0
    move-object/from16 v0, p2

    #@b2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b8
    move-result v3

    #@b9
    if-eqz v3, :cond_5

    #@bb
    .line 107
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bd
    move-object/from16 v0, p2

    #@bf
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c2
    move-result-object v13

    #@c3
    check-cast v13, Landroid/content/ComponentName;

    #@c5
    .line 112
    :goto_5
    move-object/from16 v0, p0

    #@c7
    invoke-virtual {v0, v13}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponent(Landroid/content/ComponentName;)V

    #@ca
    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cd
    .line 114
    const/4 v3, 0x1

    #@ce
    return v3

    #@cf
    .line 110
    :cond_5
    const/4 v13, 0x0

    #@d0
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    #@d1
    .line 118
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@d4
    move-object/from16 v0, p2

    #@d6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d9
    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@dc
    move-result-object v3

    #@dd
    invoke-static {v3}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    #@e0
    move-result-object v12

    #@e1
    .line 122
    .local v12, "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e4
    move-result v15

    #@e5
    .line 124
    .local v15, "_arg1":I
    new-instance v17, Landroid/os/Bundle;

    #@e7
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@ea
    .line 126
    .local v17, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ed
    move-result v19

    #@ee
    .line 127
    .local v19, "_arg3":I
    move-object/from16 v0, p0

    #@f0
    move-object/from16 v1, v17

    #@f2
    move/from16 v2, v19

    #@f4
    invoke-virtual {v0, v12, v15, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getWallpaper(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    #@f7
    move-result-object v22

    #@f8
    .line 128
    .restart local v22    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fb
    .line 129
    if-eqz v22, :cond_6

    #@fd
    .line 130
    const/4 v3, 0x1

    #@fe
    move-object/from16 v0, p3

    #@100
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@103
    .line 131
    const/4 v3, 0x1

    #@104
    move-object/from16 v0, v22

    #@106
    move-object/from16 v1, p3

    #@108
    invoke-virtual {v0, v1, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@10b
    .line 136
    :goto_6
    if-eqz v17, :cond_7

    #@10d
    .line 137
    const/4 v3, 0x1

    #@10e
    move-object/from16 v0, p3

    #@110
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@113
    .line 138
    const/4 v3, 0x1

    #@114
    move-object/from16 v0, v17

    #@116
    move-object/from16 v1, p3

    #@118
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@11b
    .line 143
    :goto_7
    const/4 v3, 0x1

    #@11c
    return v3

    #@11d
    .line 134
    :cond_6
    const/4 v3, 0x0

    #@11e
    move-object/from16 v0, p3

    #@120
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@123
    goto :goto_6

    #@124
    .line 141
    :cond_7
    const/4 v3, 0x0

    #@125
    move-object/from16 v0, p3

    #@127
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12a
    goto :goto_7

    #@12b
    .line 147
    .end local v12    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v15    # "_arg1":I
    .end local v17    # "_arg2":Landroid/os/Bundle;
    .end local v19    # "_arg3":I
    .end local v22    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_5
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@12e
    move-object/from16 v0, p2

    #@130
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@133
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@136
    move-result v11

    #@137
    .line 151
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13a
    move-result v15

    #@13b
    .line 152
    .restart local v15    # "_arg1":I
    move-object/from16 v0, p0

    #@13d
    invoke-virtual {v0, v11, v15}, Landroid/app/IWallpaperManager$Stub;->getWallpaperIdForUser(II)I

    #@140
    move-result v20

    #@141
    .line 153
    .local v20, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@144
    .line 154
    move-object/from16 v0, p3

    #@146
    move/from16 v1, v20

    #@148
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14b
    .line 155
    const/4 v3, 0x1

    #@14c
    return v3

    #@14d
    .line 159
    .end local v11    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v20    # "_result":I
    :sswitch_6
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@150
    move-object/from16 v0, p2

    #@152
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@155
    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    #@158
    move-result-object v21

    #@159
    .line 161
    .local v21, "_result":Landroid/app/WallpaperInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15c
    .line 162
    if-eqz v21, :cond_8

    #@15e
    .line 163
    const/4 v3, 0x1

    #@15f
    move-object/from16 v0, p3

    #@161
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@164
    .line 164
    const/4 v3, 0x1

    #@165
    move-object/from16 v0, v21

    #@167
    move-object/from16 v1, p3

    #@169
    invoke-virtual {v0, v1, v3}, Landroid/app/WallpaperInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@16c
    .line 169
    :goto_8
    const/4 v3, 0x1

    #@16d
    return v3

    #@16e
    .line 167
    :cond_8
    const/4 v3, 0x0

    #@16f
    move-object/from16 v0, p3

    #@171
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@174
    goto :goto_8

    #@175
    .line 173
    .end local v21    # "_result":Landroid/app/WallpaperInfo;
    :sswitch_7
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@178
    move-object/from16 v0, p2

    #@17a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17d
    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@180
    move-result-object v4

    #@181
    .line 177
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@184
    move-result v15

    #@185
    .line 179
    .restart local v15    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@188
    move-result v16

    #@189
    .line 180
    .local v16, "_arg2":I
    move-object/from16 v0, p0

    #@18b
    move/from16 v1, v16

    #@18d
    invoke-virtual {v0, v4, v15, v1}, Landroid/app/IWallpaperManager$Stub;->clearWallpaper(Ljava/lang/String;II)V

    #@190
    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@193
    .line 182
    const/4 v3, 0x1

    #@194
    return v3

    #@195
    .line 186
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    :sswitch_8
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@198
    move-object/from16 v0, p2

    #@19a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19d
    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a0
    move-result-object v4

    #@1a1
    .line 189
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a3
    invoke-virtual {v0, v4}, Landroid/app/IWallpaperManager$Stub;->hasNamedWallpaper(Ljava/lang/String;)Z

    #@1a6
    move-result v24

    #@1a7
    .line 190
    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1aa
    .line 191
    if-eqz v24, :cond_9

    #@1ac
    const/4 v3, 0x1

    #@1ad
    :goto_9
    move-object/from16 v0, p3

    #@1af
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b2
    .line 192
    const/4 v3, 0x1

    #@1b3
    return v3

    #@1b4
    .line 191
    :cond_9
    const/4 v3, 0x0

    #@1b5
    goto :goto_9

    #@1b6
    .line 196
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v24    # "_result":Z
    :sswitch_9
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@1b9
    move-object/from16 v0, p2

    #@1bb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1be
    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c1
    move-result v11

    #@1c2
    .line 200
    .restart local v11    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c5
    move-result v15

    #@1c6
    .line 202
    .restart local v15    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c9
    move-result-object v18

    #@1ca
    .line 203
    .local v18, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1cc
    move-object/from16 v1, v18

    #@1ce
    invoke-virtual {v0, v11, v15, v1}, Landroid/app/IWallpaperManager$Stub;->setDimensionHints(IILjava/lang/String;)V

    #@1d1
    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d4
    .line 205
    const/4 v3, 0x1

    #@1d5
    return v3

    #@1d6
    .line 209
    .end local v11    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v18    # "_arg2":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@1d9
    move-object/from16 v0, p2

    #@1db
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1de
    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWidthHint()I

    #@1e1
    move-result v20

    #@1e2
    .line 211
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e5
    .line 212
    move-object/from16 v0, p3

    #@1e7
    move/from16 v1, v20

    #@1e9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1ec
    .line 213
    const/4 v3, 0x1

    #@1ed
    return v3

    #@1ee
    .line 217
    .end local v20    # "_result":I
    :sswitch_b
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@1f1
    move-object/from16 v0, p2

    #@1f3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f6
    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getHeightHint()I

    #@1f9
    move-result v20

    #@1fa
    .line 219
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fd
    .line 220
    move-object/from16 v0, p3

    #@1ff
    move/from16 v1, v20

    #@201
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@204
    .line 221
    const/4 v3, 0x1

    #@205
    return v3

    #@206
    .line 225
    .end local v20    # "_result":I
    :sswitch_c
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@209
    move-object/from16 v0, p2

    #@20b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20e
    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@211
    move-result v3

    #@212
    if-eqz v3, :cond_a

    #@214
    .line 228
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@216
    move-object/from16 v0, p2

    #@218
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21b
    move-result-object v14

    #@21c
    check-cast v14, Landroid/graphics/Rect;

    #@21e
    .line 234
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@221
    move-result-object v5

    #@222
    .line 235
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@224
    invoke-virtual {v0, v14, v5}, Landroid/app/IWallpaperManager$Stub;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V

    #@227
    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22a
    .line 237
    const/4 v3, 0x1

    #@22b
    return v3

    #@22c
    .line 231
    .end local v5    # "_arg1":Ljava/lang/String;
    :cond_a
    const/4 v14, 0x0

    #@22d
    .local v14, "_arg0":Landroid/graphics/Rect;
    goto :goto_a

    #@22e
    .line 241
    .end local v14    # "_arg0":Landroid/graphics/Rect;
    :sswitch_d
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@231
    move-object/from16 v0, p2

    #@233
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@236
    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getName()Ljava/lang/String;

    #@239
    move-result-object v23

    #@23a
    .line 243
    .local v23, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23d
    .line 244
    move-object/from16 v0, p3

    #@23f
    move-object/from16 v1, v23

    #@241
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@244
    .line 245
    const/4 v3, 0x1

    #@245
    return v3

    #@246
    .line 249
    .end local v23    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@249
    move-object/from16 v0, p2

    #@24b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24e
    .line 250
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->settingsRestored()V

    #@251
    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@254
    .line 252
    const/4 v3, 0x1

    #@255
    return v3

    #@256
    .line 256
    :sswitch_f
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@259
    move-object/from16 v0, p2

    #@25b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25e
    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@261
    move-result-object v4

    #@262
    .line 259
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@264
    invoke-virtual {v0, v4}, Landroid/app/IWallpaperManager$Stub;->isWallpaperSupported(Ljava/lang/String;)Z

    #@267
    move-result v24

    #@268
    .line 260
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26b
    .line 261
    if-eqz v24, :cond_b

    #@26d
    const/4 v3, 0x1

    #@26e
    :goto_b
    move-object/from16 v0, p3

    #@270
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@273
    .line 262
    const/4 v3, 0x1

    #@274
    return v3

    #@275
    .line 261
    :cond_b
    const/4 v3, 0x0

    #@276
    goto :goto_b

    #@277
    .line 266
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v24    # "_result":Z
    :sswitch_10
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@27a
    move-object/from16 v0, p2

    #@27c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27f
    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@282
    move-result-object v4

    #@283
    .line 269
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@285
    invoke-virtual {v0, v4}, Landroid/app/IWallpaperManager$Stub;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    #@288
    move-result v24

    #@289
    .line 270
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28c
    .line 271
    if-eqz v24, :cond_c

    #@28e
    const/4 v3, 0x1

    #@28f
    :goto_c
    move-object/from16 v0, p3

    #@291
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@294
    .line 272
    const/4 v3, 0x1

    #@295
    return v3

    #@296
    .line 271
    :cond_c
    const/4 v3, 0x0

    #@297
    goto :goto_c

    #@298
    .line 276
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v24    # "_result":Z
    :sswitch_11
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@29b
    move-object/from16 v0, p2

    #@29d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a0
    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a3
    move-result v11

    #@2a4
    .line 279
    .restart local v11    # "_arg0":I
    move-object/from16 v0, p0

    #@2a6
    invoke-virtual {v0, v11}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupEligible(I)Z

    #@2a9
    move-result v24

    #@2aa
    .line 280
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ad
    .line 281
    if-eqz v24, :cond_d

    #@2af
    const/4 v3, 0x1

    #@2b0
    :goto_d
    move-object/from16 v0, p3

    #@2b2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2b5
    .line 282
    const/4 v3, 0x1

    #@2b6
    return v3

    #@2b7
    .line 281
    :cond_d
    const/4 v3, 0x0

    #@2b8
    goto :goto_d

    #@2b9
    .line 286
    .end local v11    # "_arg0":I
    .end local v24    # "_result":Z
    :sswitch_12
    const-string/jumbo v3, "android.app.IWallpaperManager"

    #@2bc
    move-object/from16 v0, p2

    #@2be
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c1
    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2c4
    move-result-object v3

    #@2c5
    invoke-static {v3}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    #@2c8
    move-result-object v12

    #@2c9
    .line 289
    .restart local v12    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    move-object/from16 v0, p0

    #@2cb
    invoke-virtual {v0, v12}, Landroid/app/IWallpaperManager$Stub;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    #@2ce
    move-result v24

    #@2cf
    .line 290
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d2
    .line 291
    if-eqz v24, :cond_e

    #@2d4
    const/4 v3, 0x1

    #@2d5
    :goto_e
    move-object/from16 v0, p3

    #@2d7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2da
    .line 292
    const/4 v3, 0x1

    #@2db
    return v3

    #@2dc
    .line 291
    :cond_e
    const/4 v3, 0x0

    #@2dd
    goto :goto_e

    #@2de
    .line 39
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
