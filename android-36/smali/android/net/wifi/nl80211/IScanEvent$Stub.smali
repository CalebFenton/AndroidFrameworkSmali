.class public abstract Landroid/net/wifi/nl80211/IScanEvent$Stub;
.super Landroid/os/Binder;
.source "IScanEvent.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IScanEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IScanEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IScanEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_OnScanFailed:I = 0x2

.field static final blacklist TRANSACTION_OnScanRequestFailed:I = 0x3

.field static final blacklist TRANSACTION_OnScanResultReady:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.net.wifi.nl80211.IScanEvent"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IScanEvent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IScanEvent;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    const-string v0, "android.net.wifi.nl80211.IScanEvent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/nl80211/IScanEvent;

    if-eqz v1, :cond_14

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/nl80211/IScanEvent;

    return-object v1

    .line 57
    :cond_14
    new-instance v1, Landroid/net/wifi/nl80211/IScanEvent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/IScanEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 66
    packed-switch p0, :pswitch_data_e

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_5
    const-string v0, "OnScanRequestFailed"

    return-object v0

    .line 74
    :pswitch_8
    const-string v0, "OnScanFailed"

    return-object v0

    .line 70
    :pswitch_b
    const-string v0, "OnScanResultReady"

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

    .line 61
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 186
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/net/wifi/nl80211/IScanEvent$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 93
    const-string v0, "android.net.wifi.nl80211.IScanEvent"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v1

    .line 101
    :cond_16
    packed-switch p1, :pswitch_data_32

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 116
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IScanEvent$Stub;->OnScanRequestFailed(I)V

    .line 119
    goto :goto_31

    .line 110
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IScanEvent$Stub;->OnScanFailed()V

    .line 111
    goto :goto_31

    .line 105
    :pswitch_2d
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IScanEvent$Stub;->OnScanResultReady()V

    .line 106
    nop

    .line 126
    :goto_31
    return v1

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
