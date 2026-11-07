.class public abstract Landroid/net/IConnectivityDiagnosticsCallback$Stub;
.super Landroid/os/Binder;
.source "IConnectivityDiagnosticsCallback.java"

# interfaces
.implements Landroid/net/IConnectivityDiagnosticsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityDiagnosticsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConnectivityReportAvailable:I = 0x1

.field static final blacklist TRANSACTION_onDataStallSuspected:I = 0x2

.field static final blacklist TRANSACTION_onNetworkConnectivityReported:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.net.IConnectivityDiagnosticsCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityDiagnosticsCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "android.net.IConnectivityDiagnosticsCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IConnectivityDiagnosticsCallback;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/net/IConnectivityDiagnosticsCallback;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_e

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_5
    const-string v0, "onNetworkConnectivityReported"

    return-object v0

    .line 69
    :pswitch_8
    const-string v0, "onDataStallSuspected"

    return-object v0

    .line 65
    :pswitch_b
    const-string v0, "onConnectivityReportAvailable"

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

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 187
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 84
    invoke-static {p1}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 88
    const-string v0, "android.net.IConnectivityDiagnosticsCallback"

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 96
    :cond_16
    packed-switch p1, :pswitch_data_48

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_1e
    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 117
    .local v2, "_arg0":Landroid/net/Network;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 118
    .local v3, "_arg1":Z
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->onNetworkConnectivityReported(Landroid/net/Network;Z)V

    .line 119
    goto :goto_46

    .line 108
    .end local v2    # "_arg0":Landroid/net/Network;
    .end local v3    # "_arg1":Z
    :pswitch_2e
    sget-object v2, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    .line 109
    .local v2, "_arg0":Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V

    .line 110
    goto :goto_46

    .line 101
    .end local v2    # "_arg0":Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;
    :pswitch_3a
    sget-object v2, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    .line 102
    .local v2, "_arg0":Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V

    .line 103
    nop

    .line 126
    .end local v2    # "_arg0":Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;
    :goto_46
    return v1

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
