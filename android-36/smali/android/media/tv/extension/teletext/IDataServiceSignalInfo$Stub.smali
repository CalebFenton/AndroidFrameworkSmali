.class public abstract Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub;
.super Landroid/os/Binder;
.source "IDataServiceSignalInfo.java"

# interfaces
.implements Landroid/media/tv/extension/teletext/IDataServiceSignalInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/teletext/IDataServiceSignalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addDataServiceSignalInfoListener:I = 0x2

.field static final blacklist TRANSACTION_getDataServiceSignalInfo:I = 0x1

.field static final blacklist TRANSACTION_removeDataServiceSignalInfoListener:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.media.tv.extension.teletext.IDataServiceSignalInfo"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/teletext/IDataServiceSignalInfo;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "android.media.tv.extension.teletext.IDataServiceSignalInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_10

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 77
    :pswitch_5
    const-string/jumbo v0, "removeDataServiceSignalInfoListener"

    return-object v0

    .line 73
    :pswitch_9
    const-string v0, "addDataServiceSignalInfoListener"

    return-object v0

    .line 69
    :pswitch_c
    const-string v0, "getDataServiceSignalInfo"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 216
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 88
    invoke-static {p1}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 92
    const-string v0, "android.media.tv.extension.teletext.IDataServiceSignalInfo"

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 100
    :cond_16
    packed-switch p1, :pswitch_data_5e

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 126
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;

    move-result-object v3

    .line 129
    .local v3, "_arg1":Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub;->removeDataServiceSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    goto :goto_5c

    .line 115
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;

    move-result-object v3

    .line 118
    .restart local v3    # "_arg1":Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub;->addDataServiceSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    goto :goto_5c

    .line 105
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub;->getDataServiceSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 108
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 110
    nop

    .line 139
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :goto_5c
    return v1

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_34
        :pswitch_1e
    .end packed-switch
.end method
