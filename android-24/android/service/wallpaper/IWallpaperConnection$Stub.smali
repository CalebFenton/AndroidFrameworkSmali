.class public abstract Landroid/service/wallpaper/IWallpaperConnection$Stub;
.super Landroid/os/Binder;
.source "IWallpaperConnection.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/IWallpaperConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.wallpaper.IWallpaperConnection"

.field static final TRANSACTION_attachEngine:I = 0x1

.field static final TRANSACTION_engineShown:I = 0x2

.field static final TRANSACTION_setWallpaper:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.service.wallpaper.IWallpaperConnection"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperConnection;
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
    const-string/jumbo v1, "android.service.wallpaper.IWallpaperConnection"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/wallpaper/IWallpaperConnection;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/service/wallpaper/IWallpaperConnection;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/wallpaper/IWallpaperConnection$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v4, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v3, "android.service.wallpaper.IWallpaperConnection"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v4

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v3, "android.service.wallpaper.IWallpaperConnection"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v3}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperEngine;

    #@1d
    move-result-object v0

    #@1e
    .line 53
    .local v0, "_arg0":Landroid/service/wallpaper/IWallpaperEngine;
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V

    #@21
    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24
    .line 55
    return v4

    #@25
    .line 59
    .end local v0    # "_arg0":Landroid/service/wallpaper/IWallpaperEngine;
    :sswitch_2
    const-string/jumbo v3, "android.service.wallpaper.IWallpaperConnection"

    #@28
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b
    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v3}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperEngine;

    #@32
    move-result-object v0

    #@33
    .line 62
    .restart local v0    # "_arg0":Landroid/service/wallpaper/IWallpaperEngine;
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V

    #@36
    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@39
    .line 64
    return v4

    #@3a
    .line 68
    .end local v0    # "_arg0":Landroid/service/wallpaper/IWallpaperEngine;
    :sswitch_3
    const-string/jumbo v3, "android.service.wallpaper.IWallpaperConnection"

    #@3d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 71
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@47
    move-result-object v2

    #@48
    .line 72
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b
    .line 73
    if-eqz v2, :cond_0

    #@4d
    .line 74
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 75
    invoke-virtual {v2, p3, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@53
    .line 80
    :goto_0
    return v4

    #@54
    .line 78
    :cond_0
    const/4 v3, 0x0

    #@55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    goto :goto_0

    #@59
    .line 41
    nop

    #@5a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
