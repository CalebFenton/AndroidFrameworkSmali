.class public abstract Landroid/service/wallpaper/IWallpaperEngine$Stub;
.super Landroid/os/Binder;
.source "IWallpaperEngine.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.wallpaper.IWallpaperEngine"

.field static final TRANSACTION_destroy:I = 0x6

.field static final TRANSACTION_dispatchPointer:I = 0x4

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0x5

.field static final TRANSACTION_setDesiredSize:I = 0x1

.field static final TRANSACTION_setDisplayPadding:I = 0x2

.field static final TRANSACTION_setVisibility:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.service.wallpaper.IWallpaperEngine"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperEngine;
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
    const-string/jumbo v1, "android.service.wallpaper.IWallpaperEngine"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/wallpaper/IWallpaperEngine;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/service/wallpaper/IWallpaperEngine;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v9, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 45
    :sswitch_0
    const-string/jumbo v0, "android.service.wallpaper.IWallpaperEngine"

    #@d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    return v10

    #@11
    .line 50
    :sswitch_1
    const-string/jumbo v0, "android.service.wallpaper.IWallpaperEngine"

    #@14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v6

    #@1b
    .line 54
    .local v6, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v2

    #@1f
    .line 55
    .local v2, "_arg1":I
    invoke-virtual {p0, v6, v2}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setDesiredSize(II)V

    #@22
    .line 56
    return v10

    #@23
    .line 60
    .end local v2    # "_arg1":I
    .end local v6    # "_arg0":I
    :sswitch_2
    const-string/jumbo v0, "android.service.wallpaper.IWallpaperEngine"

    #@26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_0

    #@2f
    .line 63
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34
    move-result-object v7

    #@35
    check-cast v7, Landroid/graphics/Rect;

    #@37
    .line 68
    :goto_0
    invoke-virtual {p0, v7}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setDisplayPadding(Landroid/graphics/Rect;)V

    #@3a
    .line 69
    return v10

    #@3b
    .line 66
    :cond_0
    const/4 v7, 0x0

    #@3c
    .local v7, "_arg0":Landroid/graphics/Rect;
    goto :goto_0

    #@3d
    .line 73
    .end local v7    # "_arg0":Landroid/graphics/Rect;
    :sswitch_3
    const-string/jumbo v0, "android.service.wallpaper.IWallpaperEngine"

    #@40
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43
    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_1

    #@49
    move v9, v10

    #@4a
    .line 76
    .local v9, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v9}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setVisibility(Z)V

    #@4d
    .line 77
    return v10

    #@4e
    .line 81
    .end local v9    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v0, "android.service.wallpaper.IWallpaperEngine"

    #@51
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54
    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_2

    #@5a
    .line 84
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5f
    move-result-object v8

    #@60
    check-cast v8, Landroid/view/MotionEvent;

    #@62
    .line 89
    :goto_1
    invoke-virtual {p0, v8}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->dispatchPointer(Landroid/view/MotionEvent;)V

    #@65
    .line 90
    return v10

    #@66
    .line 87
    :cond_2
    const/4 v8, 0x0

    #@67
    .local v8, "_arg0":Landroid/view/MotionEvent;
    goto :goto_1

    #@68
    .line 94
    .end local v8    # "_arg0":Landroid/view/MotionEvent;
    :sswitch_5
    const-string/jumbo v0, "android.service.wallpaper.IWallpaperEngine"

    #@6b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    .line 98
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v2

    #@76
    .line 100
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v3

    #@7a
    .line 102
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7d
    move-result v4

    #@7e
    .line 104
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v0

    #@82
    if-eqz v0, :cond_3

    #@84
    .line 105
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@86
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@89
    move-result-object v5

    #@8a
    check-cast v5, Landroid/os/Bundle;

    #@8c
    :goto_2
    move-object v0, p0

    #@8d
    .line 110
    invoke-virtual/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    #@90
    .line 111
    return v10

    #@91
    .line 108
    :cond_3
    const/4 v5, 0x0

    #@92
    .local v5, "_arg4":Landroid/os/Bundle;
    goto :goto_2

    #@93
    .line 115
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v0, "android.service.wallpaper.IWallpaperEngine"

    #@96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@99
    .line 116
    invoke-virtual {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->destroy()V

    #@9c
    .line 117
    return v10

    #@9d
    .line 41
    nop

    #@9e
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
