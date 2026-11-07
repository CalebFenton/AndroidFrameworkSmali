.class public abstract Landroid/media/tv/extension/cam/ICamPinService$Stub;
.super Landroid/os/Binder;
.source "ICamPinService.java"

# interfaces
.implements Landroid/media/tv/extension/cam/ICamPinService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/ICamPinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamPinService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addCamPinCapabilityListener:I = 0x1

.field static final blacklist TRANSACTION_getCamPinCapability:I = 0x4

.field static final blacklist TRANSACTION_removeCamPinCapabilityListener:I = 0x2

.field static final blacklist TRANSACTION_requestCamPinValidation:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.media.tv.extension.cam.ICamPinService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/cam/ICamPinService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamPinService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.media.tv.extension.cam.ICamPinService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/cam/ICamPinService;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/cam/ICamPinService;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/media/tv/extension/cam/ICamPinService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/cam/ICamPinService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_14

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 86
    :pswitch_5
    const-string v0, "getCamPinCapability"

    return-object v0

    .line 82
    :pswitch_8
    const-string/jumbo v0, "requestCamPinValidation"

    return-object v0

    .line 78
    :pswitch_c
    const-string/jumbo v0, "removeCamPinCapabilityListener"

    return-object v0

    .line 74
    :pswitch_10
    const-string v0, "addCamPinCapabilityListener"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 261
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 97
    invoke-static {p1}, Landroid/media/tv/extension/cam/ICamPinService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    const-string v0, "android.media.tv.extension.cam.ICamPinService"

    .line 102
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 106
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v1

    .line 109
    :cond_16
    packed-switch p1, :pswitch_data_7c

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 146
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .local v2, "_arg0":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/cam/ICamPinService$Stub;->getCamPinCapability(ILandroid/os/Bundle;)I

    move-result v4

    .line 151
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    goto :goto_7a

    .line 132
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 134
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 136
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/tv/extension/cam/ICamPinStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamPinStatusListener;

    move-result-object v4

    .line 137
    .local v4, "_arg2":Landroid/media/tv/extension/cam/ICamPinStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/extension/cam/ICamPinService$Stub;->requestCamPinValidation(I[ILandroid/media/tv/extension/cam/ICamPinStatusListener;)I

    move-result v5

    .line 139
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    goto :goto_7a

    .line 123
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":Landroid/media/tv/extension/cam/ICamPinStatusListener;
    .end local v5    # "_result":I
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/cam/ICamPinCapabilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamPinCapabilityListener;

    move-result-object v2

    .line 124
    .local v2, "_arg0":Landroid/media/tv/extension/cam/ICamPinCapabilityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/cam/ICamPinService$Stub;->removeCamPinCapabilityListener(Landroid/media/tv/extension/cam/ICamPinCapabilityListener;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_7a

    .line 114
    .end local v2    # "_arg0":Landroid/media/tv/extension/cam/ICamPinCapabilityListener;
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/cam/ICamPinCapabilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamPinCapabilityListener;

    move-result-object v2

    .line 115
    .restart local v2    # "_arg0":Landroid/media/tv/extension/cam/ICamPinCapabilityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/cam/ICamPinService$Stub;->addCamPinCapabilityListener(Landroid/media/tv/extension/cam/ICamPinCapabilityListener;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    nop

    .line 161
    .end local v2    # "_arg0":Landroid/media/tv/extension/cam/ICamPinCapabilityListener;
    :goto_7a
    return v1

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_68
        :pswitch_56
        :pswitch_38
        :pswitch_1e
    .end packed-switch
.end method
