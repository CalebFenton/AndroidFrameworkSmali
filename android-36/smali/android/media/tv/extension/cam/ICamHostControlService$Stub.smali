.class public abstract Landroid/media/tv/extension/cam/ICamHostControlService$Stub;
.super Landroid/os/Binder;
.source "ICamHostControlService.java"

# interfaces
.implements Landroid/media/tv/extension/cam/ICamHostControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/ICamHostControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamHostControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addCamHostcontrolInfoListener:I = 0x1

.field static final blacklist TRANSACTION_removeCamHostcontrolInfoListener:I = 0x2

.field static final blacklist TRANSACTION_sendCamHostControlAskRelease:I = 0x3

.field static final blacklist TRANSACTION_setHostControlMode:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.media.tv.extension.cam.ICamHostControlService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/cam/ICamHostControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamHostControlService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.media.tv.extension.cam.ICamHostControlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/cam/ICamHostControlService;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/cam/ICamHostControlService;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/media/tv/extension/cam/ICamHostControlService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/cam/ICamHostControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_14

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_5
    const-string/jumbo v0, "setHostControlMode"

    return-object v0

    .line 81
    :pswitch_9
    const-string/jumbo v0, "sendCamHostControlAskRelease"

    return-object v0

    .line 77
    :pswitch_d
    const-string/jumbo v0, "removeCamHostcontrolInfoListener"

    return-object v0

    .line 73
    :pswitch_11
    const-string v0, "addCamHostcontrolInfoListener"

    return-object v0

    :pswitch_data_14
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

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 250
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/media/tv/extension/cam/ICamHostControlService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    const-string v0, "android.media.tv.extension.cam.ICamHostControlService"

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
    packed-switch p1, :pswitch_data_70

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 143
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 146
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/cam/ICamHostControlService$Stub;->setHostControlMode(Ljava/lang/String;Z)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto :goto_6e

    .line 131
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/tv/extension/cam/ICamHostControlAskReleaseReplyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamHostControlAskReleaseReplyCallback;

    move-result-object v3

    .line 134
    .local v3, "_arg1":Landroid/media/tv/extension/cam/ICamHostControlAskReleaseReplyCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/cam/ICamHostControlService$Stub;->sendCamHostControlAskRelease(Ljava/lang/String;Landroid/media/tv/extension/cam/ICamHostControlAskReleaseReplyCallback;)I

    move-result v4

    .line 136
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    goto :goto_6e

    .line 122
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/tv/extension/cam/ICamHostControlAskReleaseReplyCallback;
    .end local v4    # "_result":I
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/cam/ICamHostControlInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamHostControlInfoListener;

    move-result-object v2

    .line 123
    .local v2, "_arg0":Landroid/media/tv/extension/cam/ICamHostControlInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/cam/ICamHostControlService$Stub;->removeCamHostcontrolInfoListener(Landroid/media/tv/extension/cam/ICamHostControlInfoListener;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    goto :goto_6e

    .line 113
    .end local v2    # "_arg0":Landroid/media/tv/extension/cam/ICamHostControlInfoListener;
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/cam/ICamHostControlInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamHostControlInfoListener;

    move-result-object v2

    .line 114
    .restart local v2    # "_arg0":Landroid/media/tv/extension/cam/ICamHostControlInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/cam/ICamHostControlService$Stub;->addCamHostcontrolInfoListener(Landroid/media/tv/extension/cam/ICamHostControlInfoListener;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    nop

    .line 156
    .end local v2    # "_arg0":Landroid/media/tv/extension/cam/ICamHostControlInfoListener;
    :goto_6e
    return v1

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_4a
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
