.class public abstract Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;
.super Landroid/os/Binder;
.source "IPnoScanEvent.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IPnoScanEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IPnoScanEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IPnoScanEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_OnPnoNetworkFound:I = 0x1

.field static final blacklist TRANSACTION_OnPnoScanFailed:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.net.wifi.nl80211.IPnoScanEvent"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IPnoScanEvent;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "android.net.wifi.nl80211.IPnoScanEvent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/nl80211/IPnoScanEvent;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/nl80211/IPnoScanEvent;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_c

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 69
    :pswitch_5
    const-string v0, "OnPnoScanFailed"

    return-object v0

    .line 65
    :pswitch_8
    const-string v0, "OnPnoNetworkFound"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 80
    invoke-static {p1}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 84
    const-string v0, "android.net.wifi.nl80211.IPnoScanEvent"

    .line 85
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 89
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return v1

    .line 92
    :cond_16
    packed-switch p1, :pswitch_data_28

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_1e
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;->OnPnoScanFailed()V

    .line 102
    goto :goto_26

    .line 96
    :pswitch_22
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;->OnPnoNetworkFound()V

    .line 97
    nop

    .line 109
    :goto_26
    return v1

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
