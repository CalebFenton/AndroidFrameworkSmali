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

.field static final TRANSACTION_clearWallpaper:I = 0x6

.field static final TRANSACTION_getHeightHint:I = 0xa

.field static final TRANSACTION_getName:I = 0xc

.field static final TRANSACTION_getWallpaper:I = 0x4

.field static final TRANSACTION_getWallpaperInfo:I = 0x5

.field static final TRANSACTION_getWidthHint:I = 0x9

.field static final TRANSACTION_hasNamedWallpaper:I = 0x7

.field static final TRANSACTION_isWallpaperSupported:I = 0xe

.field static final TRANSACTION_setDimensionHints:I = 0x8

.field static final TRANSACTION_setDisplayPadding:I = 0xb

.field static final TRANSACTION_setWallpaper:I = 0x1

.field static final TRANSACTION_setWallpaperComponent:I = 0x3

.field static final TRANSACTION_setWallpaperComponentChecked:I = 0x2

.field static final TRANSACTION_settingsRestored:I = 0xd


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
    .locals 16
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
    .line 223
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v15

    #@7
    return v15

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v15, 0x1

    #@11
    return v15

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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
    move-result-object v8

    #@22
    .line 53
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v0, v5, v8}, Landroid/app/IWallpaperManager$Stub;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@27
    move-result-object v12

    #@28
    .line 54
    .local v12, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b
    .line 55
    if-eqz v12, :cond_0

    #@2d
    .line 56
    const/4 v15, 0x1

    #@2e
    move-object/from16 v0, p3

    #@30
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 57
    const/4 v15, 0x1

    #@34
    move-object/from16 v0, p3

    #@36
    invoke-virtual {v12, v0, v15}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@39
    .line 62
    :goto_0
    const/4 v15, 0x1

    #@3a
    return v15

    #@3b
    .line 60
    :cond_0
    const/4 v15, 0x0

    #@3c
    move-object/from16 v0, p3

    #@3e
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    goto :goto_0

    #@42
    .line 66
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@45
    move-object/from16 v0, p2

    #@47
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v15

    #@4e
    if-eqz v15, :cond_1

    #@50
    .line 69
    sget-object v15, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@52
    move-object/from16 v0, p2

    #@54
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@57
    move-result-object v3

    #@58
    check-cast v3, Landroid/content/ComponentName;

    #@5a
    .line 75
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    .line 76
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@60
    invoke-virtual {v0, v3, v8}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@63
    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@66
    .line 78
    const/4 v15, 0x1

    #@67
    return v15

    #@68
    .line 72
    .end local v8    # "_arg1":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    #@69
    .local v3, "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    #@6a
    .line 82
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@6d
    move-object/from16 v0, p2

    #@6f
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72
    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v15

    #@76
    if-eqz v15, :cond_2

    #@78
    .line 85
    sget-object v15, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7a
    move-object/from16 v0, p2

    #@7c
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7f
    move-result-object v3

    #@80
    check-cast v3, Landroid/content/ComponentName;

    #@82
    .line 90
    :goto_2
    move-object/from16 v0, p0

    #@84
    invoke-virtual {v0, v3}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponent(Landroid/content/ComponentName;)V

    #@87
    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a
    .line 92
    const/4 v15, 0x1

    #@8b
    return v15

    #@8c
    .line 88
    :cond_2
    const/4 v3, 0x0

    #@8d
    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    #@8e
    .line 96
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@91
    move-object/from16 v0, p2

    #@93
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@99
    move-result-object v15

    #@9a
    invoke-static {v15}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    #@9d
    move-result-object v2

    #@9e
    .line 100
    .local v2, "_arg0":Landroid/app/IWallpaperManagerCallback;
    new-instance v7, Landroid/os/Bundle;

    #@a0
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    #@a3
    .line 101
    .local v7, "_arg1":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@a5
    invoke-virtual {v0, v2, v7}, Landroid/app/IWallpaperManager$Stub;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    #@a8
    move-result-object v12

    #@a9
    .line 102
    .restart local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac
    .line 103
    if-eqz v12, :cond_3

    #@ae
    .line 104
    const/4 v15, 0x1

    #@af
    move-object/from16 v0, p3

    #@b1
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@b4
    .line 105
    const/4 v15, 0x1

    #@b5
    move-object/from16 v0, p3

    #@b7
    invoke-virtual {v12, v0, v15}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@ba
    .line 110
    :goto_3
    if-eqz v7, :cond_4

    #@bc
    .line 111
    const/4 v15, 0x1

    #@bd
    move-object/from16 v0, p3

    #@bf
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@c2
    .line 112
    const/4 v15, 0x1

    #@c3
    move-object/from16 v0, p3

    #@c5
    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@c8
    .line 117
    :goto_4
    const/4 v15, 0x1

    #@c9
    return v15

    #@ca
    .line 108
    :cond_3
    const/4 v15, 0x0

    #@cb
    move-object/from16 v0, p3

    #@cd
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@d0
    goto :goto_3

    #@d1
    .line 115
    :cond_4
    const/4 v15, 0x0

    #@d2
    move-object/from16 v0, p3

    #@d4
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@d7
    goto :goto_4

    #@d8
    .line 121
    .end local v2    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .end local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_5
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@db
    move-object/from16 v0, p2

    #@dd
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e0
    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    #@e3
    move-result-object v11

    #@e4
    .line 123
    .local v11, "_result":Landroid/app/WallpaperInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e7
    .line 124
    if-eqz v11, :cond_5

    #@e9
    .line 125
    const/4 v15, 0x1

    #@ea
    move-object/from16 v0, p3

    #@ec
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@ef
    .line 126
    const/4 v15, 0x1

    #@f0
    move-object/from16 v0, p3

    #@f2
    invoke-virtual {v11, v0, v15}, Landroid/app/WallpaperInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@f5
    .line 131
    :goto_5
    const/4 v15, 0x1

    #@f6
    return v15

    #@f7
    .line 129
    :cond_5
    const/4 v15, 0x0

    #@f8
    move-object/from16 v0, p3

    #@fa
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@fd
    goto :goto_5

    #@fe
    .line 135
    .end local v11    # "_result":Landroid/app/WallpaperInfo;
    :sswitch_6
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@101
    move-object/from16 v0, p2

    #@103
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@106
    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@109
    move-result-object v5

    #@10a
    .line 138
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@10c
    invoke-virtual {v0, v5}, Landroid/app/IWallpaperManager$Stub;->clearWallpaper(Ljava/lang/String;)V

    #@10f
    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@112
    .line 140
    const/4 v15, 0x1

    #@113
    return v15

    #@114
    .line 144
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@117
    move-object/from16 v0, p2

    #@119
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11c
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11f
    move-result-object v5

    #@120
    .line 147
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@122
    invoke-virtual {v0, v5}, Landroid/app/IWallpaperManager$Stub;->hasNamedWallpaper(Ljava/lang/String;)Z

    #@125
    move-result v14

    #@126
    .line 148
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@129
    .line 149
    if-eqz v14, :cond_6

    #@12b
    const/4 v15, 0x1

    #@12c
    :goto_6
    move-object/from16 v0, p3

    #@12e
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@131
    .line 150
    const/4 v15, 0x1

    #@132
    return v15

    #@133
    .line 149
    :cond_6
    const/4 v15, 0x0

    #@134
    goto :goto_6

    #@135
    .line 154
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Z
    :sswitch_8
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@138
    move-object/from16 v0, p2

    #@13a
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13d
    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@140
    move-result v1

    #@141
    .line 158
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@144
    move-result v6

    #@145
    .line 160
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@148
    move-result-object v9

    #@149
    .line 161
    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@14b
    invoke-virtual {v0, v1, v6, v9}, Landroid/app/IWallpaperManager$Stub;->setDimensionHints(IILjava/lang/String;)V

    #@14e
    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@151
    .line 163
    const/4 v15, 0x1

    #@152
    return v15

    #@153
    .line 167
    .end local v1    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@156
    move-object/from16 v0, p2

    #@158
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15b
    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWidthHint()I

    #@15e
    move-result v10

    #@15f
    .line 169
    .local v10, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@162
    .line 170
    move-object/from16 v0, p3

    #@164
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@167
    .line 171
    const/4 v15, 0x1

    #@168
    return v15

    #@169
    .line 175
    .end local v10    # "_result":I
    :sswitch_a
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@16c
    move-object/from16 v0, p2

    #@16e
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@171
    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getHeightHint()I

    #@174
    move-result v10

    #@175
    .line 177
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@178
    .line 178
    move-object/from16 v0, p3

    #@17a
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@17d
    .line 179
    const/4 v15, 0x1

    #@17e
    return v15

    #@17f
    .line 183
    .end local v10    # "_result":I
    :sswitch_b
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@182
    move-object/from16 v0, p2

    #@184
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@187
    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18a
    move-result v15

    #@18b
    if-eqz v15, :cond_7

    #@18d
    .line 186
    sget-object v15, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18f
    move-object/from16 v0, p2

    #@191
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@194
    move-result-object v4

    #@195
    check-cast v4, Landroid/graphics/Rect;

    #@197
    .line 192
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19a
    move-result-object v8

    #@19b
    .line 193
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@19d
    invoke-virtual {v0, v4, v8}, Landroid/app/IWallpaperManager$Stub;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V

    #@1a0
    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a3
    .line 195
    const/4 v15, 0x1

    #@1a4
    return v15

    #@1a5
    .line 189
    .end local v8    # "_arg1":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    #@1a6
    .local v4, "_arg0":Landroid/graphics/Rect;
    goto :goto_7

    #@1a7
    .line 199
    .end local v4    # "_arg0":Landroid/graphics/Rect;
    :sswitch_c
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@1aa
    move-object/from16 v0, p2

    #@1ac
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1af
    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getName()Ljava/lang/String;

    #@1b2
    move-result-object v13

    #@1b3
    .line 201
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b6
    .line 202
    move-object/from16 v0, p3

    #@1b8
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1bb
    .line 203
    const/4 v15, 0x1

    #@1bc
    return v15

    #@1bd
    .line 207
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@1c0
    move-object/from16 v0, p2

    #@1c2
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c5
    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->settingsRestored()V

    #@1c8
    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cb
    .line 210
    const/4 v15, 0x1

    #@1cc
    return v15

    #@1cd
    .line 214
    :sswitch_e
    const-string/jumbo v15, "android.app.IWallpaperManager"

    #@1d0
    move-object/from16 v0, p2

    #@1d2
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d5
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d8
    move-result-object v5

    #@1d9
    .line 217
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1db
    invoke-virtual {v0, v5}, Landroid/app/IWallpaperManager$Stub;->isWallpaperSupported(Ljava/lang/String;)Z

    #@1de
    move-result v14

    #@1df
    .line 218
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e2
    .line 219
    if-eqz v14, :cond_8

    #@1e4
    const/4 v15, 0x1

    #@1e5
    :goto_8
    move-object/from16 v0, p3

    #@1e7
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@1ea
    .line 220
    const/4 v15, 0x1

    #@1eb
    return v15

    #@1ec
    .line 219
    :cond_8
    const/4 v15, 0x0

    #@1ed
    goto :goto_8

    #@1ee
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
