.class public abstract Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;
.super Landroid/os/Binder;
.source "IUdfpsRefreshRateRequestCallback.java"

# interfaces
.implements Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAuthenticationPossible:I = 0x3

.field static final blacklist TRANSACTION_onRequestDisabled:I = 0x2

.field static final blacklist TRANSACTION_onRequestEnabled:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.hardware.fingerprint.IUdfpsRefreshRateRequestCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "android.hardware.fingerprint.IUdfpsRefreshRateRequestCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 88
    packed-switch p0, :pswitch_data_e

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 100
    :pswitch_5
    const-string v0, "onAuthenticationPossible"

    return-object v0

    .line 96
    :pswitch_8
    const-string v0, "onRequestDisabled"

    return-object v0

    .line 92
    :pswitch_b
    const-string v0, "onRequestEnabled"

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

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 237
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 111
    invoke-static {p1}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 115
    const-string v0, "android.hardware.fingerprint.IUdfpsRefreshRateRequestCallback"

    .line 116
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 117
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 120
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v1

    .line 123
    :cond_16
    packed-switch p1, :pswitch_data_44

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 144
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 147
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->onAuthenticationPossible(IZ)V

    .line 149
    goto :goto_43

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->onRequestDisabled(I)V

    .line 139
    goto :goto_43

    .line 128
    .end local v2    # "_arg0":I
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 129
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->onRequestEnabled(I)V

    .line 131
    nop

    .line 156
    .end local v2    # "_arg0":I
    :goto_43
    return v1

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_38
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
