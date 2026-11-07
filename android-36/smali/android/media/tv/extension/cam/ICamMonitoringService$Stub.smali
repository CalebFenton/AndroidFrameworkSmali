.class public abstract Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;
.super Landroid/os/Binder;
.source "ICamMonitoringService.java"

# interfaces
.implements Landroid/media/tv/extension/cam/ICamMonitoringService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/ICamMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamMonitoringService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addCamInfoListener:I = 0x1

.field static final blacklist TRANSACTION_getCamInfo:I = 0x3

.field static final blacklist TRANSACTION_getSlotIds:I = 0x5

.field static final blacklist TRANSACTION_getSlotInfo:I = 0x4

.field static final blacklist TRANSACTION_isCamSupported:I = 0x6

.field static final blacklist TRANSACTION_removeCamInfoListener:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.media.tv.extension.cam.ICamMonitoringService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamMonitoringService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    const-string v0, "android.media.tv.extension.cam.ICamMonitoringService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/cam/ICamMonitoringService;

    if-eqz v1, :cond_14

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/cam/ICamMonitoringService;

    return-object v1

    .line 71
    :cond_14
    new-instance v1, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 80
    packed-switch p0, :pswitch_data_1c

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 104
    :pswitch_5
    const-string/jumbo v0, "isCamSupported"

    return-object v0

    .line 100
    :pswitch_9
    const-string/jumbo v0, "getSlotIds"

    return-object v0

    .line 96
    :pswitch_d
    const-string/jumbo v0, "getSlotInfo"

    return-object v0

    .line 92
    :pswitch_11
    const-string v0, "getCamInfo"

    return-object v0

    .line 88
    :pswitch_14
    const-string/jumbo v0, "removeCamInfoListener"

    return-object v0

    .line 84
    :pswitch_18
    const-string v0, "addCamInfoListener"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 319
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 115
    invoke-static {p1}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 119
    const-string v0, "android.media.tv.extension.cam.ICamMonitoringService"

    .line 120
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 124
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v1

    .line 127
    :cond_16
    packed-switch p1, :pswitch_data_7e

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 176
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->isCamSupported()Z

    move-result v2

    .line 177
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    goto :goto_7c

    .line 169
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {p0}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->getSlotIds()[I

    move-result-object v2

    .line 170
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 172
    goto :goto_7c

    .line 160
    .end local v2    # "_result":[I
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->getSlotInfo(I)Landroid/os/Bundle;

    move-result-object v3

    .line 163
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 165
    goto :goto_7c

    .line 150
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->getCamInfo(I)Landroid/os/Bundle;

    move-result-object v3

    .line 153
    .restart local v3    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 155
    goto :goto_7c

    .line 141
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/cam/ICamInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamInfoListener;

    move-result-object v2

    .line 142
    .local v2, "_arg0":Landroid/media/tv/extension/cam/ICamInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->removeCamInfoListener(Landroid/media/tv/extension/cam/ICamInfoListener;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    goto :goto_7c

    .line 132
    .end local v2    # "_arg0":Landroid/media/tv/extension/cam/ICamInfoListener;
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/cam/ICamInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamInfoListener;

    move-result-object v2

    .line 133
    .restart local v2    # "_arg0":Landroid/media/tv/extension/cam/ICamInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->addCamInfoListener(Landroid/media/tv/extension/cam/ICamInfoListener;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    nop

    .line 186
    .end local v2    # "_arg0":Landroid/media/tv/extension/cam/ICamInfoListener;
    :goto_7c
    return v1

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_58
        :pswitch_46
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
