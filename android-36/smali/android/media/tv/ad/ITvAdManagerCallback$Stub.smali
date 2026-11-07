.class public abstract Landroid/media/tv/ad/ITvAdManagerCallback$Stub;
.super Landroid/os/Binder;
.source "ITvAdManagerCallback.java"

# interfaces
.implements Landroid/media/tv/ad/ITvAdManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/ITvAdManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/ITvAdManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAdServiceAdded:I = 0x1

.field static final blacklist TRANSACTION_onAdServiceRemoved:I = 0x2

.field static final blacklist TRANSACTION_onAdServiceUpdated:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.media.tv.ad.ITvAdManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ad/ITvAdManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdManagerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "android.media.tv.ad.ITvAdManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ad/ITvAdManagerCallback;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ad/ITvAdManagerCallback;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Landroid/media/tv/ad/ITvAdManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/ITvAdManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "onAdServiceUpdated"

    return-object v0

    .line 72
    :pswitch_8
    const-string v0, "onAdServiceRemoved"

    return-object v0

    .line 68
    :pswitch_b
    const-string v0, "onAdServiceAdded"

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

    .line 190
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 87
    invoke-static {p1}, Landroid/media/tv/ad/ITvAdManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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
    const-string v0, "android.media.tv.ad.ITvAdManagerCallback"

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
    packed-switch p1, :pswitch_data_40

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 120
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdManagerCallback$Stub;->onAdServiceUpdated(Ljava/lang/String;)V

    .line 123
    goto :goto_3f

    .line 112
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdManagerCallback$Stub;->onAdServiceRemoved(Ljava/lang/String;)V

    .line 115
    goto :goto_3f

    .line 104
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdManagerCallback$Stub;->onAdServiceAdded(Ljava/lang/String;)V

    .line 107
    nop

    .line 130
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_3f
    return v1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
