.class public abstract Landroid/media/tv/extension/cam/IContentControlService$Stub;
.super Landroid/os/Binder;
.source "IContentControlService.java"

# interfaces
.implements Landroid/media/tv/extension/cam/IContentControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/IContentControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/IContentControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addCamDrmInfoListener:I = 0x1

.field static final blacklist TRANSACTION_getCamDrmInfo:I = 0x3

.field static final blacklist TRANSACTION_removeCamDrmInfoListener:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.media.tv.extension.cam.IContentControlService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/cam/IContentControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/IContentControlService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "android.media.tv.extension.cam.IContentControlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/cam/IContentControlService;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/cam/IContentControlService;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Landroid/media/tv/extension/cam/IContentControlService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/cam/IContentControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "getCamDrmInfo"

    return-object v0

    .line 73
    :pswitch_8
    const-string/jumbo v0, "removeCamDrmInfoListener"

    return-object v0

    .line 69
    :pswitch_c
    const-string v0, "addCamDrmInfoListener"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
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
    invoke-static {p1}, Landroid/media/tv/extension/cam/IContentControlService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 92
    const-string v0, "android.media.tv.extension.cam.IContentControlService"

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

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 123
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .local v2, "_arg0":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/cam/IContentControlService$Stub;->getCamDrmInfo(ILandroid/os/Bundle;)I

    move-result v4

    .line 128
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 131
    goto :goto_5c

    .line 114
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/cam/ICamDrmInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamDrmInfoListener;

    move-result-object v2

    .line 115
    .local v2, "_arg0":Landroid/media/tv/extension/cam/ICamDrmInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/cam/IContentControlService$Stub;->removeCamDrmInfoListener(Landroid/media/tv/extension/cam/ICamDrmInfoListener;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    goto :goto_5c

    .line 105
    .end local v2    # "_arg0":Landroid/media/tv/extension/cam/ICamDrmInfoListener;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/cam/ICamDrmInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamDrmInfoListener;

    move-result-object v2

    .line 106
    .restart local v2    # "_arg0":Landroid/media/tv/extension/cam/ICamDrmInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/cam/IContentControlService$Stub;->addCamDrmInfoListener(Landroid/media/tv/extension/cam/ICamDrmInfoListener;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    nop

    .line 138
    .end local v2    # "_arg0":Landroid/media/tv/extension/cam/ICamDrmInfoListener;
    :goto_5c
    return v1

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_38
        :pswitch_1e
    .end packed-switch
.end method
