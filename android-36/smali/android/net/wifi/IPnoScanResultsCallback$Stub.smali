.class public abstract Landroid/net/wifi/IPnoScanResultsCallback$Stub;
.super Landroid/os/Binder;
.source "IPnoScanResultsCallback.java"

# interfaces
.implements Landroid/net/wifi/IPnoScanResultsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IPnoScanResultsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IPnoScanResultsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onRegisterFailed:I = 0x3

.field static final blacklist TRANSACTION_onRegisterSuccess:I = 0x2

.field static final blacklist TRANSACTION_onRemoved:I = 0x4

.field static final blacklist TRANSACTION_onScanResultsAvailable:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.net.wifi.IPnoScanResultsCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IPnoScanResultsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IPnoScanResultsCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.net.wifi.IPnoScanResultsCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IPnoScanResultsCallback;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/IPnoScanResultsCallback;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/net/wifi/IPnoScanResultsCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IPnoScanResultsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_12

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string v0, "onRemoved"

    return-object v0

    .line 80
    :pswitch_8
    const-string v0, "onRegisterFailed"

    return-object v0

    .line 76
    :pswitch_b
    const-string v0, "onRegisterSuccess"

    return-object v0

    .line 72
    :pswitch_e
    const-string v0, "onScanResultsAvailable"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 212
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/net/wifi/IPnoScanResultsCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    const-string v0, "android.net.wifi.IPnoScanResultsCallback"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_16
    packed-switch p1, :pswitch_data_3e

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 131
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IPnoScanResultsCallback$Stub;->onRemoved(I)V

    .line 133
    goto :goto_3c

    .line 124
    .end local v2    # "_arg0":I
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IPnoScanResultsCallback$Stub;->onRegisterFailed(I)V

    .line 126
    goto :goto_3c

    .line 118
    .end local v2    # "_arg0":I
    :pswitch_2e
    invoke-virtual {p0}, Landroid/net/wifi/IPnoScanResultsCallback$Stub;->onRegisterSuccess()V

    .line 119
    goto :goto_3c

    .line 112
    :pswitch_32
    sget-object v2, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 113
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, v2}, Landroid/net/wifi/IPnoScanResultsCallback$Stub;->onScanResultsAvailable(Ljava/util/List;)V

    .line 114
    nop

    .line 140
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :goto_3c
    return v1

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2e
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
