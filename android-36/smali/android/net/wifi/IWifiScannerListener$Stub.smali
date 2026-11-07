.class public abstract Landroid/net/wifi/IWifiScannerListener$Stub;
.super Landroid/os/Binder;
.source "IWifiScannerListener.java"

# interfaces
.implements Landroid/net/wifi/IWifiScannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiScannerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiScannerListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onFailure:I = 0x2

.field static final blacklist TRANSACTION_onFullResult:I = 0x4

.field static final blacklist TRANSACTION_onFullResults:I = 0x7

.field static final blacklist TRANSACTION_onPnoNetworkFound:I = 0x6

.field static final blacklist TRANSACTION_onResults:I = 0x3

.field static final blacklist TRANSACTION_onSingleScanCompleted:I = 0x5

.field static final blacklist TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.net.wifi.IWifiScannerListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiScannerListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScannerListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    const-string v0, "android.net.wifi.IWifiScannerListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IWifiScannerListener;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/IWifiScannerListener;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Landroid/net/wifi/IWifiScannerListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiScannerListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 77
    packed-switch p0, :pswitch_data_1a

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 105
    :pswitch_5
    const-string v0, "onFullResults"

    return-object v0

    .line 101
    :pswitch_8
    const-string v0, "onPnoNetworkFound"

    return-object v0

    .line 97
    :pswitch_b
    const-string v0, "onSingleScanCompleted"

    return-object v0

    .line 93
    :pswitch_e
    const-string v0, "onFullResult"

    return-object v0

    .line 89
    :pswitch_11
    const-string v0, "onResults"

    return-object v0

    .line 85
    :pswitch_14
    const-string v0, "onFailure"

    return-object v0

    .line 81
    :pswitch_17
    const-string v0, "onSuccess"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
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

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 297
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 116
    invoke-static {p1}, Landroid/net/wifi/IWifiScannerListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 120
    const-string v0, "android.net.wifi.IWifiScannerListener"

    .line 121
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 128
    :cond_16
    packed-switch p1, :pswitch_data_64

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 173
    :pswitch_1e
    sget-object v2, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 174
    .local v2, "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiScannerListener$Stub;->onFullResults(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V

    .line 175
    goto :goto_62

    .line 166
    .end local v2    # "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    :pswitch_2a
    sget-object v2, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/wifi/ScanResult;

    .line 167
    .local v2, "_arg0":[Landroid/net/wifi/ScanResult;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiScannerListener$Stub;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    .line 168
    goto :goto_62

    .line 160
    .end local v2    # "_arg0":[Landroid/net/wifi/ScanResult;
    :pswitch_36
    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerListener$Stub;->onSingleScanCompleted()V

    .line 161
    goto :goto_62

    .line 154
    :pswitch_3a
    sget-object v2, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 155
    .local v2, "_arg0":Landroid/net/wifi/ScanResult;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiScannerListener$Stub;->onFullResult(Landroid/net/wifi/ScanResult;)V

    .line 156
    goto :goto_62

    .line 147
    .end local v2    # "_arg0":Landroid/net/wifi/ScanResult;
    :pswitch_46
    sget-object v2, Landroid/net/wifi/WifiScanner$ScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/wifi/WifiScanner$ScanData;

    .line 148
    .local v2, "_arg0":[Landroid/net/wifi/WifiScanner$ScanData;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiScannerListener$Stub;->onResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 149
    goto :goto_62

    .line 138
    .end local v2    # "_arg0":[Landroid/net/wifi/WifiScanner$ScanData;
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/IWifiScannerListener$Stub;->onFailure(ILjava/lang/String;)V

    .line 142
    goto :goto_62

    .line 132
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_5e
    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerListener$Stub;->onSuccess()V

    .line 133
    nop

    .line 182
    :goto_62
    return v1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_52
        :pswitch_46
        :pswitch_3a
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
