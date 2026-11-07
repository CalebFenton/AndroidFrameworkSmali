.class public abstract Landroid/bluetooth/le/IScannerCallback$Stub;
.super Landroid/os/Binder;
.source "IScannerCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IScannerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IScannerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IScannerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.le.IScannerCallback"

.field static final blacklist TRANSACTION_onBatchScanResults:I = 0x3

.field static final blacklist TRANSACTION_onFoundOrLost:I = 0x4

.field static final blacklist TRANSACTION_onScanManagerErrorCallback:I = 0x5

.field static final blacklist TRANSACTION_onScanResult:I = 0x2

.field static final blacklist TRANSACTION_onScannerRegistered:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/le/IScannerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IScannerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.bluetooth.le.IScannerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/le/IScannerCallback;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/le/IScannerCallback;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/bluetooth/le/IScannerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/IScannerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_14

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_5
    const-string v0, "onScanManagerErrorCallback"

    return-object v0

    .line 86
    :pswitch_8
    const-string v0, "onFoundOrLost"

    return-object v0

    .line 82
    :pswitch_b
    const-string v0, "onBatchScanResults"

    return-object v0

    .line 78
    :pswitch_e
    const-string v0, "onScanResult"

    return-object v0

    .line 74
    :pswitch_11
    const-string v0, "onScannerRegistered"

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

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 254
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Landroid/bluetooth/le/IScannerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 105
    const-string v0, "android.bluetooth.le.IScannerCallback"

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
    packed-switch p1, :pswitch_data_68

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 154
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2}, Landroid/bluetooth/le/IScannerCallback$Stub;->onScanManagerErrorCallback(I)V

    .line 157
    goto :goto_67

    .line 144
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 146
    .local v2, "_arg0":Z
    sget-object v3, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/ScanResult;

    .line 147
    .local v3, "_arg1":Landroid/bluetooth/le/ScanResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IScannerCallback$Stub;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    .line 149
    goto :goto_67

    .line 136
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/bluetooth/le/ScanResult;
    :pswitch_3c
    sget-object v2, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 137
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2}, Landroid/bluetooth/le/IScannerCallback$Stub;->onBatchScanResults(Ljava/util/List;)V

    .line 139
    goto :goto_67

    .line 128
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    :pswitch_49
    sget-object v2, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 129
    .local v2, "_arg0":Landroid/bluetooth/le/ScanResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2}, Landroid/bluetooth/le/IScannerCallback$Stub;->onScanResult(Landroid/bluetooth/le/ScanResult;)V

    .line 131
    goto :goto_67

    .line 118
    .end local v2    # "_arg0":Landroid/bluetooth/le/ScanResult;
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 121
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IScannerCallback$Stub;->onScannerRegistered(II)V

    .line 123
    nop

    .line 164
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :goto_67
    return v1

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_58
        :pswitch_49
        :pswitch_3c
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
