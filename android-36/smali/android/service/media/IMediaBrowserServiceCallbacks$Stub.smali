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
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.media.IMediaBrowserServiceCallbacks"

.field static final greylist-max-o TRANSACTION_onConnect:I = 0x1

.field static final greylist-max-o TRANSACTION_onConnectFailed:I = 0x2

.field static final blacklist TRANSACTION_onDisconnect:I = 0x4

.field static final greylist-max-o TRANSACTION_onLoadChildren:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.service.media.IMediaBrowserServiceCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_4
    const-string v0, "android.service.media.IMediaBrowserServiceCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/media/IMediaBrowserServiceCallbacks;

    if-eqz v1, :cond_14

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/service/media/IMediaBrowserServiceCallbacks;

    return-object v1

    .line 72
    :cond_14
    new-instance v1, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_16

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 97
    :pswitch_5
    const-string/jumbo v0, "onDisconnect"

    return-object v0

    .line 93
    :pswitch_9
    const-string/jumbo v0, "onLoadChildren"

    return-object v0

    .line 89
    :pswitch_d
    const-string/jumbo v0, "onConnectFailed"

    return-object v0

    .line 85
    :pswitch_11
    const-string/jumbo v0, "onConnect"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 251
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 108
    invoke-static {p1}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const-string v0, "android.service.media.IMediaBrowserServiceCallbacks"

    .line 113
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 120
    :cond_16
    packed-switch p1, :pswitch_data_5e

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 153
    :pswitch_1e
    invoke-virtual {p0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->onDisconnect()V

    .line 154
    goto :goto_5c

    .line 142
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 146
    .local v3, "_arg1":Landroid/content/pm/ParceledListSlice;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 147
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->onLoadChildren(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V

    .line 149
    goto :goto_5c

    .line 136
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_3d
    invoke-virtual {p0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->onConnectFailed()V

    .line 137
    goto :goto_5c

    .line 125
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaSession$Token;

    .line 129
    .local v3, "_arg1":Landroid/media/session/MediaSession$Token;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 130
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    .line 132
    nop

    .line 161
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/session/MediaSession$Token;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :goto_5c
    return v1

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3d
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
