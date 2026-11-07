.class public abstract Landroid/service/wallpaper/IWallpaperService$Stub;
.super Landroid/os/Binder;
.source "IWallpaperService.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.wallpaper.IWallpaperService"

.field static final greylist-max-o TRANSACTION_attach:I = 0x1

.field static final blacklist TRANSACTION_detach:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.service.wallpaper.IWallpaperService"

    invoke-virtual {p0, p0, v0}, Landroid/service/wallpaper/IWallpaperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "android.service.wallpaper.IWallpaperService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/wallpaper/IWallpaperService;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/service/wallpaper/IWallpaperService;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_c

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 66
    :pswitch_5
    const-string v0, "detach"

    return-object v0

    .line 62
    :pswitch_8
    const-string v0, "attach"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 77
    invoke-static {p1}, Landroid/service/wallpaper/IWallpaperService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.service.wallpaper.IWallpaperService"

    .line 82
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_11

    const v4, 0xffffff

    if-gt v0, v4, :cond_11

    .line 83
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    :cond_11
    const v4, 0x5f4e5446

    if-ne v0, v4, :cond_1c

    .line 86
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v3

    .line 89
    :cond_1c
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_7e

    .line 129
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 122
    :pswitch_26
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 123
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    move-object/from16 v6, p0

    invoke-virtual {v6, v5}, Landroid/service/wallpaper/IWallpaperService$Stub;->detach(Landroid/os/IBinder;)V

    .line 125
    goto :goto_7d

    .line 94
    .end local v5    # "_arg0":Landroid/os/IBinder;
    :pswitch_33
    move-object/from16 v6, p0

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperConnection;

    move-result-object v7

    .line 96
    .local v7, "_arg0":Landroid/service/wallpaper/IWallpaperConnection;
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 98
    .local v8, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 100
    .local v9, "_arg2":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 102
    .local v10, "_arg3":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 104
    .local v11, "_arg4":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 106
    .local v12, "_arg5":I
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/graphics/Rect;

    .line 108
    .local v13, "_arg6":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 110
    .local v14, "_arg7":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 112
    .local v15, "_arg8":I
    sget-object v5, Landroid/app/WallpaperInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Landroid/app/WallpaperInfo;

    .line 114
    .local v16, "_arg9":Landroid/app/WallpaperInfo;
    sget-object v5, Landroid/app/wallpaper/WallpaperDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/app/wallpaper/WallpaperDescription;

    .line 115
    .local v17, "_arg10":Landroid/app/wallpaper/WallpaperDescription;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual/range {v6 .. v17}, Landroid/service/wallpaper/IWallpaperService$Stub;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;IILandroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;)V

    .line 117
    nop

    .line 132
    .end local v7    # "_arg0":Landroid/service/wallpaper/IWallpaperConnection;
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Z
    .end local v11    # "_arg4":I
    .end local v12    # "_arg5":I
    .end local v13    # "_arg6":Landroid/graphics/Rect;
    .end local v14    # "_arg7":I
    .end local v15    # "_arg8":I
    .end local v16    # "_arg9":Landroid/app/WallpaperInfo;
    .end local v17    # "_arg10":Landroid/app/wallpaper/WallpaperDescription;
    :goto_7d
    return v3

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_33
        :pswitch_26
    .end packed-switch
.end method
