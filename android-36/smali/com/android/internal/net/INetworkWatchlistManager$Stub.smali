.class public abstract Lcom/android/internal/net/INetworkWatchlistManager$Stub;
.super Landroid/os/Binder;
.source "INetworkWatchlistManager.java"

# interfaces
.implements Lcom/android/internal/net/INetworkWatchlistManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/INetworkWatchlistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/INetworkWatchlistManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.net.INetworkWatchlistManager"

.field static final greylist-max-o TRANSACTION_getWatchlistConfigHash:I = 0x5

.field static final greylist-max-o TRANSACTION_reloadWatchlist:I = 0x3

.field static final greylist-max-o TRANSACTION_reportWatchlistIfNecessary:I = 0x4

.field static final greylist-max-o TRANSACTION_startWatchlistLogging:I = 0x1

.field static final greylist-max-o TRANSACTION_stopWatchlistLogging:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "com.android.internal.net.INetworkWatchlistManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetworkWatchlistManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "com.android.internal.net.INetworkWatchlistManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/net/INetworkWatchlistManager;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Lcom/android/internal/net/INetworkWatchlistManager;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Lcom/android/internal/net/INetworkWatchlistManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_18

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_5
    const-string v0, "getWatchlistConfigHash"

    return-object v0

    .line 86
    :pswitch_8
    const-string/jumbo v0, "reportWatchlistIfNecessary"

    return-object v0

    .line 82
    :pswitch_c
    const-string/jumbo v0, "reloadWatchlist"

    return-object v0

    .line 78
    :pswitch_10
    const-string/jumbo v0, "stopWatchlistLogging"

    return-object v0

    .line 74
    :pswitch_14
    const-string/jumbo v0, "startWatchlistLogging"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
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

    .line 260
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 105
    const-string v0, "com.android.internal.net.INetworkWatchlistManager"

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 113
    :cond_16
    packed-switch p1, :pswitch_data_4e

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 143
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->getWatchlistConfigHash()[B

    move-result-object v2

    .line 144
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 146
    goto :goto_4d

    .line 137
    .end local v2    # "_result":[B
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->reportWatchlistIfNecessary()V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    goto :goto_4d

    .line 131
    :pswitch_30
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->reloadWatchlist()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    goto :goto_4d

    .line 124
    :pswitch_37
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->stopWatchlistLogging()Z

    move-result v2

    .line 125
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 127
    goto :goto_4d

    .line 117
    .end local v2    # "_result":Z
    :pswitch_42
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->startWatchlistLogging()Z

    move-result v2

    .line 118
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    nop

    .line 153
    .end local v2    # "_result":Z
    :goto_4d
    return v1

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_42
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
