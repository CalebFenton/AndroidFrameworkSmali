.class public abstract Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsProviderCallback.java"

# interfaces
.implements Landroid/net/netstats/provider/INetworkStatsProviderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/netstats/provider/INetworkStatsProviderCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notifyAlertReached:I = 0x2

.field static final blacklist TRANSACTION_notifyLimitReached:I = 0x4

.field static final blacklist TRANSACTION_notifyStatsUpdated:I = 0x1

.field static final blacklist TRANSACTION_notifyWarningReached:I = 0x3

.field static final blacklist TRANSACTION_unregister:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.net.netstats.provider.INetworkStatsProviderCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/netstats/provider/INetworkStatsProviderCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.net.netstats.provider.INetworkStatsProviderCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_14

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 91
    :pswitch_5
    const-string v0, "unregister"

    return-object v0

    .line 87
    :pswitch_8
    const-string v0, "notifyLimitReached"

    return-object v0

    .line 83
    :pswitch_b
    const-string v0, "notifyWarningReached"

    return-object v0

    .line 79
    :pswitch_e
    const-string v0, "notifyAlertReached"

    return-object v0

    .line 75
    :pswitch_11
    const-string v0, "notifyStatsUpdated"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
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

    .line 237
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 106
    const-string v0, "android.net.netstats.provider.INetworkStatsProviderCallback"

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
    packed-switch p1, :pswitch_data_4a

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 145
    :pswitch_1e
    invoke-virtual {p0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;->unregister()V

    .line 146
    goto :goto_49

    .line 140
    :pswitch_22
    invoke-virtual {p0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;->notifyLimitReached()V

    .line 141
    goto :goto_49

    .line 135
    :pswitch_26
    invoke-virtual {p0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;->notifyWarningReached()V

    .line 136
    goto :goto_49

    .line 130
    :pswitch_2a
    invoke-virtual {p0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;->notifyAlertReached()V

    .line 131
    goto :goto_49

    .line 119
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 121
    .local v2, "_arg0":I
    sget-object v3, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats;

    .line 123
    .local v3, "_arg1":Landroid/net/NetworkStats;
    sget-object v4, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStats;

    .line 124
    .local v4, "_arg2":Landroid/net/NetworkStats;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;->notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    .line 126
    nop

    .line 153
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/NetworkStats;
    .end local v4    # "_arg2":Landroid/net/NetworkStats;
    :goto_49
    return v1

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
