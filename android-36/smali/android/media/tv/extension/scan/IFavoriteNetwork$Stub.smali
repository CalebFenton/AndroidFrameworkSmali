.class public abstract Landroid/media/tv/extension/scan/IFavoriteNetwork$Stub;
.super Landroid/os/Binder;
.source "IFavoriteNetwork.java"

# interfaces
.implements Landroid/media/tv/extension/scan/IFavoriteNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/IFavoriteNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IFavoriteNetwork$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFavoriteNetworks:I = 0x1

.field static final blacklist TRANSACTION_setFavoriteNetwork:I = 0x2

.field static final blacklist TRANSACTION_setListener:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.media.tv.extension.scan.IFavoriteNetwork"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/scan/IFavoriteNetwork$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/IFavoriteNetwork;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "android.media.tv.extension.scan.IFavoriteNetwork"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/scan/IFavoriteNetwork;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/scan/IFavoriteNetwork;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/media/tv/extension/scan/IFavoriteNetwork$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/scan/IFavoriteNetwork$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_10

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_5
    const-string/jumbo v0, "setListener"

    return-object v0

    .line 81
    :pswitch_9
    const-string/jumbo v0, "setFavoriteNetwork"

    return-object v0

    .line 77
    :pswitch_d
    const-string v0, "getFavoriteNetworks"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 222
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/media/tv/extension/scan/IFavoriteNetwork$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    const-string v0, "android.media.tv.extension.scan.IFavoriteNetwork"

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 108
    :cond_16
    packed-switch p1, :pswitch_data_56

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/scan/IFavoriteNetworkListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/IFavoriteNetworkListener;

    move-result-object v2

    .line 131
    .local v2, "_arg0":Landroid/media/tv/extension/scan/IFavoriteNetworkListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IFavoriteNetwork$Stub;->setListener(Landroid/media/tv/extension/scan/IFavoriteNetworkListener;)I

    move-result v3

    .line 133
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    goto :goto_55

    .line 120
    .end local v2    # "_arg0":Landroid/media/tv/extension/scan/IFavoriteNetworkListener;
    .end local v3    # "_result":I
    :pswitch_34
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 121
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IFavoriteNetwork$Stub;->setFavoriteNetwork(Landroid/os/Bundle;)I

    move-result v3

    .line 123
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    goto :goto_55

    .line 112
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_4a
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IFavoriteNetwork$Stub;->getFavoriteNetworks()[Landroid/os/Bundle;

    move-result-object v2

    .line 113
    .local v2, "_result":[Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 115
    nop

    .line 142
    .end local v2    # "_result":[Landroid/os/Bundle;
    :goto_55
    return v1

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_34
        :pswitch_1e
    .end packed-switch
.end method
