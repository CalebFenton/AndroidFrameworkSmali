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
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.wallpaper.IWallpaperService"

.field static final TRANSACTION_attach:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.service.wallpaper.IWallpaperService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/wallpaper/IWallpaperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;
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
    const-string/jumbo v1, "android.service.wallpaper.IWallpaperService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/wallpaper/IWallpaperService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/service/wallpaper/IWallpaperService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v0, "android.service.wallpaper.IWallpaperService"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v8

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v0, "android.service.wallpaper.IWallpaperService"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperConnection;

    #@1d
    move-result-object v1

    #@1e
    .line 54
    .local v1, "_arg0":Landroid/service/wallpaper/IWallpaperConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@21
    move-result-object v2

    #@22
    .line 56
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    .line 58
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_0

    #@2c
    const/4 v4, 0x1

    #@2d
    .line 60
    .local v4, "_arg3":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v5

    #@31
    .line 62
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v6

    #@35
    .line 64
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_1

    #@3b
    .line 65
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@40
    move-result-object v7

    #@41
    check-cast v7, Landroid/graphics/Rect;

    #@43
    :goto_1
    move-object v0, p0

    #@44
    .line 70
    invoke-virtual/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService$Stub;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V

    #@47
    .line 71
    return v8

    #@48
    .line 58
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :cond_0
    const/4 v4, 0x0

    #@49
    .restart local v4    # "_arg3":Z
    goto :goto_0

    #@4a
    .line 68
    .restart local v5    # "_arg4":I
    .restart local v6    # "_arg5":I
    :cond_1
    const/4 v7, 0x0

    #@4b
    .local v7, "_arg6":Landroid/graphics/Rect;
    goto :goto_1

    #@4c
    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
