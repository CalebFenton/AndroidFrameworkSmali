.class public abstract Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.super Landroid/os/Binder;
.source "ICarrierMessagingCallback.java"

# interfaces
.implements Landroid/service/carrier/ICarrierMessagingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/ICarrierMessagingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.carrier.ICarrierMessagingCallback"

.field static final greylist-max-o TRANSACTION_onDownloadMmsComplete:I = 0x5

.field static final greylist-max-o TRANSACTION_onFilterComplete:I = 0x1

.field static final greylist-max-o TRANSACTION_onSendMmsComplete:I = 0x4

.field static final greylist-max-o TRANSACTION_onSendMultipartSmsComplete:I = 0x3

.field static final greylist-max-o TRANSACTION_onSendSmsComplete:I = 0x2


# direct methods
.method public constructor greylist-max-p <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.service.carrier.ICarrierMessagingCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/carrier/ICarrierMessagingCallback;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/service/carrier/ICarrierMessagingCallback;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_1a

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 91
    :pswitch_5
    const-string/jumbo v0, "onDownloadMmsComplete"

    return-object v0

    .line 87
    :pswitch_9
    const-string/jumbo v0, "onSendMmsComplete"

    return-object v0

    .line 83
    :pswitch_d
    const-string/jumbo v0, "onSendMultipartSmsComplete"

    return-object v0

    .line 79
    :pswitch_11
    const-string/jumbo v0, "onSendSmsComplete"

    return-object v0

    .line 75
    :pswitch_15
    const-string/jumbo v0, "onFilterComplete"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 258
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 106
    const-string v0, "android.service.carrier.ICarrierMessagingCallback"

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 114
    :cond_16
    packed-switch p1, :pswitch_data_62

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 157
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onDownloadMmsComplete(I)V

    .line 160
    goto :goto_61

    .line 147
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 150
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2, v3}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendMmsComplete(I[B)V

    .line 152
    goto :goto_61

    .line 137
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 140
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2, v3}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendMultipartSmsComplete(I[I)V

    .line 142
    goto :goto_61

    .line 127
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 129
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 130
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2, v3}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendSmsComplete(II)V

    .line 132
    goto :goto_61

    .line 119
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onFilterComplete(I)V

    .line 122
    nop

    .line 167
    .end local v2    # "_arg0":I
    :goto_61
    return v1

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_56
        :pswitch_47
        :pswitch_38
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
