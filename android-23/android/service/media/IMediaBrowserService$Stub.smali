.class public abstract Landroid/service/media/IMediaBrowserService$Stub;
.super Landroid/os/Binder;
.source "IMediaBrowserService.java"

# interfaces
.implements Landroid/service/media/IMediaBrowserService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/IMediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/media/IMediaBrowserService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.media.IMediaBrowserService"

.field static final TRANSACTION_addSubscription:I = 0x3

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getMediaItem:I = 0x5

.field static final TRANSACTION_removeSubscription:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.service.media.IMediaBrowserService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/media/IMediaBrowserService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserService;
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
    const-string/jumbo v1, "android.service.media.IMediaBrowserService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/media/IMediaBrowserService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/service/media/IMediaBrowserService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/media/IMediaBrowserService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/media/IMediaBrowserService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v7, 0x1

    #@1
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v6

    #@8
    return v6

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v6, "android.service.media.IMediaBrowserService"

    #@c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v7

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v6, "android.service.media.IMediaBrowserService"

    #@13
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 56
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_0

    #@20
    .line 57
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/os/Bundle;

    #@28
    .line 63
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v6

    #@2c
    invoke-static {v6}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@2f
    move-result-object v5

    #@30
    .line 64
    .local v5, "_arg2":Landroid/service/media/IMediaBrowserServiceCallbacks;
    invoke-virtual {p0, v1, v2, v5}, Landroid/service/media/IMediaBrowserService$Stub;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    #@33
    .line 65
    return v7

    #@34
    .line 60
    .end local v5    # "_arg2":Landroid/service/media/IMediaBrowserServiceCallbacks;
    :cond_0
    const/4 v2, 0x0

    #@35
    .local v2, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    #@36
    .line 69
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v6, "android.service.media.IMediaBrowserService"

    #@39
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3f
    move-result-object v6

    #@40
    invoke-static {v6}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@43
    move-result-object v0

    #@44
    .line 72
    .local v0, "_arg0":Landroid/service/media/IMediaBrowserServiceCallbacks;
    invoke-virtual {p0, v0}, Landroid/service/media/IMediaBrowserService$Stub;->disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    #@47
    .line 73
    return v7

    #@48
    .line 77
    .end local v0    # "_arg0":Landroid/service/media/IMediaBrowserServiceCallbacks;
    :sswitch_3
    const-string/jumbo v6, "android.service.media.IMediaBrowserService"

    #@4b
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    .line 81
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@55
    move-result-object v6

    #@56
    invoke-static {v6}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@59
    move-result-object v4

    #@5a
    .line 82
    .local v4, "_arg1":Landroid/service/media/IMediaBrowserServiceCallbacks;
    invoke-virtual {p0, v1, v4}, Landroid/service/media/IMediaBrowserService$Stub;->addSubscription(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    #@5d
    .line 83
    return v7

    #@5e
    .line 87
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/service/media/IMediaBrowserServiceCallbacks;
    :sswitch_4
    const-string/jumbo v6, "android.service.media.IMediaBrowserService"

    #@61
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    .line 91
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6b
    move-result-object v6

    #@6c
    invoke-static {v6}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@6f
    move-result-object v4

    #@70
    .line 92
    .restart local v4    # "_arg1":Landroid/service/media/IMediaBrowserServiceCallbacks;
    invoke-virtual {p0, v1, v4}, Landroid/service/media/IMediaBrowserService$Stub;->removeSubscription(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    #@73
    .line 93
    return v7

    #@74
    .line 97
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/service/media/IMediaBrowserServiceCallbacks;
    :sswitch_5
    const-string/jumbo v6, "android.service.media.IMediaBrowserService"

    #@77
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a
    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7d
    move-result-object v1

    #@7e
    .line 101
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v6

    #@82
    if-eqz v6, :cond_1

    #@84
    .line 102
    sget-object v6, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@86
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@89
    move-result-object v3

    #@8a
    check-cast v3, Landroid/os/ResultReceiver;

    #@8c
    .line 107
    :goto_1
    invoke-virtual {p0, v1, v3}, Landroid/service/media/IMediaBrowserService$Stub;->getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    #@8f
    .line 108
    return v7

    #@90
    .line 105
    :cond_1
    const/4 v3, 0x0

    #@91
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    goto :goto_1

    #@92
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
