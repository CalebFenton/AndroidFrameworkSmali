.class public abstract Landroid/media/tv/extension/scan/IRegionChannelList$Stub;
.super Landroid/os/Binder;
.source "IRegionChannelList.java"

# interfaces
.implements Landroid/media/tv/extension/scan/IRegionChannelList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/IRegionChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IRegionChannelList$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_setListener:I = 0x2

.field static final blacklist TRANSACTION_setRegionChannelList:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.media.tv.extension.scan.IRegionChannelList"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/scan/IRegionChannelList$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/IRegionChannelList;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "android.media.tv.extension.scan.IRegionChannelList"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/scan/IRegionChannelList;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/scan/IRegionChannelList;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Landroid/media/tv/extension/scan/IRegionChannelList$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/scan/IRegionChannelList$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_e

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 71
    :pswitch_5
    const-string/jumbo v0, "setListener"

    return-object v0

    .line 67
    :pswitch_9
    const-string/jumbo v0, "setRegionChannelList"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 82
    invoke-static {p1}, Landroid/media/tv/extension/scan/IRegionChannelList$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 86
    const-string v0, "android.media.tv.extension.scan.IRegionChannelList"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 91
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v1

    .line 94
    :cond_16
    packed-switch p1, :pswitch_data_48

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 109
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/scan/IRegionChannelListListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/IRegionChannelListListener;

    move-result-object v2

    .line 110
    .local v2, "_arg0":Landroid/media/tv/extension/scan/IRegionChannelListListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IRegionChannelList$Stub;->setListener(Landroid/media/tv/extension/scan/IRegionChannelListListener;)I

    move-result v3

    .line 112
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    goto :goto_46

    .line 99
    .end local v2    # "_arg0":Landroid/media/tv/extension/scan/IRegionChannelListListener;
    .end local v3    # "_result":I
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/IRegionChannelList$Stub;->setRegionChannelList(Ljava/lang/String;)I

    move-result v3

    .line 102
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    nop

    .line 121
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :goto_46
    return v1

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_34
        :pswitch_1e
    .end packed-switch
.end method
