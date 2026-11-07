.class public abstract Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;
.super Landroid/os/Binder;
.source "IQuickAccessWalletServiceCallbacks.java"

# interfaces
.implements Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onGestureTargetActivityPendingIntentReceived:I = 0x5

.field static final blacklist TRANSACTION_onGetWalletCardsFailure:I = 0x2

.field static final blacklist TRANSACTION_onGetWalletCardsSuccess:I = 0x1

.field static final blacklist TRANSACTION_onTargetActivityPendingIntentReceived:I = 0x4

.field static final blacklist TRANSACTION_onWalletServiceEvent:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletServiceCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletServiceCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 78
    packed-switch p0, :pswitch_data_1a

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 98
    :pswitch_5
    const-string/jumbo v0, "onGestureTargetActivityPendingIntentReceived"

    return-object v0

    .line 94
    :pswitch_9
    const-string/jumbo v0, "onTargetActivityPendingIntentReceived"

    return-object v0

    .line 90
    :pswitch_d
    const-string/jumbo v0, "onWalletServiceEvent"

    return-object v0

    .line 86
    :pswitch_11
    const-string/jumbo v0, "onGetWalletCardsFailure"

    return-object v0

    .line 82
    :pswitch_15
    const-string/jumbo v0, "onGetWalletCardsSuccess"

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

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 261
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 109
    invoke-static {p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 113
    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletServiceCallbacks"

    .line 114
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 121
    :cond_16
    packed-switch p1, :pswitch_data_6a

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 158
    :pswitch_1e
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 159
    .local v2, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->onGestureTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V

    .line 161
    goto :goto_69

    .line 150
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_2d
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 151
    .restart local v2    # "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->onTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V

    .line 153
    goto :goto_69

    .line 142
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_3c
    sget-object v2, Landroid/service/quickaccesswallet/WalletServiceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/WalletServiceEvent;

    .line 143
    .local v2, "_arg0":Landroid/service/quickaccesswallet/WalletServiceEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    .line 145
    goto :goto_69

    .line 134
    .end local v2    # "_arg0":Landroid/service/quickaccesswallet/WalletServiceEvent;
    :pswitch_4b
    sget-object v2, Landroid/service/quickaccesswallet/GetWalletCardsError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/GetWalletCardsError;

    .line 135
    .local v2, "_arg0":Landroid/service/quickaccesswallet/GetWalletCardsError;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->onGetWalletCardsFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    .line 137
    goto :goto_69

    .line 126
    .end local v2    # "_arg0":Landroid/service/quickaccesswallet/GetWalletCardsError;
    :pswitch_5a
    sget-object v2, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    .line 127
    .local v2, "_arg0":Landroid/service/quickaccesswallet/GetWalletCardsResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->onGetWalletCardsSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    .line 129
    nop

    .line 168
    .end local v2    # "_arg0":Landroid/service/quickaccesswallet/GetWalletCardsResponse;
    :goto_69
    return v1

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_4b
        :pswitch_3c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
