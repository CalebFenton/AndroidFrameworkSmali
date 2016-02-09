.class public abstract Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;
.super Landroid/os/Binder;
.source "IMediaBrowserServiceCallbacks.java"

# interfaces
.implements Landroid/service/media/IMediaBrowserServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/IMediaBrowserServiceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/media/IMediaBrowserServiceCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.media.IMediaBrowserServiceCallbacks"

.field static final TRANSACTION_onConnect:I = 0x1

.field static final TRANSACTION_onConnectFailed:I = 0x2

.field static final TRANSACTION_onLoadChildren:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.service.media.IMediaBrowserServiceCallbacks"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.service.media.IMediaBrowserServiceCallbacks"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x1

    #@1
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.service.media.IMediaBrowserServiceCallbacks"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v5

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.service.media.IMediaBrowserServiceCallbacks"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 56
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 57
    sget-object v4, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/media/session/MediaSession$Token;

    #@28
    .line 63
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_1

    #@2e
    .line 64
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Landroid/os/Bundle;

    #@36
    .line 69
    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    #@39
    .line 70
    return v5

    #@3a
    .line 60
    :cond_0
    const/4 v2, 0x0

    #@3b
    .local v2, "_arg1":Landroid/media/session/MediaSession$Token;
    goto :goto_0

    #@3c
    .line 67
    .end local v2    # "_arg1":Landroid/media/session/MediaSession$Token;
    :cond_1
    const/4 v3, 0x0

    #@3d
    .local v3, "_arg2":Landroid/os/Bundle;
    goto :goto_1

    #@3e
    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v4, "android.service.media.IMediaBrowserServiceCallbacks"

    #@41
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 75
    invoke-virtual {p0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->onConnectFailed()V

    #@47
    .line 76
    return v5

    #@48
    .line 80
    :sswitch_3
    const-string/jumbo v4, "android.service.media.IMediaBrowserServiceCallbacks"

    #@4b
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    .line 84
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_2

    #@58
    .line 85
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@5a
    invoke-interface {v4, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5d
    move-result-object v1

    #@5e
    check-cast v1, Landroid/content/pm/ParceledListSlice;

    #@60
    .line 90
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->onLoadChildren(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    #@63
    .line 91
    return v5

    #@64
    .line 88
    :cond_2
    const/4 v1, 0x0

    #@65
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_2

    #@66
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
