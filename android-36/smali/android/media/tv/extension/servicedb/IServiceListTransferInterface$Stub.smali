.class public abstract Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub;
.super Landroid/os/Binder;
.source "IServiceListTransferInterface.java"

# interfaces
.implements Landroid/media/tv/extension/servicedb/IServiceListTransferInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/servicedb/IServiceListTransferInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createExportSession:I = 0x1

.field static final blacklist TRANSACTION_createImportSession:I = 0x2

.field static final blacklist TRANSACTION_createSetChannelListSession:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.media.tv.extension.servicedb.IServiceListTransferInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceListTransferInterface;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "android.media.tv.extension.servicedb.IServiceListTransferInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_e

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 76
    :pswitch_5
    const-string v0, "createSetChannelListSession"

    return-object v0

    .line 72
    :pswitch_8
    const-string v0, "createImportSession"

    return-object v0

    .line 68
    :pswitch_b
    const-string v0, "createExportSession"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 214
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 87
    invoke-static {p1}, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 91
    const-string v0, "android.media.tv.extension.servicedb.IServiceListTransferInterface"

    .line 92
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 99
    :cond_16
    packed-switch p1, :pswitch_data_62

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 124
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/servicedb/IServiceListSetChannelListListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceListSetChannelListListener;

    move-result-object v2

    .line 125
    .local v2, "_arg0":Landroid/media/tv/extension/servicedb/IServiceListSetChannelListListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub;->createSetChannelListSession(Landroid/media/tv/extension/servicedb/IServiceListSetChannelListListener;)Landroid/os/IBinder;

    move-result-object v3

    .line 127
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 129
    goto :goto_60

    .line 114
    .end local v2    # "_arg0":Landroid/media/tv/extension/servicedb/IServiceListSetChannelListListener;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/servicedb/IServiceListImportListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceListImportListener;

    move-result-object v2

    .line 115
    .local v2, "_arg0":Landroid/media/tv/extension/servicedb/IServiceListImportListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub;->createImportSession(Landroid/media/tv/extension/servicedb/IServiceListImportListener;)Landroid/os/IBinder;

    move-result-object v3

    .line 117
    .restart local v3    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 119
    goto :goto_60

    .line 104
    .end local v2    # "_arg0":Landroid/media/tv/extension/servicedb/IServiceListImportListener;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/servicedb/IServiceListExportListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceListExportListener;

    move-result-object v2

    .line 105
    .local v2, "_arg0":Landroid/media/tv/extension/servicedb/IServiceListExportListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub;->createExportSession(Landroid/media/tv/extension/servicedb/IServiceListExportListener;)Landroid/os/IBinder;

    move-result-object v3

    .line 107
    .restart local v3    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 109
    nop

    .line 136
    .end local v2    # "_arg0":Landroid/media/tv/extension/servicedb/IServiceListExportListener;
    .end local v3    # "_result":Landroid/os/IBinder;
    :goto_60
    return v1

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_34
        :pswitch_1e
    .end packed-switch
.end method
