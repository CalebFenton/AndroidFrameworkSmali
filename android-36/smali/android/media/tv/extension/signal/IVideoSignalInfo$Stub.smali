.class public abstract Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub;
.super Landroid/os/Binder;
.source "IVideoSignalInfo.java"

# interfaces
.implements Landroid/media/tv/extension/signal/IVideoSignalInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/signal/IVideoSignalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addVideoSignalInfoListener:I = 0x1

.field static final blacklist TRANSACTION_getVideoSignalInfo:I = 0x3

.field static final blacklist TRANSACTION_removeVideoSignalInfoListener:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.media.tv.extension.signal.IVideoSignalInfo"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IVideoSignalInfo;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "android.media.tv.extension.signal.IVideoSignalInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/signal/IVideoSignalInfo;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/signal/IVideoSignalInfo;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_10

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 74
    :pswitch_5
    const-string/jumbo v0, "getVideoSignalInfo"

    return-object v0

    .line 70
    :pswitch_9
    const-string/jumbo v0, "removeVideoSignalInfoListener"

    return-object v0

    .line 66
    :pswitch_d
    const-string v0, "addVideoSignalInfoListener"

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

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 207
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 85
    invoke-static {p1}, Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 89
    const-string v0, "android.media.tv.extension.signal.IVideoSignalInfo"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 97
    :cond_16
    packed-switch p1, :pswitch_data_5a

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 122
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub;->getVideoSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 125
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 127
    goto :goto_58

    .line 113
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/signal/IVideoSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IVideoSignalInfoListener;

    move-result-object v2

    .line 114
    .local v2, "_arg0":Landroid/media/tv/extension/signal/IVideoSignalInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub;->removeVideoSignalInfoListener(Landroid/media/tv/extension/signal/IVideoSignalInfoListener;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    goto :goto_58

    .line 102
    .end local v2    # "_arg0":Landroid/media/tv/extension/signal/IVideoSignalInfoListener;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/tv/extension/signal/IVideoSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IVideoSignalInfoListener;

    move-result-object v3

    .line 105
    .local v3, "_arg1":Landroid/media/tv/extension/signal/IVideoSignalInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub;->addVideoSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/signal/IVideoSignalInfoListener;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    nop

    .line 134
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/tv/extension/signal/IVideoSignalInfoListener;
    :goto_58
    return v1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_42
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
