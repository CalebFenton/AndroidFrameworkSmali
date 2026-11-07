.class public abstract Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;
.super Landroid/os/Binder;
.source "IQuickAccessWalletService.java"

# interfaces
.implements Landroid/service/quickaccesswallet/IQuickAccessWalletService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/IQuickAccessWalletService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onGestureTargetActivityIntentRequested:I = 0x7

.field static final blacklist TRANSACTION_onTargetActivityIntentRequested:I = 0x6

.field static final blacklist TRANSACTION_onWalletCardSelected:I = 0x2

.field static final blacklist TRANSACTION_onWalletCardsRequested:I = 0x1

.field static final blacklist TRANSACTION_onWalletDismissed:I = 0x3

.field static final blacklist TRANSACTION_registerWalletServiceEventListener:I = 0x4

.field static final blacklist TRANSACTION_unregisterWalletServiceEventListener:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletService"

    invoke-virtual {p0, p0, v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_4
    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    if-eqz v1, :cond_14

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    return-object v1

    .line 75
    :cond_14
    new-instance v1, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 84
    packed-switch p0, :pswitch_data_22

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 112
    :pswitch_5
    const-string/jumbo v0, "onGestureTargetActivityIntentRequested"

    return-object v0

    .line 108
    :pswitch_9
    const-string/jumbo v0, "onTargetActivityIntentRequested"

    return-object v0

    .line 104
    :pswitch_d
    const-string/jumbo v0, "unregisterWalletServiceEventListener"

    return-object v0

    .line 100
    :pswitch_11
    const-string/jumbo v0, "registerWalletServiceEventListener"

    return-object v0

    .line 96
    :pswitch_15
    const-string/jumbo v0, "onWalletDismissed"

    return-object v0

    .line 92
    :pswitch_19
    const-string/jumbo v0, "onWalletCardSelected"

    return-object v0

    .line 88
    :pswitch_1d
    const-string/jumbo v0, "onWalletCardsRequested"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_19
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

    .line 79
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 319
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 123
    invoke-static {p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 127
    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletService"

    .line 128
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 135
    :cond_16
    packed-switch p1, :pswitch_data_8e

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 189
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    move-result-object v2

    .line 190
    .local v2, "_arg0":Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->onGestureTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    .line 192
    goto :goto_8c

    .line 181
    .end local v2    # "_arg0":Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    move-result-object v2

    .line 182
    .restart local v2    # "_arg0":Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->onTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    .line 184
    goto :goto_8c

    .line 173
    .end local v2    # "_arg0":Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    :pswitch_3c
    sget-object v2, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    .line 174
    .local v2, "_arg0":Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->unregisterWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    .line 176
    goto :goto_8c

    .line 163
    .end local v2    # "_arg0":Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    :pswitch_4b
    sget-object v2, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    .line 165
    .restart local v2    # "_arg0":Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    move-result-object v3

    .line 166
    .local v3, "_arg1":Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2, v3}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->registerWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    .line 168
    goto :goto_8c

    .line 157
    .end local v2    # "_arg0":Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    .end local v3    # "_arg1":Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    :pswitch_62
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->onWalletDismissed()V

    .line 158
    goto :goto_8c

    .line 150
    :pswitch_66
    sget-object v2, Landroid/service/quickaccesswallet/SelectWalletCardRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/SelectWalletCardRequest;

    .line 151
    .local v2, "_arg0":Landroid/service/quickaccesswallet/SelectWalletCardRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    .line 153
    goto :goto_8c

    .line 140
    .end local v2    # "_arg0":Landroid/service/quickaccesswallet/SelectWalletCardRequest;
    :pswitch_75
    sget-object v2, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    .line 142
    .local v2, "_arg0":Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    move-result-object v3

    .line 143
    .restart local v3    # "_arg1":Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2, v3}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    .line 145
    nop

    .line 199
    .end local v2    # "_arg0":Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .end local v3    # "_arg1":Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    :goto_8c
    return v1

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_75
        :pswitch_66
        :pswitch_62
        :pswitch_4b
        :pswitch_3c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
